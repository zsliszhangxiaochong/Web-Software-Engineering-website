package com.service;

import com.entity.User;

public class Userservice {
    public static User getUser(String name, String password) {
        if("admin".equals(name) && "admin".equals(password)) {
            User user=new User("admin","admin");
            return user;
        }
        return null;
    }
}
