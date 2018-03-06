package com.sf.web.tag;

import com.sf.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShowSomeTagsController {

    private TagService tagService;
    @Autowired
    public void setTagService(TagService tagService) {
        this.tagService = tagService;
    }

    @RequestMapping("/hotTags.html")
    public ModelAndView showTags(ModelAndView mav) {
        mav.addObject("tags", tagService.findHotTags());
        mav.setViewName("hotTags");
        return mav;
    }

}
