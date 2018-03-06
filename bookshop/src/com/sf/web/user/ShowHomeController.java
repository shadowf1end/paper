package com.sf.web.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShowHomeController {

    @RequestMapping("/user.html")
    public ModelAndView showHome(ModelAndView mav) {
        mav.setViewName("user");
        return mav;
    }
}
