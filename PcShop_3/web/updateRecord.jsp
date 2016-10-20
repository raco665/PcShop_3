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
     <%!    String UPID = "";
            String UPname = "";
            String UPprice = "";
            String UPdesc = "";
            String UPbrand = "";
            String UPcat = "";
            String UPQuant = "";
        %>
    <div id="box">
        <ul id="tab_nav">
            <li id="nav2"><a href="#t_2">UPDATE </a></li>
        </ul>
        <div id="tab_content">
            <div id="t_2">
                <h1>Update Product in Database</h1> <br>
                <form id="forma2" name="frm" action="update.jsp">
                    <table>
                        <tr><td>Product ID</td><td> <input type="text" name="UPID"></td></tr>
                        <tr><td>Name</td><td> <input type="text" name="UPname"></td></tr>
                        <tr><td>Price</td><td>  <input type="text" name="UPprice"></td></tr>
                        <tr><td>Description</td><td>  <input type="text" name="UPdesc"></td></tr>
                        <tr><td>Brand</td><td>  <input type="text" name="UPbrand"></td></tr>
                        <tr><td>Product Category</td><td>  <input type="text" name="UPcat"></td></tr>
                        <tr><td>Product Quantity </td><td> <input type="text" name="UPQuant"></td></tr>
                    </table>
                    <%
                    UPID = request.getParameter("productsID");
                    UPname = request.getParameter("name");
                    UPprice = request.getParameter("price");
                    UPdesc = request.getParameter("description");
                    UPbrand = request.getParameter("brand");
                    UPcat = request.getParameter("category");
                    UPQuant = request.getParameter("quantity");
                    %>
                    <input type="submit" name="submit" value=" Submit ">
                </form>  
            </div>
        </div>
    </div>
</div>
</body>
</html>


