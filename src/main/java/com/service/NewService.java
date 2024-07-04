package com.service;

import com.entity.New;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class NewService {
    //获取全部信息
    public static List<New> listNew() {
        List<New> news = new ArrayList<>();
        String sql = "select * from new";
        try (Connection conn = DataSourceUtils.getConnection();//从数据源中获取一个连接
             PreparedStatement ps = conn.prepareStatement(sql);//预编译的SQL语句对象，PreparedStatement填充占位符
             ResultSet rs = ps.executeQuery()) {//执行了PreparedStatement对象中的查询语句
            while (rs.next()) {//游标
                New newI = new New();
                newI.setId(rs.getInt("id"));
                newI.setName(rs.getString("name"));
                newI.setInfo(rs.getString("info"));
                newI.setType(rs.getInt("type"));
                newI.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
                newI.setInsertTime(rs.getObject("update_time", LocalDateTime.class));
                news.add(newI);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return news;
    }
    public static List<New> Type1New() {
        List<New> news = new ArrayList<>();
        String sql = "select * from new where type=1";
        try (Connection conn = DataSourceUtils.getConnection();//从数据源中获取一个连接
             PreparedStatement ps = conn.prepareStatement(sql);//预编译的SQL语句对象，PreparedStatement填充占位符
             ResultSet rs = ps.executeQuery()) {//执行了PreparedStatement对象中的查询语句
            while (rs.next()) {//游标
                New newI = new New();
                newI.setId(rs.getInt("id"));
                newI.setName(rs.getString("name"));
                newI.setInfo(rs.getString("info"));
                newI.setType(rs.getInt("type"));
                newI.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
                newI.setUpdatedTime(rs.getObject("update_time", LocalDateTime.class));
                news.add(newI);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return news;
    }
    public static List<New> Type2New() {
        List<New> news = new ArrayList<>();
        String sql = "select * from new where type=2";
        try (Connection conn = DataSourceUtils.getConnection();//从数据源中获取一个连接
             PreparedStatement ps = conn.prepareStatement(sql);//预编译的SQL语句对象，PreparedStatement填充占位符
             ResultSet rs = ps.executeQuery()) {//执行了PreparedStatement对象中的查询语句
            while (rs.next()) {//游标
                New newI = new New();
                newI.setId(rs.getInt("id"));
                newI.setName(rs.getString("name"));
                newI.setInfo(rs.getString("info"));
                newI.setType(rs.getInt("type"));
                newI.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
                newI.setUpdatedTime(rs.getObject("update_time", LocalDateTime.class));
                news.add(newI);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return news;
    }

    public static void updateNew(int id, String name) {
        String sql = "update new set name=? where id=?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setString(1,name);
            ps.setInt(2, id);
            ps.executeUpdate();//数据库执行，持久化
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static New getNew(int id) {
        New newI = null;
        String sql = "select * from new where id=?";
        try (Connection conn = DataSourceUtils.getConnection();//PreparedStatement填充占位符)
             PreparedStatement ps = conn.prepareStatement(sql)) {//查询不能写在try内,嵌套
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                while(rs.next()){
                    newI = new New();
                    newI.setId(rs.getInt("id"));
                    newI.setName(rs.getString("name"));
                    newI.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
                    newI.setUpdatedTime(rs.getObject("update_time", LocalDateTime.class));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return newI;
    }

}
