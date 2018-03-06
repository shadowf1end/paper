package com.sf.service;

import com.sf.dao.CollectionDao;
import com.sf.domain.Rating;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RatingServiceImpl implements RatingService {

    private CollectionDao collectionDao;

    @Autowired
    public void setCollectionDao(CollectionDao collectionDao) {
        this.collectionDao = collectionDao;
    }

    public Rating getRating(int bookId) {
        Rating r = new Rating();
        r.setAverage(collectionDao.getAverage(bookId));
        r.setCollectionNum(collectionDao.getCollectionNum(bookId));
        r.setStar1(collectionDao.getRatingNum(bookId, 1));
        r.setStar2(collectionDao.getRatingNum(bookId, 2));
        r.setStar3(collectionDao.getRatingNum(bookId, 3));
        r.setStar4(collectionDao.getRatingNum(bookId, 4));
        r.setStar5(collectionDao.getRatingNum(bookId, 5));
        return r;
    }
}
