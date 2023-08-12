package com.burhan.emlaksayfasi.dao;

import com.burhan.emlaksayfasi.entity.User;

import java.util.List;

public interface UserDao {
    public List<User> getAllUsers();
    public boolean addUser(User user);
    public boolean deleteUser(User user);
    public boolean isRegistered(User user);

}
