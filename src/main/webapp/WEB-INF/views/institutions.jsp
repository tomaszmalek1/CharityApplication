<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="header.jsp"/>

<section class="help">
    <h2>Komu pomagamy?</h2>

    <!-- SLIDE 1 -->
    <div class="help--slides active" data-id="1">
        <p>W naszej bazie znajdziesz listę zweryfikowanych Fundacji, z którymi współpracujemy.
            Możesz sprawdzić czym się zajmują.</p>

        <ul class="help--slides-items">
            <c:forEach var="institution" items="${institutionList}" varStatus="count">
                <c:choose>
                    <c:when test="${count.count %2== '1'}">
                        <li>
                        <div class="col">
                            <div class="title">Fundacja "${institution.name}"</div>
                            <div class="subtitle">Cel i misja: ${institution.description}.</div>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="col">
                            <div class="title">Fundacja "${institution.name}"</div>
                            <div class="subtitle">Cel i misja: ${institution.description}.</div>
                        </div>
                        </li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </ul>
    </div>
</section>

<jsp:include page="footer.jsp"/>