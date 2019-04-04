
package dao;
import java.sql.*;
public class DAOLayer {
    private static Connection con;
    static {
        
        try {
            
        Class.forName("com.mysql.jdbc.Driver");
        String u="jdbc:mysql://localhost:3306/stp20";
        con = DriverManager.getConnection(u,"root","qwerty");
        }
        
        
            catch(Exception e) 
            {      System.out.println("CONNECT ERROR :"+e.getMessage());
                    
            }
    }
        public static Connection getCon()
        {
            return con;
        }
        
        
        
     public static ResultSet selectData(String projQuery){
         try {
         
         Statement st = con.createStatement();
         ResultSet rs =st.executeQuery(projQuery);
         return rs;
         } catch (Exception e) {
             System.out.println("SELECT ERROR :"+e.getMessage());
             return null;
         }
     }   







    
     public static int updateData(String dmlQuery){
         try {
         
         Statement st = con.createStatement();
         int ur =st.executeUpdate(dmlQuery);
         return ur;
         } catch (Exception e) {
             System.out.println("UDATE ERROR :"+e.getMessage());
             return -1;
         }
     }   
}