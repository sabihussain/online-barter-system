<%@page import="DB.DB"%>
<%@page import="java.sql.ResultSet"%>
<html>
    <head>
        
    </head>
    <body>
    <center>
        <form>
            <table border="1">
                <tr>
                    <th>brand code</th>
                    <th>brand name
               
                       
                    </th>
                </tr>
                <%
                ResultSet rs = DB.executeQuery("select * from brand");
                while(rs.next())
                                       {
                    %>
                    <tr>
                        <td>
                            <%=rs.getString("bid")%>
                        </td>
                        <td> <%= rs.getString("bname")%>
                        </td></tr>
                        <% } %>
                    
            </table>
        </form>
    </center>
    </body>
</html>
