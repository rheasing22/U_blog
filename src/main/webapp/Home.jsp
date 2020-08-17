<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    /*If user tries to click on browser back button then he/ she should not be able to access this page*/
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>


<%
	try {
		if ( session.getAttribute("email").equals(null) ) {
			response.sendRedirect("/index.jsp");
		}
	} catch (NullPointerException ex) {
		response.sendRedirect("/index.jsp");
	}
%>



<!--
TODO: 4.14. Design the "Home" page with the following properties.
1. Title of the page should be "Home Page"
2. If a user is logged in then display the string before @ in the user email id on the web page.
For example, if email id is example@gmail.com, then display "Logged In as example" in the
top left corner of the web page as shown on the learn platform.
3. Provide five hyperlinks to the Create.jsp page, Search.jsp page, Delete.jsp page, Filter.jsp page
and Logout.jsp page. They should be provided in the same order as shown on the learn platform with
some spacing between them.
-->

<html>
<head>
	<title>Home</title>
</head>
<body>

<%
	try{
		if( session.getAttribute("email") != null )
			out.println("Logged In as " + session.getAttribute("email").toString().split("@")[0]);

	}
	catch (NullPointerException ex){
		response.sendRedirect("/index.jsp");
	}

%>

<br><br>
<a href="/ublog/Create.jsp">Create Post</a>
<br><br>
<a href="/ublog/Search.jsp">Search Post</a>
<br><br>
<a href="/ublog/Delete.jsp">Delete Post</a>
<br><br>
<a href="/ublog/Filter.jsp">Filter Post</a>
<br><br>
<a href="/ubank/Logout.jsp">Logout</a>




</body>
</html>