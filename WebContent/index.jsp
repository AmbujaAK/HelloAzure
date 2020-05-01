<%@page import="net.azurewebsites.ambuja.hello.HelloAmbuja"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
    @media all {
        body
        {
            text-align:left;
        }
        p.paragrpahs
        {
            text-align:center;
            font-family:Arial,Helvetica,sans-serif;
            font-size:32px;
            font-weight:bold;
            vertical-align: center;
        }
        .break_here
        {
            page-break-before:always;
        }
    }
</style>
<title>Home</title>
</head>
<body>
	<b><% out.println("Hello Azure!"); %></b><br/></br>

	Enter your name ::
	<form action="index.jsp">
		<input type="text" name="username">  
		<input type="submit" value="Submit"><br/>  
	</form>  
	
	<div>
        <p class="break_here">
        	<p class="paragrpahs">
        		<b style="color:red"><% 
					HelloAmbuja helloAmbuja = new HelloAmbuja();
					String username = request.getParameter("username");
					
					if(username != null)
						out.println(helloAmbuja.sayHello(username)); 
					else
						out.println(helloAmbuja.sayHello("Buddy")); 					
				%></b>
        	</p>
    </div>
	
</body>
</html>