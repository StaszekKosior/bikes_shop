<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/fragments/header.jsp"/>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/fragments/sideBarMenu.jsp"/>


<div class="m-4 p-3 width-medium">
    <div class="dashboard-content border-dashed p-3 m-4 view-height">
        <div class="row border-bottom border-3 p-1 m-1">
            <div class="col noPadding"><h3 class="color-header text-uppercase">NASZE ROWERY</h3></div>

        </div>
        <table class="table border-bottom schedules-content">
            <thead>
            <tr class="d-flex text-color-darker">
                <th scope="col" class="col-2">NAZWA</th>
                <th scope="col" class="col-1">CENA</th>
                <th scope="col" class="col-7">OPIS</th>
                <th scope="col" class="col-2 center">AKCJE</th>
            </tr>
            </thead>
            <tbody class="text-color-lighter">

            <c:forEach var="item" items="${accessories}">
                <tr class="d-flex">
                    <th scope="row" class="col-2">${item.producer}, model: ${item.model} </th>
                    <td class="col-1">${item.price}</td>
                    <td class="col-7">${item.description}</td>
                    <td class="col-2 d-flex align-items-center justify-content-center flex-wrap">
                        <a href="<c:url value="/accessories/details/${item.id}"/>"
                           class="btn btn-info rounded-0 text-light m-1">Szczegóły</a>
                        <a href="<c:url value="/admin/bikes/edit?id=${item.id}"/>"
                           class="btn btn-info rounded-0 text-light m-1">Edytuj</a>
                        <a href="<c:url value="/admin/bikes/deleteConfirm?id=${item.id}"/>"
                           class="btn btn-info rounded-0 text-light m-1">Usuń</a>
                        <a href="<c:url value="/?id=${recipe.id}"/>"
                           class="btn btn-warning rounded-0 text-light m-1">Dodaj do koszyka</a>
                    </td>
                <tr/>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>


<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/fragments/footer.jsp"/>
