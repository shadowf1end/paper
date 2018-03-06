package com.sf.web.user;

import com.sf.domain.Message;
import com.sf.domain.User;
import com.sf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    private UserService userService;
    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/login.json")
    @ResponseBody
    public Message login(@RequestParam String name, @RequestParam String password, HttpSession session) {
        User user = userService.login(name, password);
        if( user != null) {
            session.setAttribute("user", user);
            return new Message(1, "登陆成功");
        }
        return new Message(0, "用户名或密码错误");
    }

}
