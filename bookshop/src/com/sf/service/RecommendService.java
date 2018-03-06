package com.sf.service;

import com.sf.domain.Book;

import java.util.HashMap;

public interface RecommendService {

    HashMap<Book, Float> getRecommends(int userId);

}
