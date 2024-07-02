package com.util;

import com.entity.Course;
import com.entity.New;
import com.entity.Teacher;
import com.entity.Title;

import java.time.LocalDateTime;
import java.util.List;

public class DatabaseUtils{
    private static final List<Teacher> teachers;
    private static final List<Title> titles;

static {
    // 模拟职称
    Title t1 = new Title(1, "讲师");
    Title t2 = new Title(2, "副教授");
    Title t3 = new Title(3, "教授");
    titles = List.of(t1, t2, t3);

    var time1 = LocalDateTime.of(2019, 7, 8, 9, 27);
    var time2 = LocalDateTime.of(2019, 10, 23, 14, 44);
    // 模拟2个教师
    Teacher teach1 = new Teacher(1, "唐晨阳", t3, "哈尔滨人，地址...", time1);
    Teacher teach2 = new Teacher(2, "刘春枝", t2,"哈尔滨人，地址..." , time2);
    teachers = List.of(teach1, teach2);
}

    public static List<Title> listTitles() {return titles;}
    public static List<Teacher> listTeachers() {return teachers;}

    public static Teacher getTeacher(int id) {
    return teachers.stream().filter(t -> t.getId() == id).findFirst().orElse(null);
}
}