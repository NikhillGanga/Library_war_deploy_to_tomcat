package com.example.training.library.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.example.training.library.dao.BookDao;
import com.example.training.library.entity.Book;
import com.opensymphony.xwork2.ActionSupport;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@Component
@Scope("prototype")
public class UpdateBookAction extends ActionSupport {

    private Book book;
    private BookDao bookDao = new BookDao();

    public String execute() {
        bookDao.updateBook(book);
        return SUCCESS;
    }
}