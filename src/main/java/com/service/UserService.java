package com.service;

import com.entity.User;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class UserService {
    //获取全部用户信息
    public static List<User> listUser() {
        List<User> users = new ArrayList<>();
        String sql = "select * from user";
        try (Connection conn = DataSourceUtils.getConnection();//从数据源中获取一个连接
             PreparedStatement ps = conn.prepareStatement(sql);//预编译的SQL语句对象，PreparedStatement填充占位符
             ResultSet rs = ps.executeQuery()) {//执行了PreparedStatement对象中的查询语句
            while (rs.next()) {//游标
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
                user.setInsertTime(rs.getObject("update_time", LocalDateTime.class));
                users.add(user);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return users;
    }

    //更新用户信息
    public static void updateUser(int id, String name) {
        String sql = "update user set name=? where id=?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setString(1,name);
            ps.setInt(2, id);
            ps.executeUpdate();//数据库执行，持久化
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    //得到用户
    public static User getUser(int id) {
        User user = null;
        String sql = "select * from user where id=?";
        try (Connection conn = DataSourceUtils.getConnection();//PreparedStatement填充占位符)
             PreparedStatement ps = conn.prepareStatement(sql)) {//查询不能写在try内,嵌套
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                while(rs.next()){
                    user = new User();
                    user.setId(rs.getInt("id"));
                    user.setName(rs.getString("name"));
                    user.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
                    user.setUpdateTime(rs.getObject("update_time", LocalDateTime.class));
                }
               }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user;
    }

}
