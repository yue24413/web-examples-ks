package com.entity;

import java.time.LocalDateTime;

public class New {
    private int id;
    private String name;/*新闻标题*/
    private String info;/*新闻信息*/
    private LocalDateTime insertTime;
    private LocalDateTime updatedTime;

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
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

    public LocalDateTime getInsertTime() {
        return insertTime;
    }

    public LocalDateTime getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(LocalDateTime updatedTime) {
        this.updatedTime = updatedTime;
    }

    public void setInsertTime(LocalDateTime insertTime) {
        this.insertTime = insertTime;

    }
}
