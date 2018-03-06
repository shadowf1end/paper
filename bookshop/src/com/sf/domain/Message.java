package com.sf.domain;

import java.io.Serializable;

public class Message implements Serializable {

    private int status;
    private Object content;

    public Message(int status, Object content) {
        this.status = status;
        this.content = content;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Object getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

}
