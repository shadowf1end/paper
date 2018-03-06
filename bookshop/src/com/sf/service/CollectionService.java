package com.sf.service;

import com.sf.domain.Book;
import com.sf.domain.Collection;
import com.sf.domain.User;

import java.util.ArrayList;
import java.util.HashMap;

public interface CollectionService {

    void saveCollection(Collection collection);
    Collection findCollectionByBookIdAndUserId(int bookId, int userId);
    HashMap<User, Collection> findCollections(int bookId, int page);
    ArrayList<HashMap<Collection, Book>> getUserCollections(int userId);

}
