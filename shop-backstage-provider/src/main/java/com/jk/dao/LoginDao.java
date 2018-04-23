package com.jk.dao;

import com.jk.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LoginDao {
    List<User> queryUserByName(String name);
}
