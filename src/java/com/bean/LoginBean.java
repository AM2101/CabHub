/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bean;

/**
 *
 * @author Mr. Mittal
 */
public class LoginBean {
    private String email;
    private String password;
//    private String type;
    
    public String getEmail(){
        return email;
    }
//    public String getType(){
//        return type;
//    }
    public void setEmail(String email){
        this.email= email;
//        return null;
    }
    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password= password;
//        return null;
    }
   
    
}
