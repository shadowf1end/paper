package com.sf.web.collection;

import com.sf.domain.Book;
import com.sf.domain.Collection;
import com.sf.domain.Message;
import com.sf.domain.User;
import com.sf.service.BookService;
import com.sf.service.CollectionService;
import com.sf.service.PageInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;

@Controller
public class ShowCollectionsController {

    private CollectionService collectionService;
    private PageInfoService pageInfoService;
    private BookService bookService;

    @Autowired
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @Autowired
    public void setCollectionService(CollectionService collectionService) {
        this.collectionService = collectionService;
    }

    @Autowired
    public void setPageInfoService(PageInfoService pageInfoService) {
        this.pageInfoService = pageInfoService;
    }

    @RequestMapping("/subject/{bookId}/collections/{page}")
    public ModelAndView showCollections(ModelAndView mav, @PathVariable int bookId, @PathVariable int page) {
        mav.addObject("collections", collectionService.findCollections(bookId, (page - 1) * 20));
        mav.addObject("pageInfo", pageInfoService.getCollectionPageInfo(bookId, page));
        mav.addObject("book", bookService.findBookByBookId(bookId));
        mav.setViewName("collections");
        return mav;
    }

    @RequestMapping("/user/home")
    @ResponseBody
    public ModelAndView showUserCollections(HttpSession session, ModelAndView mav) {
        User user = (User)session.getAttribute("user");
        ArrayList<HashMap<Collection, Book>> collections = collectionService.getUserCollections(user.getUserId());
        mav.addObject("collections", collections);
        mav.setViewName("home");
        return mav;
    }

}
