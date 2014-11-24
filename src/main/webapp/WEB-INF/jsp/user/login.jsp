<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page session="false" %> 
<c:set var="cp" value="${pageContext.request.contextPath}" scope="request"></c:set>
<html>
<head>
	<jsp:include page="../include/common_include.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../include/menu_include.jsp"></jsp:include>
<div class="content" style="width:300px;">
	<c:if test="${!empty mesg}">
		<div class="alert alert-danger" role="alert">${mesg}</div>
	</c:if>
	<form class="form-signin" name="user" role="form" method="post" action="${cp}/admin/login.do">
        <div class="h2 form-signin-heading">Please sign in</div>
        <label for="inputUserId" class="sr-only">UserId</label>
        <input type="text" name="userId" id="inputUserId" class="form-control" placeholder="UserId" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <!-- 
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
         -->
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>
</div>
<jsp:include page="../include/common_bottom.jsp"></jsp:include>
</body>
</html>