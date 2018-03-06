package com.sf.web.book;

import com.sf.dao.BookDao;
import com.sf.domain.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;

@Controller
public class ShowSomeBooksController {

    private BookDao bookDao;

    @Autowired
    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    @RequestMapping("/latest.json")
    @ResponseBody
    public ArrayList<Book> showLatestBooks() {
        return bookDao.findLatestBooks();
    }

    @RequestMapping("/hot.json")
    @ResponseBody
    public ArrayList<Book> showHotBooks() {
        return bookDao.findHotBooks();
    }

    @RequestMapping("/concerned.json")
    @ResponseBody
    public ArrayList<Book> showConcernedBooks() {
        return bookDao.findConcernedBooks();
    }

}
