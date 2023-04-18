/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.bean.LoginBean;
import java.sql.*;
/**
 *
 * @author Mr. Mittal
 */
public class LoginData {
    
    public static Connection tackConnection(){
        Connection con=null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String path = "jdbc:mysql://localhost:3306/texi";
            String user = "root";
            String pass ="";
            con = DriverManager.getConnection(path,user,pass);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return con;
    }
    
    public static String loginCheck(LoginBean lb){
        
        String status ="0";
        try {
            
            Connection con = tackConnection();
            String query = "SELECT * from registeration where email=? and password=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,lb.getEmail());
            ps.setString(2, lb.getPassword());
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                status = rs.getString(5);
//                out.println(rs.getString(4));
                
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
        
    }
    
    
}
