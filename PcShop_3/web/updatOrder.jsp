
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@include file="WEB-INF/jsp/header.html"%>
<%
    Connection conn = null;

    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshop", "root", "root");

    PreparedStatement psInsertRecord = null;
    String sqlInsertRecord = null;

    
    String CNAME = request.getParameter("CUSTNAME");
    String PHONE = request.getParameter("CUSTPHONE");
    String MAIL = request.getParameter("CUSTMAIL");
    String ADDR = request.getParameter("CUSTADDR");
    int OrPID = Integer.parseInt(request.getParameter("OPID"));

    try {
        sqlInsertRecord = "insert into orderdetails ( CustomerName, CustomerPhone, CustomerEmail, CustomerAddress, productsID) values(?,?,?,?,?,?)";
        psInsertRecord = conn.prepareStatement(sqlInsertRecord);
        
        psInsertRecord.setString(2, CNAME);
        psInsertRecord.setString(3, PHONE);
        psInsertRecord.setString(4, MAIL);
        psInsertRecord.setString(5, ADDR);
        psInsertRecord.setInt(6, OrPID);

        psInsertRecord.executeUpdate();
        
    } catch (Exception e) {
        response.sendRedirect("buy.jsp");//// On error it will send back to addRecord.jsp page
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

        Ordered successfully. Thank YOU for Ordering and visiting Our Web site<br>
        You will be redirected to the Main Page in 3 seconds.....
    </body>
</html>