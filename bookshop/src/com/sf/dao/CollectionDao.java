package com.sf.dao;

import com.sf.domain.Collection;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface CollectionDao {

    void saveCollection(Collection collection);
    Collection findCollectionByBookIdAndUserId(int bookId, int userId);
    ArrayList<Collection> findCollectionsByBookId(int bookId, int page);
    int getCollectionNum(int bookId);
    float getAverage(int bookId);
    int getRatingNum(int bookId, int rating);
    ArrayList<Collection> findCollectionsByUserId(int userId, int collectionType);

}
