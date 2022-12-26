<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value="resources/css/style.css"/>" />
</head>
<body>
<header class="header--form-page">
    <nav class="container container--70">
        <ul class="nav--actions">
            <li class="logged-user">
                <sec:authorize access="isAuthenticated()">
                    Witaj <sec:authentication property="principal.name"/>
                </sec:authorize>
                <ul class="dropdown">
                    <li><a href="#">Profil</a></li>
                    <li><a href="#">Moje zbiórki</a></li>
                    <li><form action="<c:url value="/logout"/>" method="post">
                        <input class="fa fa-id-badge" type="submit" value="Wyloguj">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form></li>
                </ul>
            </li>
        </ul>

        <ul>
            <li><a href="/home" class="btn btn--without-border active">Start</a></li>
            <li><a href="/appSteps" class="btn btn--without-border">O co chodzi?</a></li>
            <li><a href="/appAbout" class="btn btn--without-border">O nas</a></li>
            <li><a href="/appInstitutions" class="btn btn--without-border">Fundacje i organizacje</a></li>
            <li><a href="/stepsForm" class="btn btn--without-border">Przekaż dary</a></li>
            <li><a href="/appContact" class="btn btn--without-border">Kontakt</a></li>
        </ul>
    </nav>

    <div class="slogan container container--90">
        <h2>
            Ups... Coś poszło nie tak, spróbuj ponownie.
        </h2>
    </div>
</header>
<jsp:include page="appFooter.jsp"/>
<script src="<c:url value="resources/js/app.js"/>"></script>
</body>
</html>
