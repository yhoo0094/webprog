<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>input/postExample.jsp</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
    %>
    <table border="1">
        <caption>&lt;입력값&gt;</caption>
        <tr>
            <td>이름</td>
            <td><%=firstName%></td>
        </tr>
        <tr>
            <td>성</td>            
            <td><%=lastName%></td> 
        </tr>
        <tr>
            <td>이메일</td>            
            <td><%=email%></td>
        </tr>
    </table>    
</body>
</html>