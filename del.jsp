<%@page import="DB.DB"%>
<%
    String id = request.getParameter("id");

    String s = "delete from category where cid=" + id;
    if (DB.executeUpdate(s)) {
        response.sendRedirect("category.jsp");
    } else {
        response.sendRedirect("category.jsp");
    }
%>