<%@page import="DB.DB"%>
<%
String a=request.getParameter("n1");
String b=request.getParameter("n2");

String c=request.getParameter("sub1");
String d=request.getParameter("sub2");
String t=request.getParameter("s2");
String e=request.getParameter("ta1");
String f=request.getParameter("t9");
String uid=session.getAttribute("uid").toString();
String s = "insert into product values('" + a + "','" + b + "','" + c + "','" + d + "','" + t + "','" + e + "',"+f+","+uid+",'Nil')";
if (DB.executeUpdate(s)) {
        
        out.print("<script>alert('success');window.location='upload.jsp?id="+a+"';</script>");
    } else {
        
        out.print("<script>alert('failed');window.location='product.jsp';</script>");
    }
%>


