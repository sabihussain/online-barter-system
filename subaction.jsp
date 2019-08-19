<%@page import="DB.DB"%>
<%
String a=request.getParameter("sub1");
String b=request.getParameter("sub2");

String s = "insert into subcategory values(null,'" + b + "','" + a + "')";
if (DB.executeUpdate(s)) {
        
        out.print("<script>alert('success');window.location='subcategory.jsp?id="+a+"';</script>");
    } else {
        
        out.print("<script>alert('failed');window.location='subcategory.jsp?id="+a+"';</script>");
    }
%>



