<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Calculator</title>
</head>
<body>
<%!
    String result;
%>
<%
    try {
        int firstOperand = Integer.parseInt(request.getParameter("firstOperand"));
        int secondOperand = Integer.parseInt(request.getParameter("secondOperand"));
        String operator = request.getParameter("operator");
        if (operator.equals("add")) {
            result = String.valueOf(firstOperand + secondOperand);
        } else if (operator.equals("sub")) {
            result = String.valueOf(firstOperand - secondOperand);
        } else if (operator.equals("divide")) {
            result = String.valueOf(firstOperand / secondOperand);
        } else if (operator.equals("multiple")) {
            result = String.valueOf(firstOperand * secondOperand);
        }
    } catch (Exception e) {
        result = "Can't calculate.";
    }
%>
<h1>Result: </h1>
<p><%=result%>
</p>
</body>
</html>
