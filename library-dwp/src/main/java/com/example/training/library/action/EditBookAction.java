package com.example.training.library.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import com.example.training.library.dao.BookDao;
import com.example.training.library.entity.Book;
import com.opensymphony.xwork2.ActionSupport;
import lombok.Data;

@Data
@Component
@Scope("prototype")
public class EditBookAction extends ActionSupport {

    private int id;
    private Book book;
    private BookDao bookDao = new BookDao();

    public String execute() {
        book = bookDao.getBookById(id);
        return SUCCESS;
    }
}