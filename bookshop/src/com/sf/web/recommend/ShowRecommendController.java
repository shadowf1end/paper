package com.sf.web.recommend;

import com.sf.domain.User;
import com.sf.service.RecommendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class ShowRecommendController {

    private RecommendService recommendService;

    @Autowired
    public void setRecommendService(RecommendService recommendService) {
        this.recommendService = recommendService;
    }

    @RequestMapping("/recommend.html")
    public ModelAndView showRecommend(HttpSession session, ModelAndView mav) {
        User user = (User)session.getAttribute("user");
        if(user != null) {
            mav.addObject("recommends", recommendService.getRecommends(user.getUserId()));
        }else {
            mav.addObject("recommends", "您尚未登陆，无法给您推荐书籍");
        }
        mav.setViewName("recommend");
        return mav;
    }

}
