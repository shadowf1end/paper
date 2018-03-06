package com.sf.dao;

import com.sf.domain.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {

    boolean saveUser(User user);
    boolean updateUser(User user);
    User findUserByUserId(int id);
    User findUserByUserName(String userName);

}
