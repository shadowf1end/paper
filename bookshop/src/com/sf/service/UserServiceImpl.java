package com.sf.service;

import com.sf.dao.UserDao;
import com.sf.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sun.misc.BASE64Encoder;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by sunfa on 2017/4/5.
 */
@Service
public class UserServiceImpl implements UserService {

    private UserDao userDao;

    @Autowired
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public User login(String userName, String password) {
        User user = userDao.findUserByUserName(userName);
        password = md5(password);
        if(user == null) {
            return null;
        }
        if(password.equals(user.getUserPassword())) {
            return user;
        }
        return null;
    }

    public boolean register(String userName, String password) {
        if(userDao.findUserByUserName(userName) != null){
            return false;
        }
        password = md5(password);
        User user = new User();
        user.setUserName(userName);
        user.setUserPassword(password);
        userDao.saveUser(user);
        return true;
    }

    public String md5(String str) {
        String newStr;
        try {
            MessageDigest md = MessageDigest.getInstance("md5");
            BASE64Encoder base = new BASE64Encoder();
            md.update(str.getBytes());
            newStr = new String(base.encode(md.digest()));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("error!");
        }
        return newStr;
    }

}
