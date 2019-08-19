<%@page import="DB.DB"%>
<%
    String b = request.getParameter("b1");
    String c = "insert into brand values(null,'" + b + "')";
    if (DB.executeUpdate(c)) {
        out.print("<script>alert('success');window.location='brand.jsp';</script>");
    } else {
        out.print("<script>alert('failed');window.location='brand.jsp';</script>");

    }
%>