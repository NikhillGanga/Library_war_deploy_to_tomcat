package com.example.training.library.dao;

import java.util.List;
import org.hibernate.Session;
import com.example.training.library.entity.Book;
import com.example.training.library.util.HibernateUtil;

public class BookDao {

    public void saveBook(Book book) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(book);
        session.getTransaction().commit();
        session.close();
    }

    public List<Book> getAllBooks() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Book> books = session.createQuery("from Book", Book.class).list();
        session.close();
        return books;
    }

    public Book getBookById(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Book book = session.get(Book.class, id);
        session.close();
        return book;
    }

    public void updateBook(Book book) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.update(book);
        session.getTransaction().commit();
        session.close();
    }

    public void deleteBook(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Book book = session.get(Book.class, id);
        if (book != null) {
            session.delete(book);
        }
        session.getTransaction().commit();
        session.close();
    }
    public List<Book> getBooksByTitle(String title) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Book> books = session.createQuery(
            "from Book where lower(title) like lower(:title)", Book.class)
            .setParameter("title", "%" + title + "%")
            .list();
        session.close();
        return books;
    }
}