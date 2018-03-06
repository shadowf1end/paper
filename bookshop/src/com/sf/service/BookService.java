package com.sf.service;

import com.sf.domain.Book;
import com.sf.domain.Rating;

import java.util.ArrayList;
import java.util.HashMap;

public interface BookService {

    HashMap<Book, Rating> findBooksByTagId(int tagId, int page);
    HashMap<Book, Rating> findBooks(String factor, int page);
    ArrayList<Book> findLatestBooks();
    ArrayList<Book> findHotBooks();
    ArrayList<Book> findConcernedBooks();
    Book findBookByBookId(int bookId);

}
