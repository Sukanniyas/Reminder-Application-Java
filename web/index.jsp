<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Simple Reminder Application</title>
       
	
	
<link rel="stylesheet" href="css/style.css" type="text/css">
        <script>
            if(<%=request.getParameter("ob") %>==1){
                alert('Remainder Task added successfully');
            }else if(<%=request.getParameter("ob") %>==2){
                alert('Error in adding Remainder Task');
            }

        </script>
        <meta http-equiv="refresh" content="30">
    </head>
    <body>
        <div id="header"><center><h1></h1>
	&nbsp;<b></b>
	</center>
	  <a href="index.html" class="logo"><h1>reminder</h1> always remember you</a>
	  <ul>
			<li class="selected" >
				<a href="index.jsp">home</a>
			</li>
			<li>
				<a href="add_reminder.jsp">add reminder</a>
			</li>
			<li>
				<a href="view_reminder.jsp">view reminder</a>
			</li>
			<li>
				<a href="view_reminder.jsp">delete reminder</a>
			</li>
            
      </ul>
          </div>
        <div class="section"></div>
         <%@include file="dbConfig.jsp" %>
                                                                   <% 
                                                                       Statement selectQuery = con.createStatement();
                                                                       ResultSet fetchedData = selectQuery.executeQuery("SELECT *,current_time FROM tbl_tasks where rm_date=CURRENT_DATE");
                                                                       while(fetchedData.next()){ 
                                                                        String taskTimeVal = fetchedData.getString("rm_time");
                                                                        String curTimeVal = fetchedData.getString("current_time");
                                                                        if(taskTimeVal.substring(0,5).equalsIgnoreCase(curTimeVal.substring(0, 5))){
                                                                            out.println("<h2> Tasks for now : "+fetchedData.getString("rm_task")+" at "+fetchedData.getString("rm_date")+" "+fetchedData.getString("rm_time")+"</h2><br>");
                                                                            out.println("<script>alert('You have a remainder now!!\\n"+fetchedData.getString("rm_task")+"');</script>");
                                                                        }
                                                                        //out.println("<h2>No other tasks now</h2>");
                                                                        //out.println(taskTimeVal.substring(0,5)+" -- "+curTimeVal.substring(0, 5));
                                                                       }

                                                                       
                                                                   con.close();
                                                                   %>
    </body>
</html>
