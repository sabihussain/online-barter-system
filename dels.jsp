<%@page import="DB.DB"%>
<%
    String id = request.getParameter("id");
String a=request.getParameter("sub1");
    String s = "delete from subcategory where subcode=" + id;
    if (DB.executeUpdate(s)) {
        response.sendRedirect("subcategory.jsp?id="+a+"'");
    } else {
        response.sendRedirect("category.jsp");
    }
%>