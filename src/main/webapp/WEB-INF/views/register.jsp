<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="header.jsp"/>
<section class="login-page">
    <h2>Załóż konto</h2>
    <%--@elvariable id="user" type=""--%>
    <form:form method="post" modelAttribute="user">
        <div class="form-group">
            <form:input path="name" type="text" name="name" placeholder="Imię"/>
            <form:errors path="name" cssClass="errors"/>
        </div>
        <div class="form-group">
            <form:input path="lastName" type="text" name="lastName" placeholder="Nazwisko"/>
            <form:errors path="lastName" cssClass="errors"/>
        </div>
        <div class="form-group">
            <form:input path="email" type="email" name="email" placeholder="Email"/>
            <form:errors path="email" cssClass="errors"/>
        </div>
        <div class="form-group">
            <form:input path="password" type="password" name="password" placeholder="Hasło"/>
            <form:errors path="password" cssClass="errors"/>
        </div>
        <div class="form-group">
            <form:input path="password2" type="password" name="password2" placeholder="Powtórz hasło"/>
            <form:errors path="password2" cssClass="errors"/>
        </div>
        <div class="form-group form-group--buttons">
            <a href="/login" class="btn btn--without-border">Zaloguj się</a>
            <button class="btn" type="submit">Załóż konto</button>
        </div>
    </form:form>
</section>

<jsp:include page="footer.jsp"/>


