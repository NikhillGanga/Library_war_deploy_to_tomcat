package com.example.training.library.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.example.training.library.dao.BookDao;
import com.example.training.library.entity.Book;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@Component
@Scope("prototype")
public class AddBookAction extends ActionSupport implements ModelDriven<Book>{

    private Book book = new Book();

    private BookDao bookDao = new BookDao();

    @Override
    public Book getModel() {
        return book;
    }

    public String execute() {

    	System.out.println(book);
        bookDao.saveBook(book);

        return SUCCESS;
    }
}