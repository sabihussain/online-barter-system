<%@page import="DB.DB" %>
<%@page import="java.sql.*" %>
<%

    String uname = request.getParameter("t1");
    String pass = request.getParameter("t2");
    ResultSet rs = DB.executeQuery("select * from login where uname='" + uname + "' and upass='" + pass + "'");
    if (rs.next()) {

        if (rs.getString("utype").contentEquals("admin")) {

            out.println("<script>alert('Login Success');window.location='admin.jsp';</script>");
        } else if (rs.getString("utype").contentEquals("user")) {
session.setAttribute("uid",rs.getString("uid") );
            out.println("<script>alert('Login Success');window.location='user.jsp';</script>");
        }
    } else {
        out.println("<script>alert('Incorrect UserName and Password');window.location='index.jsp';</script>");
    }

%>