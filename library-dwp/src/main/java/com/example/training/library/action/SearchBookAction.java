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
public class SearchBookAction extends ActionSupport {

    private String title;
    private List<Book> books;
    private boolean notFound = false;
    private BookDao bookDao = new BookDao();

    public String execute() {
        if (title != null && !title.trim().isEmpty()) {
            books = bookDao.getBooksByTitle(title);
            if (books == null || books.isEmpty()) {
                notFound = true;
            }
        }
        return SUCCESS;
    }
}