package com.entity;

import java.time.LocalDateTime;

public class Teacher {
    private int id;
    private String name;
    private String title;
    private String info;
    private LocalDateTime insertTime;
    private LocalDateTime updateTime;

    public Teacher() {}
    public Teacher(int id, String name, String title, String info, LocalDateTime insertTime,LocalDateTime updateTime) {
        this.id = id;
        this.name = name;
        this.title = title;
        this.info = info;
        this.insertTime = insertTime;
        this.updateTime = updateTime;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public LocalDateTime getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(LocalDateTime insertTime) {
        this.insertTime = insertTime;
    }

    public LocalDateTime getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(LocalDateTime updateTime) {
        this.updateTime = updateTime;
    }
}
