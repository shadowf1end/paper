package com.sf.web.tag;

import com.sf.domain.Message;
import com.sf.domain.Tag;
import com.sf.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SearchTagController {

    private TagService tagService;

    @Autowired
    public void setTagService(TagService tagService) {
        this.tagService = tagService;
    }

    @RequestMapping("/search/tag.json")
    @ResponseBody
    public Message SearchTag(String tagName) {
        Tag tag =  tagService.findTagByTagName(tagName);
        if(tag == null) {
            return new Message(0, "未找到类似标签");
        }
        return new Message(1, tag);
    }

}
