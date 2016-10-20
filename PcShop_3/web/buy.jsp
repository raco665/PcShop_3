
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="WEB-INF/jsp/header.html"%>


<form name="frm" action="updatOrder.jsp">
    <div align="center">
        <h1>OREDER PRUDUCT</h1>
        <table>
            <!--<tr><td class="login1">Customer ID</td><td> <input type="text" name="CUSTID"></td></tr>-->
            <tr><td class="login1">Customer Name </td><td> <input type="text" name="CUSTNAME"></td></tr>
            <tr><td class="login1">Customer Phone </td><td> <input type="text" name="CUSTPHONE"></td></tr>
            <tr><td class="login1">Customer Email</td><td>  <input type="text" name="CUSTMAIL"></td></tr>
            <tr><td class="login1">Customer Address</td><td>  <input type="text" name="CUSTADDR"></td></tr>
            <tr><td class="login1">Product ID</td><td>  <input type="text" name="OPID"></td></tr>
        </table>
        <input type="submit" name="submit" value=" Submit ">
    </div>
</form>
</body>
</html>
