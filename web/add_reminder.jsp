<%-- 
    Document   : add_reminder
    Author     : Sukanniya
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <div id="header"><center><h1></h1>
	&nbsp;<b></b>
        &nbsp;<b></b>
	</center>
	  <a href="index.html" class="logo"><h1>reminder</h1> always remember you</a>
	  <ul>
			<li >
				<a href="index.jsp">home</a>
			</li>
			<li class="selected">
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
        <div><center> 
        <h1>Add Reminder</h1>
           
        &nbsp;<b></b>
        &nbsp;<b></b>
        <table class="table table-bordered table-hover text-center" border="0">
        <h3><a href="view_remainder.jsp">View all Reminders</a></h3>
        <form method="post" action="add_remainder_data.jsp">
           
            <tr><td>Date : <input type="date" name="dateVal"><br/></td></tr>
            
            <tr><td> Time : <input type="time" name="timeVal"><br/></td></tr>
            
            <tr><td>Task : <input type="text" name="taskVal"><br/></td></tr>
         
            <tr><td><input type="submit" value="Add Remainder"></td></tr>
            </center>
            </div>
        </form>
    </body>
</html>
