
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Mr. Mittal
 */
public class InsertData {

    
    int savedetails(String name, String email, String type, String password, String city, String code, String carname, String carnum, float price) throws ClassNotFoundException, SQLException {
            
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
        LocalDateTime now = LocalDateTime.now();
//        System.out.println(dtf.format(now));

  try{
        int c = 0;
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Texi","root","");
        
        String find = "SELECT * from registeration where email=?";
            PreparedStatement pst2 = con.prepareStatement(find);
            pst2.setString(1, email);
            ResultSet rs = pst2.executeQuery();
            if (rs.next()) {
                return 0;
            }else{
        
//        String admin = "Admin";
                String finde = "SELECT * from registeration where transid=?";
                PreparedStatement pst = con.prepareStatement(finde);
                pst.setString(1, code);
//                pst.setString(2, admin);
                ResultSet rs2 = pst.executeQuery();
                
                while (rs2.next()) {
//                      new Login(rs.getInt("id"));
                         c = rs2.getInt("id");
         
                }
                
        String qry = "INSERT INTO registeration(transid,name,email,type,city,password,userfor,carname,carnumber,price) values (?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ppst = con.prepareStatement(qry);
//        ResultSet rs = ppst.executeQuery();

        String num = "";
            switch (type) {
                case "Admin":
                    num = "Aa"+dtf.format(now);
                    break;
                case "Rider":
                    num = "Ri"+dtf.format(now);
                    break;
                case "Passenger":
                    num = "Pa"+dtf.format(now);
                    break;
                default:
                    break;
            }
        ppst.setString(1, num);
        ppst.setString(2,name);
        ppst.setString(3,email);
        ppst.setString(4,type);
        ppst.setString(5,city);
        ppst.setString(6,password);
        ppst.setInt(7,c);
        ppst.setString(8,carname);
        ppst.setString(9,carnum);
        ppst.setFloat(10,price);
        
        int i = ppst.executeUpdate();
        if(rs.next()){
            return 0;
        }
        if(i==1){
            return 1;
        } else {
            return 0;
        }
    }
  }catch(Exception e){
        out.println("ERROR"+e);
    }
        return 0;
        
    }
    
    
}
