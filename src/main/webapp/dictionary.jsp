<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dictionary</title>
</head>
<body>
<h1>Result of searching:</h1>
<%!
    Map<String,String> dictionary=new HashMap<>();
%>
<%
    dictionary.put("home","ngoi nha");
    dictionary.put("book","quyen sach");
    dictionary.put("table","cai ban");
    dictionary.put("dog","con cho");
    String word=request.getParameter("word");
    PrintWriter writer= response.getWriter();
    if(dictionary.get(word)!=null){
        writer.println(dictionary.get(word));
    } else {
        writer.println("Word not found.");
    }
%>
</body>
</html>
