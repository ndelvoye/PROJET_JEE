package fr.gestconge.dao;

import java.util.List;

public interface DAO<T> {
    List<T> getAll();

    void save(T t);

    void update(T t, String[] params);

    void delete(T t);
}