<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.File" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItem"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DB"%>
<%
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    if (!isMultipart) {
    } else {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        List items = null;
        try {
            items = upload.parseRequest(request);
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
        String uploadfile = config.getServletContext().getRealPath("/") + "uploads/";
        File uploaddir = new File(uploadfile);
        if (!uploaddir.exists()) {
            uploaddir.mkdir();
        }
        Iterator itr = items.iterator();
        while (itr.hasNext()) {
            FileItem item = (FileItem) itr.next();
            if (item.isFormField()) {
            } else {
                try {
                    String itemName = new File(item.getName()).getName();


                    File savedFile = new File(uploadfile + session.getAttribute("pc").toString()+itemName);
                    item.write(savedFile);
                    //ResultSet rs=db.executeQuery("select max(id) from releases");
                    // rs.next();
                    if (DB.executeUpdate("update product set fpath='"+session.getAttribute("pc").toString()+itemName+"' where pcode='"+session.getAttribute("pc").toString()+"'")) {
                       // response.sendRedirect("index.jsp?isuploaded=true");
                        out.print("<script>alert('Uploaded!!');window.location='user.jsp';</script>");
                    }
                    //out.println("<tr><td><b>Your file has been saved at the loaction:</b></td></tr><tr><td><b>"+config.getServletContext().getRealPath("/")+"uploadedFiles"+"\\"+itemName+"</td></tr>");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

    }
%>