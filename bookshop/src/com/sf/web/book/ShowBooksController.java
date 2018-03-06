package com.sf.web.book;

import com.sf.domain.Book;
import com.sf.domain.PageInfo;
import com.sf.domain.Rating;
import com.sf.domain.Tag;
import com.sf.service.BookService;
import com.sf.service.PageInfoService;
import com.sf.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;

@Controller
public class ShowBooksController {

    private BookService bookService;
    private TagService tagService;
    private PageInfoService pageInfoService;

    @Autowired
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @Autowired
    public void setTagService(TagService tagService) {
        this.tagService = tagService;
    }

    @Autowired
    public void setPageInfoService(PageInfoService pageInfoService) {
        this.pageInfoService = pageInfoService;
    }

    @RequestMapping("/tag/{tagId}/page/{page}")
    public ModelAndView showBooks(@PathVariable int tagId,
                                  @PathVariable int page, ModelAndView mav) {
        HashMap<Book, Rating> books = bookService.findBooksByTagId(tagId, (page - 1) * 20);
        PageInfo pageInfo = pageInfoService.getBookPageInfoByTagId(tagId, page);
        Tag tag = tagService.findTagByTagId(tagId);
        mav.addObject("pageInfo", pageInfo);
        mav.addObject("books", books);
        mav.addObject("tag", tag);
        mav.setViewName("tag");
        return mav;
    }

}
