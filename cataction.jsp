<%@page import="DB.DB"%>
<%
    String a = request.getParameter("cat");

    String s = "insert into category values(null,'" + a + "')";

    if (DB.executeUpdate(s)) {
        //response.sendRedirect("category.jsp");
        out.print("<script>alert('success');window.location='category.jsp';</script>");
    } else {
        //response.sendRedirect("category.jsp");
        out.print("<script>alert('failed');window.location='category.jsp';</script>");
    }





%>