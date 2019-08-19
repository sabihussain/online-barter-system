<%@page import="DB.DB"%>
<%

    String cid = request.getParameter("id");

    String ss = "update exchange set status='Rejected' where eid=" + cid;

    if (DB.executeUpdate(ss)) {
        response.sendRedirect("vorder.jsp");
    } else {
        response.sendRedirect("vorder.jsp");
    }

%>