package com.sf.dao;

import com.sf.domain.Book;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface BookDao {

    ArrayList<Book> findBooksByTagName(String tagName, int page);
    int getBookNumByTagName(String tagName);
    ArrayList<Book> findBooks(String factor, int page);
    int getBookNum(String factor);
    ArrayList<Book> findLatestBooks();
    ArrayList<Book> findHotBooks();
    Book findBookByBookId(int bookId);
    ArrayList<Book> findConcernedBooks();

}
