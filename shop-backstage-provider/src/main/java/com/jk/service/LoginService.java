package com.jk.service;

import com.jk.model.User;
import org.springframework.stereotype.Service;

import java.util.Map;

public interface LoginService {
    Map<String, Object> userlogin(User user);
}
