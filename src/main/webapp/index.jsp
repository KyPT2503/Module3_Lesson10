<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>Currency Converter:</h1>
<form action="${pageContext.request.contextPath}/convert.jsp" method="post">
    <table>
        <tr>
            <td>USD</td>
            <td>
                <label>
                    <input type="text" name="amount">
                </label>
            </td>
        </tr>
        <tr>
            <td>Rate</td>
            <td>
                <label>
                    <input type="text" name="rate">
                </label>
            </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Convert"></td>
        </tr>
    </table>
</form>
<hr>
<h1>Dictionary:</h1>
<form action="dictionary.jsp" method="get">
    <label>Search:
        <input type="text" name="word" placeholder="Search ...">
    </label>
    <input type="submit" value="Search">
    <p>Word you can search: dog,book,table,house.</p>
</form>
<hr>
<h1 style="display: inline">List Customer:</h1>
<a href="customers.jsp">Customers</a>
<hr>
<h1>Calculator:</h1>
<form action="${pageContext.request.contextPath}/calculator.jsp" method="post">
    <label>
        <input type="text" name="firstOperand">
    </label>
    <select name="operator" id="operator">
        <option value="add">Addition</option>
        <option value="sub">Subtraction</option>
        <option value="divide">Divide</option>
        <option value="multiple">multiple</option>
    </select>
    <label>
        <input type="text" name="secondOperand">
    </label>
    <input type="submit" value="calculate">
</form>
</body>
</html>
