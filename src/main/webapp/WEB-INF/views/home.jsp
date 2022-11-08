<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href='<c:url value="/css/style.css"/>' rel="stylesheet" type="text/css">


<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/fragments/header.jsp"/>


<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/fragments/sied-bar-menu.jsp"/>

<c:choose>
    <c:when test="${empty loggedUser}">
        <div class="m-4 p-3 width-medium">
            <div class="dashboard-content border-dashed p-3 m-4 view-height">
                <div class="row border-bottom border-3 p-1 m-1">
                    <div class="col noPadding"><h3 class="color-header text-uppercase">Ostatnio dodany rower</h3></div>
                    <c:if test="${not empty lastAddedBike}">
                        <table class="table border-bottom schedules-content">
                            <tbody class="text-color-lighter">
                            <tr class="d-flex">
                                <th scope="row" class="col-2">${lastAddedBike.producer},
                                    model: ${lastAddedBike.model} </th>
                                <td class="col-1">${lastAddedBike.price} zł</td>
                                <td class="col-7">${lastAddedBike.description}</td>
                                <td class="col-2 d-flex align-items-center justify-content-center flex-wrap">
                                    <a href="<c:url value="/products/details/${lastAddedBike.id}"/>"
                                       class="btn btn-info rounded-0 text-light m-1">Szczegóły</a>
                                    <a href="<c:url value="/cart/addToCart/${lastAddedBike.id}/1"/>"
                                       class="btn btn-warning rounded-0 text-light m-1">Dodaj do koszyka</a>
                                </td>
                            <tr/>
                            </tbody>
                        </table>
                    </c:if>

                </div>
            </div>
        </div>
    </c:when>

    <c:otherwise>
        <div class="m-4 p-3 width-medium">
            <div class="dashboard-content border-dashed p-3 m-4 view-height">
                <div class="row border-bottom border-3 p-1 m-1">
                    <div class="col noPadding"><h3 class="color-header">Twoje ostatnie zamówienie</h3>
                    </div>
                    <c:choose>
                        <c:when test="${not empty lastOrder}">
                            <table class="table border-bottom schedules-content">
                                <thead>
                                <tr class="d-flex text-color-darker">
                                    <th scope="col" class="col-3">Produkt</th>
                                    <th scope="col" class="col-2">Ilość</th>

                                    <th scope="col" class="col-3 center">Szczegóły produktu</th>
                                </tr>
                                </thead>
                                <tbody class="text-color-lighter">
                                <c:forEach var="order" items="${lastOrder.productsMap}">
                                    <tr class="d-flex">
                                        <th scope="row" class="col-3">${order.key.producer},
                                            model: ${order.key.model} </th>
                                        <td class="col-2">${order.value}</td>
                                        <td>
                                            <a href="<c:url value="/products/details/${order.key.id}"/>"
                                               class="btn btn-info rounded-0 text-light m-1">Szczegóły</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </c:when>
                        <c:otherwise>
                            <div><h5 class="color-header">Nie złożył(e/a)ś jeszcze żadnego zamówienia</h5></div>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </c:otherwise>
</c:choose>

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/fragments/footer.jsp"/>





