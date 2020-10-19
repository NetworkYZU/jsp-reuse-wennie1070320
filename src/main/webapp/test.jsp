<%-- 
    Document   : test
    Created on : 2020/10/19, 下午 04:39:47
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            double value=Math.random();   //取隨機value值
            String url="";
            if(value>0.5){
                url="/WEB-INF/hello1.jsp";           
            }
            else{
                url="/WEB-INF/hello2.jsp";
            }
        %>
        <jsp:forward page="<%=url%>"/>    <%--轉址回test.jsp，讓使用者無法得知真正的內部網址
                                                                        只限於"內部"轉址--%>
                                                                      
    </body>
</html>
