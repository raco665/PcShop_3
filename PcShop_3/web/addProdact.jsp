<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="WEB-INF/jsp/header.html"%>
<div align="center"> 
    <%String msg = request.getParameter("msg");
        if (msg != null) {
    %>
    <label><font color="red"><%=msg%></font></label> 
        <%
            }
        %>
    <h1>Administrator page</h1>
        <div id="t_1">
                <h1>Add New Product into Database</h1> <br>
                <form id="forma1" name="frm" action="saveRecord.jsp">
                    <table>
                        <tr><td>Product Name</td><td> <input type="text" name="IPname"></td></tr>
                        <tr><td>Product Price</td><td>  <input type="text" name="IPprice"></td></tr>
                        <tr><td>Description</td><td>  <input type="text" name="IPdesc"></td></tr>
                        <tr><td>Brand</td><td>  <input type="text" name="IPbrand"></td></tr>
                        <tr><td>Product Category</td><td>  <input type="text" name="IPcat"></td></tr>
                        <tr><td>Product Quantity</td><td> <input type="text" name="IPQuant"></td></tr> 
                    </table>
                    <input type="submit" name="submit" value=" Submit ">
                </form>  
        </div>
</html>
