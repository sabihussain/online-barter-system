<%@page import="DB.DB"%>
<%@page import="java.sql.ResultSet"%>
<html>
    <head>
        
    </head>
    <body>
    <center>
        <form>
            <table>
                <tr>
                    
                    <th>PRODUCTS</th>
                  
                    <%
                    String cname=request.getParameter("id");
                    ResultSet rs=DB.executeQuery("select * from product where subcat='" + cname +"'");
while(rs.next())
       {
    %>
                <tr>
                    
                    
                    
                   
                    <td><a href="searchprod1.jsp?id=<%=rs.getString("pname")%>"><%=rs.getString("pname")%></a></td>
                    
                </tr>
                  <%}%>      

            </table>
                    </form>
                  </center>
    </body>
    </html>