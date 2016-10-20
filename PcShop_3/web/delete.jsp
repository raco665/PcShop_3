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
                <div id="t_3">
                <h1>Delete Product from Database</h1> <br>
                <form id="forma3" name="frm" action="deleteRecord.jsp">
                    <table>
                        <tr><td >Enter Product ID To Delete</td><td><input type="text" name="DPID"></td></tr>
                    </table>
                    <input type="submit" name="submit" value=" Submit ">
                </form>
            </div>
        </div>
</html>

