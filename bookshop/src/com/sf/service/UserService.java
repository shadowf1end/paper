package com.sf.service;

import com.sf.domain.User;

public interface UserService {

    User login(String name, String password);
    boolean register(String name, String password);

}
