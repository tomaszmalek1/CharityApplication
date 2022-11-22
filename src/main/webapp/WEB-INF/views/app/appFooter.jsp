<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<footer>
    <div class="contact">
        <h2>Skontaktuj się z nami</h2>
        <h3>Formularz kontaktowy</h3>
        <form:form method="post" action="/userSendEmail" class="form--contact">
            <sec:authorize access="isAuthenticated()">
            <div class="form-group form-group--50"><input type="text" name="name" placeholder="<sec:authentication property="principal.name"/>"/></div>
            <div class="form-group form-group--50"><input type="text" name="surname" placeholder="<sec:authentication property="principal.lastName"/>"/></div>
            <div class="form-group form-group--50"><input type="email" name="email" placeholder="<sec:authentication property="principal.email"/>"/></div>

            <div class="form-group form-group--50"><textarea name="text" placeholder="Wiadomość" rows="1"></textarea></div>

            <button class="btn" type="submit">Wyślij</button>
            </sec:authorize>
        </form:form>
        <br>
        <div style="color: red; font-size: large; text-align: center">${messageError}</div>
    </div>
    <div class="bottom-line">
        <span class="bottom-line--copy">Copyright &copy; 2018</span>
        <div class="bottom-line--icons">
            <a href="#" class="btn btn--small"><img src="<c:url value="resources/images/icon-facebook.svg"/>"/></a>
            <a href="#" class="btn btn--small"><img src="<c:url value="resources/images/icon-instagram.svg"/>"/></a>
        </div>
    </div>
</footer>
<script src="<c:url value="resources/js/app.js"/>"></script>
</body>
</html>
