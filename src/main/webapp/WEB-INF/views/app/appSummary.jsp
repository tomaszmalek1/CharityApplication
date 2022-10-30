<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="appHeader.jsp"/>

<section class="form--steps">
    <div class="form--steps-container">
        <div class="form--steps-counter" hidden><span></span></div>
        <form action="/summary" method="post">
            <div data-step="1">
                <h3>Podsumowanie Twojej darowizny</h3>
                <div class="summary">
                    <div class="form-section">
                        <h4>Oddajesz:</h4>
                        <ul>
                            <li>
                                <span class="icon icon-bag"></span>
                                <span class="summary--text">${bags} worki w kategorii:<br><br>
                                    <c:forEach items="${categories}" var="category" varStatus="count">
                                        ${category.name}<br>
                                    </c:forEach></span>
                            </li>

                            <li>
                                <span class="icon icon-hand"></span>
                                <span class="summary--text">Dla fundacji "${institution.name}"</span>
                            </li>
                        </ul>
                    </div>

                    <div class="form-section form-section--columns">
                        <div class="form-section--column">
                            <h4>Adres odbioru:</h4>
                            <ul>
                                <li>${street}</li>
                                <li>${city}</li>
                                <li>${postCode}</li>
                                <li>${phone}</li>
                            </ul>
                        </div>

                        <div class="form-section--column">
                            <h4>Termin odbioru:</h4>
                            <ul>
                                <li>${data}</li>
                                <li>${time}</li>
                                <li>${moreInfo}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="form-group form-group--buttons">
<%--                    <button type="button" class="btn prev-step">Wstecz</button>--%>
                    <button type="submit" class="btn">Potwierdzam</button>
                </div>
            </div>
        </form>
    </div>
</section>
<jsp:include page="appFooter.jsp"/>