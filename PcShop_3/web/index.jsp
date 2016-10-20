
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>

<%@include file="WEB-INF/jsp/header.html"%>
<%
    Connection conn = null;

    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshop", "root", "root");

    PreparedStatement psSelectRecord = null;
    ResultSet rsSelectRecord = null;
    String sqlSelectRecord = null;

    sqlSelectRecord = "SELECT * FROM products";
    psSelectRecord = conn.prepareStatement(sqlSelectRecord);
    rsSelectRecord = psSelectRecord.executeQuery();
%>


        <div align="center">
            <h1>Products list</h1>
            <table class="tabelaProzivod" border='1' cellpadding='6' width='700'>
                <tr >
                    <td>PNO</td>
                    <!--<td "></td>--->
                    <td>Product Name</td>
                    <td>Product Price</td>
                    <td>Product Descritpion</td>
                    <td>Product Brand</td>
                    <td>Category</td> 
                    <td>Quantity</td>
                    <td>ADD to CART</td> 
                </tr>
                <%
                    int cnt = 1;
                    while (rsSelectRecord.next()) {
                %>
                <tr>
                    <td><%=cnt%></td>
                    <!--<td><%=rsSelectRecord.getInt("productsID")%></td>-->
                    <td><%=rsSelectRecord.getString("name")%></td>
                    <td><%=rsSelectRecord.getString("price")%></td>
                    <td><%=rsSelectRecord.getString("description")%></td>
                    <td><%=rsSelectRecord.getString("brand")%></td> 
                    <td><%=rsSelectRecord.getString("category")%></td> 
                    <td><%=rsSelectRecord.getString("quantity")%></td> 
                    <td><b><span lang="en-us"><a href="buy.jsp">BUY</a></span></b></td>
                </tr>
                <br>
                <%
                        cnt++;   /// increment of counter
                    } /// End of while loop
                %>
            </table>
        </div>
    </body>
</html>
<%
    try {
        if (psSelectRecord != null) {
            psSelectRecord.close();
        }
        if (rsSelectRecord != null) {
            rsSelectRecord.close();
        }

        if (conn != null) {
            conn.close();
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
