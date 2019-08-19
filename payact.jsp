<%@page import="DB.DB"%>
<%
    String pc = request.getParameter("t0");
    String c = request.getParameter("t1");
    String cv = request.getParameter("t2");
    String a = request.getParameter("t3");
    String ss = "insert into orders values(null,'" + pc + "'," + session.getAttribute("uid").toString() + ")";

    if (DB.executeUpdate(ss)) {
        response.sendRedirect("user.jsp");
    } else {
        response.sendRedirect("user.jsp");
    }


%>