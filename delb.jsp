<%@page import="DB.DB"%>
<%
    String id = request.getParameter("id");

    String s = "delete from brand where bid=" + id;
    if (DB.executeUpdate(s)) {
        response.sendRedirect("brand.jsp");
    } else {
        response.sendRedirect("brand.jsp");
    }
%>