package com.sf.dao;

import com.sf.domain.Recommend;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface RecommendDao {

    ArrayList<Recommend> findRecommendBooks(int userId);

}
