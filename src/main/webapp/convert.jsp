<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Convert Result</title>
</head>
<body>
<%
    Integer amount= Integer.valueOf(request.getParameter("amount"));
    Integer rate= Integer.valueOf(request.getParameter("rate"));
    Integer result=amount*rate;
%>
<h1>Result: <%=result%></h1>
</body>
</html>
