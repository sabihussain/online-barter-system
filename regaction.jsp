<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DB"%>
<%
    String a = request.getParameter("t1");
    String b = request.getParameter("t2");
    String c = request.getParameter("r1");
    String e = request.getParameter("ta");
    String f = request.getParameter("t3");
    String g = request.getParameter("t4");
    String h = request.getParameter("t5");
    String i = request.getParameter("t6");
      String di = request.getParameter("d1");
    if (h.equals(i)) {
        String s = "insert into register values(null,'" + a + "','" + b + "','" + c + "','" + e + "','" + di+"','"+ f + "','" + g + "','" + h + "')";
        if (DB.executeUpdate(s)) {

            ResultSet rs = DB.executeQuery("select max(id)as id from register");
            rs.next();
            String uid = rs.getString("id");
            String ss = "insert into login values(" + uid + ",'" + f + "','" + h + "','user')";
            if (DB.executeUpdate(ss)) {
                out.print("<script>alert('success');window.location='login.jsp';</script>");
            } else {
                out.print("<script>alert('failed');window.location='register.jsp';</script>");
            }


        } else {
            out.print("<script>alert('failed');window.location='register.jsp';</script>");
        }

    } else {

        out.print("<script>alert('failed');window.location='register.jsp';</script>");
    }
%>


