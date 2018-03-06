package com.sf.service;

import com.sf.dao.BookDao;
import com.sf.dao.RecommendDao;
import com.sf.domain.Book;
import com.sf.domain.Recommend;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;

@Service
public class RecommendServiceImpl implements RecommendService {

    private BookDao bookDao;
    private RecommendDao recommendDao;

    @Autowired
    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    @Autowired
    public void setRecommendDao(RecommendDao recommendDao) {
        this.recommendDao = recommendDao;
    }

    public HashMap<Book, Float> getRecommends(int userId) {
        HashMap<Book, Float> recommends = new HashMap<Book, Float>();
        ArrayList<Recommend> recommendBooks = recommendDao.findRecommendBooks(userId);
        for (Recommend r : recommendBooks) {
            Book b = bookDao.findBookByBookId(r.getBookId());
            recommends.put(b, r.getRating());
        }
        return recommends;
    }

}
