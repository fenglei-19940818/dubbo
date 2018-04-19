package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Review;
import org.springframework.stereotype.Service;

import java.util.List;

public interface ReviewService {
    List<Review> queryReviewListPager();

    Review queryReviewById(Review review);

    Integer updateReview(Review review);

}
