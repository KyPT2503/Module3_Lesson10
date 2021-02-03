<%@ page import="java.util.List" %>
<%@ page import="model.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customers</title>
</head>
<body>
<%!
    List<Customer> customers=new ArrayList<>();
%>
<%
    customers.add(new Customer("James","25-03-1999","USA"));
    customers.add(new Customer("Alice","20-06-2001","Vietnam"));
    customers.add(new Customer("James","25-03-1999","UK"));
    customers.add(new Customer("DragonLyT","19-11-1998","China"));
%>
<table>
    <tr>
        <th>Name</th>
        <th>Birthday</th>
        <th>Address</th>
    </tr>
    <c:forEach var="customer" items="<%=customers%>">
        <tr>
            <td>${customer.getName()}</td>
            <td>${customer.getBirthday()}</td>
            <td>${customer.getAddress()}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
