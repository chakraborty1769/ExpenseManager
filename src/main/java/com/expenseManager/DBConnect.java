package com.expenseManager;

import java.sql.*;
public class DBConnect {
    public Connection connection;
    public DBConnect(){

        String connectionStr = "jdbc:mysql://localhost:3306/expense_manager";
        String user = "root";
        String password = "";


        {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                this.connection = DriverManager.getConnection(connectionStr, user, password);
                System.out.print("DB Connection is successful!");


            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
