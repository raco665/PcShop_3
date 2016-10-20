
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="WEB-INF/jsp/header.html"%>
        <form name="form" method="post" action="check.jsp" onsubmit="javascript:return validate();">

            <div id="login" align="center">
                <h1>LOGIN</h1>
                <table>
                    <tr><td class="login1">Username:</td><td><input type="text" name="user"></td></tr>
                    <tr><td class="login1">Password:</td><td><input type="password" name="pass"></td></tr>
                    <tr><td></td><td><input type="submit" value="Submit"></td></tr>
                </table>
            </div>
        </form>
</html>