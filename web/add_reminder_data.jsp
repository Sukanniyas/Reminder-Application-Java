<%-- 
    Document   : add_remainder_data
    Author     : sukanniya
--%>

<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <%@include file="dbConfig.jsp" %>
        <%
            String dateVal = request.getParameter("dateVal");
            String timeVal = request.getParameter("timeVal");
            String taskData = request.getParameter("taskVal");
            out.println(dateVal+" -- "+timeVal+" -- "+taskData);
            
            PreparedStatement pm = con.prepareStatement("INSERT INTO tbl_tasks (rm_date,rm_time,rm_task) VALUES (?,?,?)");
        pm.setString(1, dateVal);
        pm.setString(2, timeVal);
        pm.setString(3, taskData);
        
        int insertStatus = pm.executeUpdate();
         if(insertStatus>0){
            //out.println("<script>alert('Remainder Added Successfully');</script>");
            response.sendRedirect("index.jsp?ob=1");
        }else{
            out.println("<script>alert('Error in adding Remainder');</script>");
            response.sendRedirect("add_remainder.jspob=2");
        }
         //database connection closing
        con.close();
        %>
    </body>
</html>
