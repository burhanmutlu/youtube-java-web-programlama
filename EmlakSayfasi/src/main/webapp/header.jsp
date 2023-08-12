<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="tr">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Emlak Sayfası</title>
  <link rel="stylesheet" type="text/css" href="assets/css/styles.css" />
</head>
<body>

<div class="menu-div">
  <div class="menu-ul">
    <div class="menu-site-name">
      <h2>Emlak Sayfası</h2>
    </div>
    <div class="menu-li">
      <a href="index.jsp">Ana Sayfa</a>
    </div>
    <c:if test="${empty user}" >
      <div class="menu-li">
        <a href="userSignUp.jsp">Üye Ol</a>
      </div>
      <div class="menu-li">
        <a href="userSignIn.jsp">Giriş Yap</a>
      </div>
    </c:if>
    <c:if test="${not empty user}">
      <div class="menu-li">
        <a href="userLogout">Çıkış Yap</a>
      </div>
      <div class="menu-li">
        <a href="/">Hesabım</a>
      </div>
      <div class="menu-li">
        <h5 style="color: red" >
          Hoş geldin  ${user.getName()}
                      ${user.getSurname()}
                      ${user.getId()}
                      ${user.getEmail()}
                      ${user.getPassword()}
        </h5>
      </div>
    </c:if>


  </div>
</div>



