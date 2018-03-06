package com.sf.web.tag;

import com.sf.domain.Tag;
import com.sf.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;

@Controller
public class ShowTagsController {

    private TagService tagService;
    @Autowired
    public void setTagService(TagService tagService) {
        this.tagService = tagService;
    }

    @RequestMapping("/tags.html")
    public ModelAndView showTags(ModelAndView mav) {
        HashMap<String, ArrayList<Tag>> tags = tagService.findTags();
        mav.addObject("tags", tags);
        mav.setViewName("tags");
        return mav;
    }

}
