package com.example.training.library.action;

import java.util.List;

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
public class ViewBookAction extends ActionSupport {

    BookDao bookDao = new BookDao();

    private List<Book> books;

    public String execute() {

        books = bookDao.getAllBooks();

        return SUCCESS;
    }
}