package com.util;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@WebListener
public class DataSourceUtils implements ServletContextListener {//启动监听器
@Resource(name = "jdbc/MySQL")
//数据源对象对外屏蔽的
    private static DataSource dataSource;

//对外暴露连接对象
public static Connection getConnection() throws SQLException {
    return dataSource.getConnection();
}
}
