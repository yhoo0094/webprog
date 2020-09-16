<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>input/controlExample.jsp</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String hireDate = request.getParameter("hireDate");
        String computer = request.getParameter("computer");
        String s1 = null;
        String s2 = null;
        String s3 = null;
        if(computer.equals("Software")) {
        s1 = "selected"; }
        if(computer.equals("Robot")) {
        s2 = "selected";}
        if(computer.equals("System")){
        s3 = "selected";}
    %>

    <h1>input의 value속성.</h1>
    <form>
        <input type="text" name="firstName" value=<%=firstName%>><br>
        <input type="text" name="lastName" value=<%=lastName%>><br>
        <input type="date" name="hireDate" value=<%=hireDate%>><br>
        <select name="computer">
            <option value="">선택하세요</option>
            <!-- <option value=<%=computer%>><%=computer%></option> -->
            <option value="Software" <%=s1%>>Software</option>
            <option value="Robot" <%=s2%>>Robot</option>
            <option value="System" <%=s3%>>System</option>
        </select><br>
    </form>
</body>
</html>