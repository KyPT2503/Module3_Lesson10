<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Demo</title>
</head>
<body>
<h1>
    <%
        PrintWriter writer = response.getWriter();
        writer.println("Hello World");
    %>
</h1>
<%--Using c:out--%>
<h1>
    <c:set scope="request" var="number" value="${10-1}"/>
    <c:out value="${number>10}"/>
    <%=1 + 1%>
</h1>
<h1>
    <c:out value="${number}"/>
</h1>
<h1>
    <c:out value="10>1 is${10>1}"/>
</h1>
<h1>
    <%=(new ArithmeticException("This is an message")).getMessage()%>
</h1>
<h1>
    <c:out value="10>1 is ${10>1}"/>
</h1>
<h1>
    <%="<a href=\"#\">Link</a>"%>
</h1>
<h1>
    <c:out value="<a href='#'>Link</a>"/>
</h1>
<h1>
    <c:out value="${number}"/>
</h1>
<h1>
    <c:catch var="exception">
        <%
            int n = 0;
            int m = 10 / n;
        %>
    </c:catch>
    <c:if test="${exception!=null}">
        Exception name: ${exception}
    </c:if>
</h1>
<c:choose>
    <c:when test="${number>10}">
        <p>Bigger</p>
    </c:when>
    <c:when test="${number==10}">
        <p>Equals</p>
    </c:when>
    <c:otherwise>
        <p>Smaller</p>
    </c:otherwise>
</c:choose>
<%--using foreach to print 1-10--%>
<c:forEach var="i" begin="${1}" end="${10}" step="${2}">
    <p>${i}</p>
</c:forEach>
<%int x = 5;%>
<%!int y = 5;%>
<%=y%>
</body>
</html>
