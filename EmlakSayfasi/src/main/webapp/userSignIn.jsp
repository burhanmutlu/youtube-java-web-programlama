<%--
  Created by IntelliJ IDEA.
  User: Burhan Mutlu
  Date: 10.08.2023
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp" />

<form class="form" method="post" action="userSignIn">
  <table>
    <tr>
      <td id="email"><input type="email" name="email" placeholder="E-posta" onblur="formControl()"></td>
    </tr>
    <tr>
      <td>
        <div class="inputPassword">
          <div id="hideShowPass" onclick="hideShowPassword()" >
            <img id="eyePass" width="24px" height="24px" src="assets/images/hidden.png" />
          </div>
          <div>
            <input id="password" type="password" name="password" placeholder="Şifre" onblur="formControl()">
          </div>
        </div>
      </td>
    </tr>
    <tr>
      <td>
        <input class="button" type="submit" value="Giriş Yap">
      </td>
    </tr>
  </table><br>
  <div>
    <a href="">Şifremi Unuttum</a>
  </div>

  <div>
    <span>Üye Değilseniz Hemen </span><a href="userSignUp.jsp">Üye Ol</a>
  </div>
</form>


  <c:if test="${not empty userSignInErrorMessage}" >
    <b>${userSignInErrorMessage}</b>
  </c:if>
</div>

<jsp:include page="footer.jsp" />
