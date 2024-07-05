<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="user" scope="request" type="com.entity.User"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome!</title>
</head>
<body>
<h1>欢迎您！${user.name}</h1>
<p>  ${user.updateTime} 登陆成功！</p>
</body>
</html>
