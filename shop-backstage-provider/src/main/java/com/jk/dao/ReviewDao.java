package com.jk.dao;

import com.jk.model.Review;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface ReviewDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Review record);

    int insertSelective(Review record);

    Review selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Review record);

    int updateByPrimaryKey(Review record);

    long queryReviewTotal();

    List<Review> queryReviewPage();

    Review queryReviewById(Review review);

    Integer updateReview(Review review);
}
