package cn.xinxing.business;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


/**
 */
public class DBHelper {
	
	 public static final String url = "jdbc:sqlite:/Applications/IntelliJ IDEA.app/Contents/bin/students_manage.sqlite";
	    public static final String name = "org.sqlite.JDBC";
//	    public static final String user = "root";
//	    public static final String password = "111111";

	    public Connection conn = null;  
	    public PreparedStatement pst = null;  
	  
	    public DBHelper(String sql) {
	        try {
				Class.forName(name);
//				conn = DriverManager.getConnection(url, user, password);//
				conn = DriverManager.getConnection(url);//
	            pst = conn.prepareStatement(sql);//
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
	    }

	    public void close() {  
	        try {  
	            this.conn.close();  
	            this.pst.close();  
	        } catch (SQLException e) {  
	            e.printStackTrace();  
	        }  
	    }  

}
