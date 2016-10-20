
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
    Connection conn = null;

    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshop", "root", "root");

    PreparedStatement psInsertRecord = null;
    String sqlInsertRecord = null;

    String ProName = request.getParameter("IPname");
    String ProPrice = request.getParameter("IPprice");
    String ProDesc = request.getParameter("IPdesc");
    String ProBrand = request.getParameter("IPbrand");
    String ProCat = request.getParameter("IPcat");
    String ProQuant = request.getParameter("IPQuant");

    try {
        sqlInsertRecord = "insert into products ( name, price, description,  brand, category, quantity) values(?,?,?,?,?,?)";
        psInsertRecord = conn.prepareStatement(sqlInsertRecord);
        psInsertRecord.setString(1, ProName);
        psInsertRecord.setString(2, ProPrice);
        psInsertRecord.setString(3, ProDesc);
        psInsertRecord.setString(4, ProBrand);
        psInsertRecord.setString(5, ProCat);
        psInsertRecord.setString(6, ProQuant);

        psInsertRecord.executeUpdate();
    } catch (Exception e) {
        response.sendRedirect("admin.jsp");//// On error it will send back to addRecord.jsp page
    }

    try {
        if (psInsertRecord != null) {
            psInsertRecord.close();
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
        Data is saved successfully.<br>
        You will be redirected to the Previous Page in 3 seconds.....
    </body>
</html>