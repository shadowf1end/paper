package com.sf.service;

import com.sf.dao.BookDao;
import com.sf.dao.CollectionDao;
import com.sf.dao.TagDao;
import com.sf.domain.Book;
import com.sf.domain.Rating;
import com.sf.domain.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;

@Service
public class BookServiceImpl implements BookService {

    private BookDao bookDao;
    private TagDao tagDao;
    private CollectionDao collectionDao;

    @Autowired
    public void setCollectionDao(CollectionDao collectionDao) {
        this.collectionDao = collectionDao;
    }

    @Autowired
    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    @Autowired
    public void setTagDao(TagDao tagDao) {
        this.tagDao = tagDao;
    }

    public HashMap<Book, Rating> findBooksByTagId(int tagId,int page) {
        Tag tag = tagDao.findTagByTagId(tagId);
        ArrayList<Book> b =  bookDao.findBooksByTagName(tag.getTagName(), page);
        return getBooks(b);
    }

    public HashMap<Book, Rating> findBooks(String factor, int page) {
        ArrayList<Book> b =  bookDao.findBooks(factor, page);
        return getBooks(b);
    }

    public ArrayList<Book> findLatestBooks() {
        return bookDao.findLatestBooks();
    }

    public ArrayList<Book> findHotBooks() {
        return bookDao.findHotBooks();
    }

    public ArrayList<Book> findConcernedBooks() {
        return bookDao.findConcernedBooks();
    }

    public Book findBookByBookId(int bookId) {
        return bookDao.findBookByBookId(bookId);
    }

    private HashMap<Book, Rating> getBooks(ArrayList<Book> b){
        HashMap<Book, Rating> books = new HashMap<Book, Rating>();
        for(Book book : b) {
            Rating r = new Rating();
            int bookId = book.getBookId();
            r.setCollectionNum(collectionDao.getCollectionNum(bookId));
            r.setAverage(collectionDao.getAverage(bookId));
            books.put(book, r);
        }
        return books;
    }

}
