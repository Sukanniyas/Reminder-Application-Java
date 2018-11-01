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
            String taskId = request.getParameter("id");            
            PreparedStatement pm = con.prepareStatement("delete from tbl_tasks where rm_id=?");
            pm.setString(1, taskId);
        
            int insertStatus = pm.executeUpdate();
             if(insertStatus>0){
                response.sendRedirect("view_remainder.jsp?ob=1");
            }else{
                response.sendRedirect("view_remainder.jsp?ob=2");
            }
             //database connection closing
            con.close();
        %>
    </body>
</html>
