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
                    
                    <th>SubCategory</th>
                  
                    <%
                    String cname=request.getParameter("id");
                    ResultSet rs=DB.executeQuery("select * from subcategory where cat='" + cname +"'");
while(rs.next())
       {
    %>
                <tr>
                    
                    
                    
                   
                    <td><a href="searchprod.jsp?id=<%=rs.getString("subcategory")%>"><%=rs.getString("subcategory")%></a></td>
                    
                </tr>
                  <%}%>      

            </table>
                    </form>
                  </center>
    </body>
    </html>