package com.sf.service;

import com.sf.dao.BookDao;
import com.sf.dao.CollectionDao;
import com.sf.dao.UserDao;
import com.sf.domain.Book;
import com.sf.domain.Collection;
import com.sf.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;

@Service
public class CollectionServiceImpl implements CollectionService {

    private CollectionDao collectionDao;
    private UserDao userDao;
    private BookDao bookDao;

    @Autowired
    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    @Autowired
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Autowired
    public void setCollectionDao(CollectionDao collectionDao) {
        this.collectionDao = collectionDao;
    }

    public void saveCollection(Collection collection) {
        collectionDao.saveCollection(collection);
    }

    public Collection findCollectionByBookIdAndUserId(int bookId, int userId) {
        return collectionDao.findCollectionByBookIdAndUserId(bookId, userId);
    }

    public HashMap<User, Collection> findCollections(int bookId, int page) {
        ArrayList<Collection> collections = collectionDao.findCollectionsByBookId(bookId, page);
        HashMap<User, Collection> comments = new HashMap<User, Collection>();
        for (Collection collection : collections) {
            User user = userDao.findUserByUserId(collection.getUserId());
            comments.put(user, collection);
        }
        return comments;
    }

    public ArrayList<HashMap<Collection, Book>> getUserCollections(int userId) {
        ArrayList<HashMap<Collection, Book>> collections = new ArrayList<HashMap<Collection, Book>>();
        collections.add(getBookInfo(collectionDao.findCollectionsByUserId(userId, 0)));
        collections.add(getBookInfo(collectionDao.findCollectionsByUserId(userId, 1)));
        collections.add(getBookInfo(collectionDao.findCollectionsByUserId(userId, 2)));
        return collections;
    }

    private HashMap<Collection, Book> getBookInfo(ArrayList<Collection> collections) {
        HashMap<Collection, Book> map = new HashMap<Collection, Book>();
        for (Collection c : collections) {
            Book book = bookDao.findBookByBookId(c.getBookId());
            map.put(c, book);
        }
        return map;
    }

}
