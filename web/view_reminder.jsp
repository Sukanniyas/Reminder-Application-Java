<%-- 
    Document   : add_reminder
    Author     : sukanniya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
table {
    border-collapse: collapse;
    width: 90%;
}

th, td {
    text-align: left;
    padding: 10px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
        <meta charset="utf-8">
	<title>view</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<style type="text/css">
	body,td,th {
	font-family: "Conv_Ubuntu-Light";
	color: #9F3;
}
body {
	background-color: #309;
}
    </style>
        <title>View Reminder Tasks</title>
        
         <script>
            if(<%=request.getParameter("ob") %>==1){
                alert('Remainder Task deleted successfully');
            }else if(<%=request.getParameter("ob") %>==2){
                alert('Error in deleting Remainder Task');
            }

        </script>
    </head>
    <body>
         <div id="header"><center><h1></h1>
	&nbsp;<b></b>
	</center>
	  <a href="index.html" class="logo"><h1>reminder</h1> always remember you</a>
	  <ul>
			<li >
				<a href="index.jsp">home</a>
			</li>
			<li>
				<a href="add_reminder.jsp">add reminder</a>
			</li>
			<li class="selected">
				<a href="view_reminder.jsp">view reminder</a>
			</li>
			<li>
				<a href="view_reminder.jsp">delete reminder</a>
			</li>
            
      </ul>
          </div>
        <div class="section"></div>
       
        <h1>View Reminder</h1><br/>
        <h3><a href="add_remainder.jsp">Add new Reminder</a></h3>
        <table class="table table-bordered table-hover text-center" border="0">
            <thead><tr><th>S.No</th><th>Reminder Date</th><th>Reminder Time</th><th>Task</th><th>Delete</th></tr></thead>
                                                                        <tbody>
                                                                            <%@include file="dbConfig.jsp" %>
                                                                    <% 
                                                                        Statement doctorSelectQuery = con.createStatement();
                                                                        ResultSet doctorData = doctorSelectQuery.executeQuery("select * from tbl_tasks");
                                                                        PrintWriter pw = response.getWriter();
                                                                        int slNo=1;
                                                                        while(doctorData.next()){ %>
                                                                         <div><center>
                                                                        <tr><td><% out.println(slNo); slNo++;%></td>
                                                                               <td><% out.print(doctorData.getString("rm_date")); %> </td>
                                                                               <td><% out.print(doctorData.getString("rm_time")); %></td>
                                                                               <td><% out.print(doctorData.getString("rm_task")); %></td>
                                                                             </center>
                                                                           <td><a id="delete" data-message="Are you sure want delete Disease?" data-toggle="tooltip" title="Delete task remainder" href="delete_task.jsp?id=<% out.print(doctorData.getString("rm_id")); %>"> Delete</a></td></tr>
                                                                      <%  }

                                                                    con.close();
                                                                    %>
                                                                        
                                                                           </tbody>
                                                                    </table>
    </body>
</html>
