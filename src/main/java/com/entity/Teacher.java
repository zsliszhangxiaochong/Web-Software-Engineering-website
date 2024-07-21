package com.entity;

import java.time.LocalDateTime; // 注意：此导入在当前代码中未使用
import java.util.List; // 注意：此导入在当前代码中未使用

public class Teacher {
    private int id;
    private String name;
    private String title;
    private String introduceText;
    private String photoUrl; // 添加图片URL字段
    private String email;

    // 构造器
    public Teacher() {

    }

    // getter 和 setter 方法
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getIntroduceText() {
        return introduceText;
    }

    public void setIntroduceText(String introduceText) {
        this.introduceText = introduceText;
    }

    public String getPhotoUrl() {
        return photoUrl;
    }

    public void setPhotoUrl(String photoUrl) {
        this.photoUrl = photoUrl;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}