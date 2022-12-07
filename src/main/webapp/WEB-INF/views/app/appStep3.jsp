<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="appHeader.jsp"/>

<section class="form--steps">
    <div class="form--steps-instructions">
        <div class="form--steps-container">
            <h3>Ważne!</h3>
            <p data-step="1" class="active">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="2">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="3">
                Wybierz jedną, do
                której trafi Twoja przesyłka.
            </p>
            <p data-step="4">Podaj adres oraz termin odbioru rzeczy.</p>
        </div>
    </div>
    <div class="form--steps-container">
        <form:form action="/step3" method="post" modelAttribute="donation">
            <div data-step="3" class="active">
                <div data-step="3">
                    <h3>Wybierz organizacje, której chcesz pomóc:</h3>
                    <c:forEach var="institution" items="${institutionList}">
                        <div class="form-group form-group--checkbox">
                            <label>
                                <form:radiobutton path="institution" value="${institution.id}"/>
                                <span class="checkbox radio"></span>
                                <span class="description">
                              <div class="title">Fundacja “${institution.name}”</div>
                              <div class="subtitle">
                                Cel i misja: ${institution.description}.
                              </div>
                            </span>
                            </label>
                        </div>
                    </c:forEach>
                    <form:errors path="institution" cssStyle="color: red; font-size: large"/>
                    <div class="form-group form-group--buttons">
                        <button type="button" class="btn prev-step">Wstecz</button>
                        <button type="submit" class="btn">Dalej</button>
                    </div>
                </div>
            </div>
        </form:form>
    </div>
</section>
<jsp:include page="appFooter.jsp"/>