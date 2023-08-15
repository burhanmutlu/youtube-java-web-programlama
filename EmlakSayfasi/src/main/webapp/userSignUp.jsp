<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp" />

<form class="form" method="post" action="userSignUp" >
    <table>
        <tr>
            <td>Ad: </td>
            <td><input type="text" name="userName"></td>
        </tr>
        <tr>
            <td>Soyad: </td>
            <td><input type="text" name="userSurname"></td>
        </tr>
        <tr>
            <td>Email: </td>
            <td><input type="email" name="email"></td>
        </tr>
        <tr>
            <td>Şifre: </td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td>
                <input class="button" type="submit" value="Kayıt Ol">
            </td>
        </tr>
    </table>

    <div>
        <span>Zaten Üye misiniz? </span><a href="userSignIn.jsp">Giriş Yapın</a>
    </div>

</form>
<div>
    <c:if test="${not empty userSignUpErrorMessage}" >
        <b>${userSignUpErrorMessage}</b>
    </c:if>
</div>



<jsp:include page="footer.jsp" />