package com.sf.web.book;

import com.sf.domain.Collection;
import com.sf.domain.User;
import com.sf.service.BookService;
import com.sf.service.CollectionService;
import com.sf.service.RatingService;
import com.sf.web.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class ShowBookController extends BaseController {

    private BookService bookService;
    private CollectionService collectionService;
    private RatingService ratingService;

    @Autowired
    public void setRatingService(RatingService ratingService) {
        this.ratingService = ratingService;
    }

    @Autowired
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @Autowired
    public void setCollectionService(CollectionService collectionService) {
        this.collectionService = collectionService;
    }

    @RequestMapping("/subject/{bookId}")
    public ModelAndView showBook(ModelAndView mav, @PathVariable int bookId, HttpSession session) {
        if(checkLogined(session)){
            int userId = ((User)session.getAttribute("user")).getUserId();
            Collection collection = collectionService.findCollectionByBookIdAndUserId(bookId, userId);
            mav.addObject("collection", collection);
        }
        mav.addObject("rating", ratingService.getRating(bookId));
        mav.addObject("book", bookService.findBookByBookId(bookId));
        mav.setViewName("subject");
        return mav;
    }

}
