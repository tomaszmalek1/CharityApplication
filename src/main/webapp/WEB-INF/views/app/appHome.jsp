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
        <div class="form--steps-counter">Krok <span>1</span>/4</div>

        <%--@elvariable id="donation" type=""--%>
        <form:form action="/home" method="post" modelAttribute="donation">
            <!-- STEP 1: class .active is switching steps -->
            <div data-step="1" class="active">
                <h3>Zaznacz co chcesz oddać:</h3>
                <c:forEach items="${categories}" var="category">
                    <div class="form-group form-group--checkbox">
                        <label>
                            <form:checkbox path="categoryList" value="${category.id}"/>
                            <span class="checkbox"></span>
                            <span class="description">${category.name}</span>
                        </label>
                    </div>
                </c:forEach>
                <form:errors path="categoryList" cssStyle="color: red; font-size: large"/>
                <div class="form-group form-group--buttons">
                    <button type="submit" class="btn next-step">Dalej</button>
                </div>
            </div>

            <!-- STEP 2 -->
            <div data-step="2">
                <h3>Podaj liczbę 60l worków, w które spakowałeś/aś rzeczy:</h3>

                <div class="form-group form-group--inline">
                    <label>
                        Liczba 60l worków:
                        <form:input type="number" name="bags" step="1" min="1" path="quantity"/><form:errors
                            path="quantity" cssStyle="color: red"/>
                    </label>
                </div>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>


            <!-- STEP 4 -->
            <div data-step="3">
                <h3>Wybierz organizacje, której chcesz pomóc:</h3>
                <c:forEach var="institution" items="${institutions}">
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
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>

            <!-- STEP 5 -->
            <div data-step="4">
                <h3>Podaj adres oraz termin odbioru rzecz przez kuriera:</h3>

                <div class="form-section form-section--columns">
                    <div class="form-section--column">
                        <h4>Adres odbioru</h4>
                        <div class="form-group form-group--inline">
                            <label> Ulica <form:input type="text" name="street" path="street"/></label>
                            <form:errors path="street" cssClass="errors" cssStyle="color: red"/>
                        </div>
                        <div class="form-group form-group--inline">
                            <label> Miasto <form:input type="text" name="city" path="city"/></label>
                            <form:errors path="city" cssStyle="color: red"/>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                Kod pocztowy <form:input type="text" name="postcode" path="zipCode"/></label>
                            <form:errors path="zipCode" cssClass="errors" cssStyle="color: red"/>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                Numer telefonu <form:input type="phone" name="phone" path="phoneNumber"/></label>
                            <form:errors path="phoneNumber" cssClass="errors" cssStyle="color: red"/>
                        </div>
                    </div>

                    <div class="form-section--column">
                        <h4>Termin odbioru</h4>
                        <div class="form-group form-group--inline">
                            <label> Data <form:input type="date" name="data" path="pickUpDate"/></label>
                            <form:errors path="pickUpDate" cssClass="errors" cssStyle="color: red"/>
                        </div>

                        <div class="form-group form-group--inline">
                            <label> Godzina <form:input type="time" name="time" path="pickUpTime"/></label>
                            <form:errors path="pickUpTime" cssClass="errors" cssStyle="color: red"/>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                Uwagi dla kuriera
                                <form:textarea name="more_info" rows="5" path="pickUpComment"/></label>
                            <form:errors path="pickUpComment" cssClass="errors" cssStyle="color: red"/>
                        </div>
                    </div>
                </div>
                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="submit" class="btn">Dalej</button>
                </div>
            </div>
        </form:form>
    </div>
</section>
<jsp:include page="appFooter.jsp"/>