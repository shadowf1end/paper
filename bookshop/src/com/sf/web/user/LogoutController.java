package com.sf.web.user;

import com.sf.domain.Message;
import com.sf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class LogoutController {

    private UserService userService;
    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/logout.json")
    @ResponseBody
    public Message logout(HttpSession session) {
        if(session.getAttribute("user") == null) {
            return new Message(0, "您尚未登录");
        }
        session.removeAttribute("user");
        return new Message(1, "您已退出登录");
    }

}
