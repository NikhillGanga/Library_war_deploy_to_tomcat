package com.example.training.library.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.example.training.library.dao.BookDao;
import com.opensymphony.xwork2.ActionSupport;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@Component
@Scope("prototype")
public class DeleteBookAction extends ActionSupport {

    private int id;

    BookDao bookDao = new BookDao();

    public String execute() {

        System.out.println("Deleting book id: " + id);

        bookDao.deleteBook(id);

        return SUCCESS;
    }
}