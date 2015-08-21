/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author US$ER
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class Database {
    //Context ctx;
    //DataSource ds;
    Connection con;
    private String url = "jdbc:mysql://localhost/music";
    private String dbuser = "root";
    private String dbpass = "";
    PreparedStatement ps;
    ResultSet rs;
    private String fname;
    private String lname;
    private String email;
    private String DOB;
    private String password;
    private String country;
    private String mno;
    private int id;
    public String name;
    public Database()
    {
             try
             {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    System.out.println("Driver loaded sucessfully");
             }
             catch(Exception e)
             {
                System.err.println("Problem with the driver");
             }
         /*try
       {
           ctx = new InitialContext();
           ds = (DataSource) ctx.lookup("jdbc/myDatasource");
           con = ds.getConnection();
        }
        catch(NamingException | SQLException e)
        {
           System.out.println("Can not connect to the database");
        }*/
    }
public void insert(){
    try
   {
        try{
        con = DriverManager.getConnection(url, dbuser,dbpass);
        System.out.println("Connected to database");
        }
        catch(SQLException e){
        System.out.println("Can not connect to database");
        }
       ps = con.prepareStatement("insert into profile values(?,?,?,?,?,?,?,?)");
       ps.setInt(1, id);
       ps.setString(2, fname);
       ps.setString(3, lname);
       ps.setString(4, email);
       ps.setString(5, password);
       ps.setString(6, "dob");
       ps.setString(7, country);
       ps.setString(8,mno);
       ps.execute();
   }
   catch(Exception e)
   {
       System.out.println("Can not Insert data to the database");
   }
}
public void setId(int id)
{
    this.id = id;
}
public void setfname(String fname)
{
    this.fname = fname;
}
public void setlname(String lname)
{
    this.lname = lname;
}
public void setemail(String email)
{
    this.email = email;
}
public void setpassword(String password)
{
    this.password=password;
}
public void setDOB(String DOB)
{
    this.DOB = DOB;
}
public void setcountry(String country)
{
    this.country=country;
}
public void setmno(String mno)
{
    this.mno = mno;
}

public String login()
{
    try
   {

       ps = con.prepareStatement("select password,fname from profile where email = ?");
       ps.setString(1, email);
       rs = ps.executeQuery();
       while(rs.next())
       {
       String pass=rs.getString("password");
       name=rs.getString("fname");
       
       if(pass.equals(password))
       {
         return name;
       }
       }
   }
   catch(SQLException e)
   {
       System.out.println("Error....................."+e.getMessage());
   }
        return "";
}
public String getname()
{
return name;
}
//public void destroy()
//{
//        try {
//            con.close();
//        } catch (SQLException ex) {
//            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
//        }
//}
}
   
