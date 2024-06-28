package com.entity;

import java.time.LocalDateTime;

public class Teacher {
    private int id;
    private String name;
    private Title title;
    private String info;
    private LocalDateTime createdAt;

    public Teacher() {}
    public Teacher(int id, String name, Title title, String info, LocalDateTime createdAt) {
        this.id = id;
        this.name = name;
        this.title = title;
        this.info = info;
        this.createdAt = createdAt;
    }

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

    public Title getTitle() {
        return title;
    }

    public void setTitle(Title title) {
        this.title = title;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }
}
