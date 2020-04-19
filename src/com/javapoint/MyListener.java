package com.javapoint;

import javax.servlet.*;
import java.sql.*;

public class MyListener implements ServletContextListener{

	public void contextInitialized(ServletContextEvent arg0) {
		
		Connection con=null;
	try{
		
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:MySQL://localhost:3306/test_bill","root","654321");
		
		PreparedStatement ps=con.prepareStatement("CREATE TABLE STUDENT2 (ID VARCHAR(32), "
				+ "CONSUMER_ID VARCHAR(128), "
				+ "ENGINEER_ID VARCHAR(128), "
				+ "BILL_ID VARCHAR(400), "
				+ "QQ_ID VARCHAR(400), "
				+ "TOTAL INT(11), "
				+ "PAID INT(11), "
				+ "DATEOFJOINING VARCHAR(128),  "
				+ "SERVICE VARCHAR(128),"
				+ "DESCRIPTION VARCHAR(800),"
				+ "CONSTRAINT STUDENT2_PK PRIMARY KEY (ID));");
		ps.executeUpdate();
		PreparedStatement ps4=con.prepareStatement("CREATE TABLE PAYREGISTER (ID INT(11) NOT NULL AUTO_INCREMENT, "
				+ "USERNAME VARCHAR(400), "
				+ "USERPASS VARCHAR(400), "
				+ "BRANCH VARCHAR(400), "
				+ "DATEOFJOINING TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, "
				+ "DATEOFBIRTH VARCHAR(400), "
				+ "SALARY VARCHAR(400),"
				+ "CONSTRAINT PAYREGISTER_PK PRIMARY KEY (ID));");
		ps4.executeUpdate();		
		
		//Statement stmt=con.createStatement();
		//stmt.executeUpdate("CREATE TRIGGER  BI_STUDENT2 before insert on STUDENT2 for each row begin select JAVATPOINT.nextval into :NEW.ID from dual; end");
		//stmt.executeUpdate("CREATE TRIGGER  BI_PAYREGISTER before insert on PAYREGISTER for each row begin select JAVATPOINT.nextval into :NEW.ID from dual;end");
		}	
	
		
	    catch(Exception e){
	    	e.printStackTrace();
	    	
	    }
	    }
	    
	    public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("project undeployed");
		
	}
}
