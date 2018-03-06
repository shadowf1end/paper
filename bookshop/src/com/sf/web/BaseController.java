package com.sf.web;

import javax.servlet.http.HttpSession;

public abstract class BaseController {

    public boolean checkLogined(HttpSession session) {
        if(session.getAttribute("user") != null){
            return true;
        }
        return false;
    }

}
