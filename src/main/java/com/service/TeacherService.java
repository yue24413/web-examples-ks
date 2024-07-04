package com.service;

import com.entity.New;
import com.entity.Teacher;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class TeacherService {
    //获取全部信息
    public static List<Teacher> listTeacher() {
        List<Teacher> teachers = new ArrayList<>();
        String sql = "select * from teacher";
        try (Connection conn = DataSourceUtils.getConnection();//从数据源中获取一个连接
             PreparedStatement ps = conn.prepareStatement(sql);//预编译的SQL语句对象，PreparedStatement填充占位符
             ResultSet rs = ps.executeQuery()) {//执行了PreparedStatement对象中的查询语句
            while (rs.next()) {//游标
                Teacher teacher = new Teacher();
                teacher.setId(rs.getInt("id"));
                teacher.setName(rs.getString("name"));
                teacher.setInfo(rs.getString("info"));
                teacher.setTitle(rs.getString("title"));
                teacher.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
                teacher.setInsertTime(rs.getObject("update_time", LocalDateTime.class));
                teachers.add(teacher);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return teachers;
    }
}