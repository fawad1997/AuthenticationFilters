<%--
  Created by IntelliJ IDEA.
  User: Fawad
  Date: 17/10/2019
  Time: 3:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<%
    String email = null;
    HttpSession session1 = request.getSession(false);
    if (session1!=null){
        if(session1.getAttribute("email")!=null){
            email = (String)session1.getAttribute("email");
        }else
            response.sendRedirect("index.jsp");
    }
    /*String loginCooke = null;
    Cookie[] cookies = request.getCookies();
    if(cookies!=null){
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("email")){
                loginCooke = cookie.getValue();
                break;
            }
        }
    }
    if(loginCooke==null){
        response.sendRedirect("index.jsp");
    }*/
%>
<h1>Hi <%=email %>, Welcome</h1>
<form action="logout" method="post">
    <button type="submit" value="Logout">Logout</button>
</form>
</body>
</html>
