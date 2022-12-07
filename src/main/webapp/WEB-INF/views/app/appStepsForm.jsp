<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<jsp:include page="appHeader.jsp"/>--%>

<%--<section class="form--steps">--%>
<%--    <div class="form--steps-instructions">--%>
<%--        <div class="form--steps-container">--%>
<%--            <h3>Ważne!</h3>--%>
<%--            <p data-step="1" class="active">--%>
<%--                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy--%>
<%--                wiedzieć komu najlepiej je przekazać.--%>
<%--            </p>--%>
<%--            <p data-step="2">--%>
<%--                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy--%>
<%--                wiedzieć komu najlepiej je przekazać.--%>
<%--            </p>--%>
<%--            <p data-step="3">--%>
<%--                Wybierz jedną, do--%>
<%--                której trafi Twoja przesyłka.--%>
<%--            </p>--%>
<%--            <p data-step="4">Podaj adres oraz termin odbioru rzeczy.</p>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <div class="form--steps-container">--%>
<%--        <div class="form--steps-counter">Krok <span>1</span>/4</div>--%>

<%--        <form:form method="post" modelAttribute="donation">--%>
<%--            <!-- STEP 1: class .active is switching steps -->--%>
<%--            <div data-step="1" class="active">--%>
<%--                <h3>Zaznacz co chcesz oddać:</h3>--%>


<%--&lt;%&ndash;                <div class="form-group form-group--checkbox">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <input&ndash;%&gt;--%>
<%--&lt;%&ndash;                                type="checkbox"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                name="categories"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                value="clothes-to-use"&ndash;%&gt;--%>
<%--&lt;%&ndash;                        />&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <span class="checkbox"></span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <span class="description"&ndash;%&gt;--%>
<%--&lt;%&ndash;                        >ubrania, które nadają się do ponownego użycia</span&ndash;%&gt;--%>
<%--&lt;%&ndash;                        >&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>


<%--                <c:forEach items="${categories}" var="category">--%>
<%--                    <div class="form-group form-group--checkbox">--%>
<%--                        <label>--%>
<%--                            <form:checkbox path="categoryList" class="example" value="${category.id}"/>--%>
<%--&lt;%&ndash;                            <input type="checkbox" path="categoryList" value="${category.id}" name="categories"/>&ndash;%&gt;--%>
<%--                            <span class="checkbox"></span>--%>
<%--                            <span class="description categoryName" value="${category.name}">${category.name}</span>--%>
<%--                        </label>--%>
<%--                    </div>--%>
<%--                </c:forEach>--%>
<%--                <div class="form-group form-group--buttons">--%>
<%--                    <button type="button" class="btn next-step">Dalej</button>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <!-- STEP 2 -->--%>
<%--            <div data-step="2">--%>
<%--                <h3>Podaj liczbę 60l worków, w które spakowałeś/aś rzeczy:</h3>--%>

<%--                <div class="form-group form-group--inline">--%>
<%--                    <label>--%>
<%--                        Liczba 60l worków:--%>
<%--                        <form:input type="number" path="quantity" step="1" min="1"/>--%>
<%--                    </label>--%>
<%--                </div>--%>

<%--                <div class="form-group form-group--buttons">--%>
<%--                    <button type="button" class="btn prev-step">Wstecz</button>--%>
<%--                    <button type="button" class="btn next-step">Dalej</button>--%>
<%--                </div>--%>
<%--            </div>--%>


<%--            <!-- STEP 4 -->--%>
<%--            <div data-step="3">--%>
<%--                <h3>Wybierz organizacje, której chcesz pomóc:</h3>--%>

<%--                <div class="form-group form-group--checkbox">--%>
<%--                    <label>--%>
<%--                        <input type="radio" name="organization" value="old"/>--%>
<%--                        <span class="checkbox radio"></span>--%>
<%--                        <span class="description">--%>
<%--                  <div class="title">Fundacja “Bez domu”</div>--%>
<%--                  <div class="subtitle">--%>
<%--                    Cel i misja: Pomoc dla osób nie posiadających miejsca--%>
<%--                    zamieszkania--%>
<%--                  </div>--%>
<%--                </span>--%>
<%--                    </label>--%>
<%--                </div>--%>

<%--                <div class="form-group form-group--checkbox">--%>
<%--                    <label>--%>
<%--                        <input type="radio" name="organization" value="old"/>--%>
<%--                        <span class="checkbox radio"></span>--%>
<%--                        <span class="description">--%>
<%--                  <div class="title">Fundacja “Dla dzieci"</div>--%>
<%--                  <div class="subtitle">--%>
<%--                    Cel i misja: Pomoc osobom znajdującym się w trudnej sytuacji--%>
<%--                    życiowej.--%>
<%--                  </div>--%>
<%--                </span>--%>
<%--                    </label>--%>
<%--                </div>--%>

<%--                <div class="form-group form-group--buttons">--%>
<%--                    <button type="button" class="btn prev-step">Wstecz</button>--%>
<%--                    <button type="button" class="btn next-step">Dalej</button>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <!-- STEP 5 -->--%>
<%--            <div data-step="4">--%>
<%--                <h3>Podaj adres oraz termin odbioru rzecz przez kuriera:</h3>--%>

<%--                <div class="form-section form-section--columns">--%>
<%--                    <div class="form-section--column">--%>
<%--                        <h4>Adres odbioru</h4>--%>
<%--                        <div class="form-group form-group--inline">--%>
<%--                            <label> Ulica <input type="text" name="address"/> </label>--%>
<%--                        </div>--%>

<%--                        <div class="form-group form-group--inline">--%>
<%--                            <label> Miasto <input type="text" name="city"/> </label>--%>
<%--                        </div>--%>

<%--                        <div class="form-group form-group--inline">--%>
<%--                            <label>--%>
<%--                                Kod pocztowy <input type="text" name="postcode"/>--%>
<%--                            </label>--%>
<%--                        </div>--%>

<%--                        <div class="form-group form-group--inline">--%>
<%--                            <label>--%>
<%--                                Numer telefonu <input type="phone" name="phone"/>--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div class="form-section--column">--%>
<%--                        <h4>Termin odbioru</h4>--%>
<%--                        <div class="form-group form-group--inline">--%>
<%--                            <label> Data <input type="date" name="data"/> </label>--%>
<%--                        </div>--%>

<%--                        <div class="form-group form-group--inline">--%>
<%--                            <label> Godzina <input type="time" name="time"/> </label>--%>
<%--                        </div>--%>

<%--                        <div class="form-group form-group--inline">--%>
<%--                            <label>--%>
<%--                                Uwagi dla kuriera--%>
<%--                                <textarea name="more_info" rows="5"></textarea>--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="form-group form-group--buttons">--%>
<%--                    <button type="button" class="btn prev-step">Wstecz</button>--%>
<%--                    <button type="button" class="btn next-step">Dalej</button>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <!-- STEP 6 -->--%>
<%--            <div data-step="5">--%>
<%--                <h3>Podsumowanie Twojej darowizny</h3>--%>

<%--                <div class="summary">--%>
<%--                    <div class="form-section">--%>
<%--                        <h4>Oddajesz:</h4>--%>
<%--                        <ul>--%>
<%--                            <li>--%>
<%--                                <span class="icon icon-bag"></span>--%>
<%--                                <span class="summary--text"--%>
<%--                                >4 worki ubrań w dobrym stanie dla dzieci</span--%>
<%--                                >--%>
<%--                            </li>--%>

<%--                            <li>--%>
<%--                                <span class="icon icon-hand"></span>--%>
<%--                                <span class="summary--text"--%>
<%--                                >Dla fundacji "Mam marzenie" w Warszawie</span--%>
<%--                                >--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>

<%--                    <div class="form-section form-section--columns">--%>
<%--                        <div class="form-section--column">--%>
<%--                            <h4>Adres odbioru:</h4>--%>
<%--                            <ul>--%>
<%--                                <li>Prosta 51</li>--%>
<%--                                <li>Warszawa</li>--%>
<%--                                <li>99-098</li>--%>
<%--                                <li>123 456 789</li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>

<%--                        <div class="form-section--column">--%>
<%--                            <h4>Termin odbioru:</h4>--%>
<%--                            <ul>--%>
<%--                                <li>13/12/2018</li>--%>
<%--                                <li>15:40</li>--%>
<%--                                <li>Brak uwag</li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="form-group form-group--buttons">--%>
<%--                    <button type="button" class="btn prev-step">Wstecz</button>--%>
<%--                    <button type="submit" class="btn">Potwierdzam</button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </form:form>--%>
<%--    </div>--%>
<%--</section>--%>

<%--<jsp:include page="appFooter.jsp"/>--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value="resources/css/style.css"/>"/>
</head>
<body>
<header class="header--main-page">

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

            <form:form method="post" modelAttribute="donation">
                <!-- STEP 1: class .active is switching steps -->
                <div data-step="1" class="active">
                    <h3>Zaznacz co chcesz oddać:</h3>
                    <c:forEach items="${categories}" var="category">
                        <div class="form-group form-group--checkbox">
                            <label>
                                <span class="checkbox checkboxMargin"></span>
                                <form:checkbox
                                        cssClass="things ${category.name}"
                                        value="${category}"
                                        path="categoryList"
                                        label="${category.name}" onclick="noResult"/>
                            </label>
                        </div>
                    </c:forEach>
                    <div class="form-group form-group--buttons">
                        <button type="button" class="btn next-step">Dalej</button>
                    </div>
                </div>

                <!-- STEP 2 -->
                <div data-step="2">
                    <h3>Podaj liczbę 60l worków, w które spakowałeś/aś rzeczy:</h3>

                    <div class="form-group form-group--inline">
                        <label>
                            Liczba 60l worków:
                            <form:input type="number" step="1" min="1" default="1" path="quantity" cssClass="quantity"/>
                        </label>
                    </div>

                    <div class="form-group form-group--buttons">
                        <button type="button" class="btn prev-step">Wstecz</button>
                        <button type="button" class="btn next-step">Dalej</button>
                    </div>
                </div>


                <!-- STEP 3 -->
                <div data-step="3">
                    <h3>Wybierz organizacje, której chcesz pomóc:</h3>

                    <c:forEach items="${institutionList}" var="inst">
                        <div class="form-group form-group--checkbox">
                            <label>
                                <form:radiobutton path="institution" cssClass="institution ${inst.name}"
                                                  value="${inst}"/>
                                <span class="checkbox radio"></span>
                                <span class="description">
                  <div class="title">Fundacja "${inst.name}"</div>
                  <div class="subtitle">
                    Cel i misja: ${inst.description}.
                  </div>
                </span>
                            </label>
                        </div>
                    </c:forEach>

                    <div class="form-group form-group--buttons">
                        <button type="button" class="btn prev-step">Wstecz</button>
                        <button type="button" class="btn next-step">Dalej</button>
                    </div>
                </div>

                <!-- STEP 4 -->
                <div data-step="4">
                    <h3>Podaj adres oraz termin odbioru rzecz przez kuriera:</h3>

                    <div class="form-section form-section--columns">
                        <div class="form-section--column">
                            <h4>Adres odbioru</h4>
                            <div class="form-group form-group--inline">
                                <label> Ulica <form:input path="street" cssClass="street"/> </label>
                            </div>

                            <div class="form-group form-group--inline">
                                <label> Miasto <form:input path="city" cssClass="city"/> </label>
                            </div>

                            <div class="form-group form-group--inline">
                                <label>
                                    Kod pocztowy <form:input path="zipCode" cssClass="zipCode"/>
                                </label>
                            </div>
                            <div class="form-group form-group--inline">
                                <label>
                                    Numer telefonu <form:input path="phoneNumber" cssClass="phoneNumber"/>
                                </label>
                            </div>

                        </div>

                        <div class="form-section--column">
                            <h4>Termin odbioru</h4>
                            <div class="form-group form-group--inline">
                                <label> Data <form:input type="date" cssClass="pickupdate" path="pickUpDate"/> </label>
                            </div>

                            <div class="form-group form-group--inline">
                                <label> Godzina <form:input type="time" cssClass="pickuptime" path="pickUpTime"/> </label>
                            </div>

                            <div class="form-group form-group--inline">
                                <label>
                                    Uwagi dla kuriera
                                    <form:textarea cssClass="pickupcomment" rows="5" path="pickUpComment"/>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group form-group--buttons">
                        <button type="button" class="btn prev-step">Wstecz</button>
                        <button type="button" class="btn next-step summaryBtn">Dalej</button>
                    </div>
                </div>

                <!-- STEP 6 -->
                <div data-step="5">
                    <h3>Podsumowanie Twojej darowizny</h3>

                    <div class="summary">
                        <div class="form-section">
                            <ul>
                                <li>
                                    <span class="icon icon-bag"></span>
                                    <span class="summary--text">

                                    <span>Ilość worków z rzeczami które oddajesz: </span>
                                    <span id="summaryQuantity"></span>
                                    <br>
                                    <span>Kategorie:</span>
                                    <br>
                                    <span id="summaryThings"></span>
                                </span>
                                </li>

                                <li>
                                    <span class="icon icon-hand"></span>
                                    <span class="summary--text"
                                    >Dla fundacji "<span id="summaryInstitution"></span>"</span
                                    >
                                </li>
                            </ul>
                        </div>

                        <div class="form-section form-section--columns">
                            <div class="form-section--column">
                                <h4>Adres odbioru:</h4>
                                <ul>
                                    <li><span id="summaryStreet"></span></li>
                                    <li><span id="summaryCity"></span></li>
                                    <li><span id="summaryZipcode"></span></li>
                                    <li><span id="summaryPhoneNumber"></span></li>
                                </ul>
                            </div>

                            <div class="form-section--column">
                                <h4>Termin odbioru:</h4>
                                <ul>
                                    <li><span id="summaryPickupDate"></span></li>
                                    <li><span id="summaryPickupTime"></span></li>
                                    <li><span id="summaryPickupComment"></span></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="form-group form-group--buttons">
                        <button type="button" class="btn prev-step">Wstecz</button>
                        <button type="submit" class="btn">Potwierdzam</button>
                    </div>
                </div>
            </form:form>
        </div>
    </section>

    <jsp:include page="appFooter.jsp"/>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="<c:url value="resources/js/app.js"/>"></script>
</body>
</html>