<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Begin Body -->
<div class="container">
    <div class="row">
        <div class="col col-sm-9">
            <div class="panel">
                <h1>User Login</h1>
                
               <%--  <p>${param.message}</p>


                <c:if test="${not empty error}">
                    <div class="error">${error}</div>
                </c:if>
                <c:if test="${not empty msg}">
                    <div class="msg">${msg}</div>
                </c:if> --%>

                <%-- <form name='loginForm'
                      action="<c:url value='/j_spring_security_check' />" method='POST'> --%>
                   <div class="error">${error}</div>
                   <form:form name='loginForm' modelAttribute="loginAttribute">

                    <table class="loginTable">                                                                                                                                        
                        <tr>
                            <td style="width: 100px;">User:</td>
                            <td><!-- <input class="form-control" type='text' name='username'> --><form:input path="username" type="text" /></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><!-- <input class="form-control" type='password' name='password' /> --><form:input path="password" type="password" /></td>
                        </tr>
                        <tr>
                            <td colspan='2'><input class="btn btn-primary btn-danger" name="submit" type="submit"
                                                   value="Submit" /></td>
                        </tr>
                    </table>

                  

                </form:form>
                <hr>
            </div>
        </div> 
    </div>
</div>
                   
</body>
</html>