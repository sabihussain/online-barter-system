<%@page import="DB.DB"%>
<%@page import="java.sql.ResultSet"%>


<html>
    <head>
        
    </head>
    <body>
    <center>
        <form>
            <table>
            
                <%
                ResultSet rs = DB.executeQuery("select * from category");
                while(rs.next())
                                       {
                    %>
                    <tr>
               
                       
                     <td><a href="searchsub.jsp?id=<%=rs.getString("cat")%>"><%=rs.getString("cat")%></a></td></tr>
                        <% } %>
                    
            </table>
        </form>
    </center>
    </body>
</html>
