<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>input/postExample.jsp</title>
</head>
<body>
    <!-- 자바 -->
    <%
        request.setCharacterEncoding("UTF-8");
        String userId = request.getParameter("userId");
        String birth = request.getParameter("birth");
        String sex = request.getParameter("sex");
        String emailTxt = request.getParameter("emailTxt");
        String receiveMail = request.getParameter("receiveMail");
        String phone1 = request.getParameter("phone1");
        String phone2 = request.getParameter("phone2");
        String phone3 = request.getParameter("phone3");
        String job = request.getParameter("job");
        String textarea = request.getParameter("textarea");
      
        String[] hobby = request.getParameterValues("hobby");
        
        String h1 = null;
        String h2 = null;
        String h3 = null;
        String h4 = null;
        String h5 = null;

        for(String h : hobby) {
          if(h.equals("쇼핑")) {
            h1="checked";
          };
          if(h.equals("인터넷")) {
            h2="checked";
          };
          if(h.equals("음악감상")) {
            h3="checked";
          };
          if(h.equals("독서")) {
            h4="checked";
          };
          if(h.equals("스포츠")) {
            h5="checked";
          };
        }

    %>
    <!-- 자바 끝 -->

    <!-- 복사 시작 -->

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
        
    </body>
    </html><!DOCTYPE html>
    <html lang="en">
    <head>
        <title>CSS Template</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="layout.css">
    </head>
    <body>
    
    <h2>CSS Layout Float</h2>
    <p>In this example, we have created a header, two columns/boxes and a footer. On smaller screens, the columns will stack on top of each other.</p>
    <p>Resize the browser window to see the responsive effect (you will learn more about this in our next chapter - HTML Responsive.)</p>
    
    <header>
      <h2>Cities</h2>
    </header>
    
    <section>
      <nav>
        <ul>
          <li><a href="layout.html">London</a></li>
          <li><a href="paris.html">Paris</a></li>
          <li><a href="tokyo.html">Tokyo</a></li>
        </ul>
      </nav>
      
      <article>
        <form action="tokyo.jsp" method="POST">
            <fieldset>
            <legend>개인 정보 입력</legend>
            아이디: <%=userId%> <p/>
            생년월일: <%=birth%> <p/>
            성별: <%=sex%> <p/>
            E-mail: <%=emailTxt%> <p/>
            메일수신: <%=receiveMail%> <p/>
            핸드폰: <%=phone1%>-<%=phone2%>-<%=phone3%><p/>
            직업: <%=job%> <p/>
            취미:
            <% for (String hob : hobby) {%>
            <%=hob%>   
            <% }%>
            <p/> 
            자기 소개:<%=textarea%><p/>

            취미: 
          <input type="checkbox" name="hobby" value="쇼핑" <%=h1%>>쇼핑
          <input type="checkbox" name="hobby" value="인터넷" <%=h2%>>인터넷
          <input type="checkbox" name="hobby" value="음악감상" <%=h3%>>음악감상
          <input type="checkbox" name="hobby" value="독서" <%=h4%>>독서
          <input type="checkbox" name="hobby" value="스포츠" <%=h5%>>스포츠
          <p/>
            
            </fieldset> 
        </form>
      </article>
    </section>
    
    <footer>
      <p>Footer</p>
    </footer>
    
    </body>

     <!-- 복사 끝 -->
 
    
</body>
</html>