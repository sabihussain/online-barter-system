<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DB"%>
<html>
    <body>
    <center>
        <form>
            <table>
                <% 
                String pname = request.getParameter("id");
                ResultSet rs=DB.executeQuery("select * from product where pname='" + pname + "' ");
                if(rs.next())
                                                          {
                   %>
                   <tr>
              
                            <td> product code:</td>
                            <td><%=rs.getString("pcode")%></td>
            </tr>
            <tr>
                <td>product name:</td>
                <td><%=rs.getString("pname")%></td>
           
             
            </tr>
            <tr>
                <td>product discription:</td>
                <td><%=rs.getString("desc")%></td>
                
            </tr>
            <tr>
                <td>amount</td>
                <td><%=rs.getString("amt")%></td>
                
            </tr>
            <%}%>
            </table>
        </form>
    </body>
</html>