package com.sf.web.book;

import com.sf.domain.Book;
import com.sf.domain.PageInfo;
import com.sf.domain.Rating;
import com.sf.service.BookService;
import com.sf.service.PageInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;

@Controller
public class SearchBooksController {

    private BookService bookService;
    private PageInfoService pageInfoService;

    @Autowired
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @Autowired
    public void setPageInfoService(PageInfoService pageInfoService) {
        this.pageInfoService = pageInfoService;
    }

    @RequestMapping("/search/{factor}/p/{page}")
    public ModelAndView searchBooks(@PathVariable String factor, @PathVariable int page, ModelAndView mav) {
        try {
            factor = URLDecoder.decode(factor, "utf-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
        HashMap<Book, Rating> books =  bookService.findBooks(factor, (page - 1) * 20);
        PageInfo pageInfo = pageInfoService.getBookPageInfoByFactor(factor, page);
        mav.addObject("books", books);
        mav.addObject("pageInfo", pageInfo);
        mav.setViewName("search");
        return mav;
    }

}
