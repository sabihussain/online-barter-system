<%-- 
    Document   : subcategory
    Created on : 4 Mar, 2019, 6:02:31 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        
    </head>
    <body>
    <center>
        <form>
            <table>
        <tr>
            <td>
                Category:</td>
            <td> <input type="text" name="sub1" value="<%=request.getParameter("id")%>"/></td>
        </tr>
        <tr>
            <td>Subcategory:</td>
            <td><input type="text" name="sub2"/></td>
            
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="SUBMIT"/></td>
        </tr>
        
            </table>
        </form>
    </center>
    </body>
</html>
