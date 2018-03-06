package com.sf.domain;

import java.io.Serializable;

public class Recommend implements Serializable {

    private int bookId;
    private float rating;

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public float getRating() {
        return rating;
    }

    public void setRating(float rating) {
        this.rating = rating;
    }
}
