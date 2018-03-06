package com.sf.web.user;

import com.sf.domain.Message;
import com.sf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RegisterController {

    private UserService userService;
    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/register.json")
    @ResponseBody
    public Message register(@RequestParam String name, @RequestParam String password) {
        if(userService.register(name, password)) {
            return new Message(1, "注册成功，请重新登录");
        }
        return new Message(0, "用户名已存在");
    }

}
