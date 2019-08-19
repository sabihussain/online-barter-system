<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DB"%>
<%
    String pc = request.getParameter("id");
    String c = request.getParameter("pc");
   /* ResultSet rs = DB.executeQuery("select amt from product where pcode='" + pc + "'");
    rs.next();
    int pamt = Integer.parseInt(rs.getString("amt"));
    ResultSet rs1 = DB.executeQuery("select amt from product where pcode='" + c + "'");
    rs1.next();
    int pcamt = Integer.parseInt(rs1.getString("amt"));
    int cc = 0;
    if (pamt > pcamt) {
        cc = pamt - pcamt;
    } else if (pcamt > pamt) {
        cc = pcamt - pamt;
    } else if (pcamt == pamt) {
        cc = 0;
    }*/
    
    String ss = "insert into exchange values(null,'" + c + "','" + pc + "'," + session.getAttribute("uid").toString() + ",'Pending')";

    if (DB.executeUpdate(ss)) {
        out.println("<script>alert('Request Sent');window.location='user.jsp';</script>");
    } else {
        out.println("<script>alert('Request Not Sent');window.location='user.jsp';</script>");
    }


%>