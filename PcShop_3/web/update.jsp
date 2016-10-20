<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
    Connection conn = null;

    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshop", "root", "root");

    PreparedStatement psUpdateRecord = null;
    String sqlUpdateRecord = null;

    int ProID = Integer.parseInt(request.getParameter("UPID"));
    String ProName = request.getParameter("UPname");
    String ProPrice = request.getParameter("UPprice");
    String ProDesc = request.getParameter("UPdesc");
    String ProBrand = request.getParameter("UPbrand");
    String ProCat = request.getParameter("UPcat");
    String ProQuant = request.getParameter("UPQuant");
    
    

    try {

        sqlUpdateRecord = "update products set name = ?, price = ?, description = ?, brand = ?, category = ?, quantity = ?  where productsID = ?";
        psUpdateRecord = conn.prepareStatement(sqlUpdateRecord);
        psUpdateRecord.setInt(1, ProID);
        psUpdateRecord.setString(2, ProName);
        psUpdateRecord.setString(3, ProPrice);
        psUpdateRecord.setString(4, ProDesc);
        psUpdateRecord.setString(5, ProBrand);
        psUpdateRecord.setString(6, ProCat);
        psUpdateRecord.setString(7, ProQuant);
        
        

        psUpdateRecord.executeUpdate();
    } catch (Exception e) {
        response.sendRedirect("admin.jsp");//// On error it will send back to admin.jsp page
    }

    try {
        if (psUpdateRecord != null) {
            psUpdateRecord.close();
        }

        if (conn != null) {
            conn.close();
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<html>
    <head>
        <meta http-equiv="REFRESH" content="3;url=/PcShop_3/admin.jsp">
    </head>
    <body>
        Data is Updated successfully.<br>
        You will be redirected to the Previous Page in 3 seconds.....

    </body>
</html>
