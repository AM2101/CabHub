/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Mr. Mittal
 */
class JavaDataBeans {
    String name;
    String email;
    String type;
    String password;
    String city;
    String code;
     String carname;
     String carnum;
     float price;
    
    void setName(String name) {
        this.name = name;
    }

    void setEmail(String email) {
        this.email= email;
    }

    void setPassword(String password) {
        this.password=password;
    }

    void setType(String type) {
        this.type= type;
    }

    void setCity(String city) {
        this.city = city;
    }
    
    void setCode(String code) {
        this.code = code;
    }
    
    void setCarName(String carname) {
        this.carname = carname;
    }
    
    void setCarNum(String carnum) {
        this.carnum = carnum;
    }
    
    void setPrice(float price) {
        this.price = price;
    }
    
    String getName() {
        return name;
    }

    String getEmail() {
        return email;
    }

    String getType() {
        return type;
    }

    String getPassword() {
        return password;
    }
    String getCode() {
        return code;
    }
    
    String getCity(){
        return city;
    }
    String getCarName(){
        return carname;
    }
    String getCarNum(){
        return carnum;
    }
    float getPrice(){
        return price;
    }
    
//    Boolean userCheck() {
//        
//        return null;
//        
//    }

    

}
