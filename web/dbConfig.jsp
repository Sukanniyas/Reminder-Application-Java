<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%
    Connection con=null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
    	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reminderApp","root","");
    }catch(Exception e){
        PrintWriter pw = response.getWriter();
        pw.println("Database Error!!!<br/>");
        pw.println("Error Message : "+e.getMessage()+"<br/>");
        pw.println("Error Cause : "+e.getCause());
        con.close();
    }

%>