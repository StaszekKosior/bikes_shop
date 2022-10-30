<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href='<c:url value="/css/style.css"/>' rel="stylesheet" type="text/css">

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/fragments/header.jsp"/>

<section class="dashboard-section">
    <div class="container pt-4 pb-4">
        <div class="border-dashed view-height">
            <div class="container w-25">
                <!-- fix action, method -->
                <!-- add name attribute for all inputs -->
                <form:form method="post" modelAttribute="user">
                    <h1 class="text-color-darker">Rejestracja</h1>
                    <div class="form-group">
                        <form:label path="firstName"></form:label>
                        <form:input type="text" path="firstName" class="form-control" placeholder="podaj imię"/>
                    </div>
                    <div class="form-group">
                        <form:label path="lastName"></form:label>
                        <form:input type="text" path="lastName" class="form-control" placeholder="podaj nazwisko"/>
                    </div>
                    <div class="form-group">
                        <form:label path="email"></form:label>
                        <form:input type="email" path="email" class="form-control" placeholder="podaj email"/>
                    </div>
                    <div class="form-group">
                        <form:label path="password"></form:label>
                        <form:input type="password" path="password" class="form-control" placeholder="podaj hasło"/>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="repassword" name="repassword"
                               placeholder="powtórz hasło">
                    </div>
<%--                    <button class="btn btn-color rounded-0" type="submit">Zarejestruj</button>--%>
                    <form:button class="btn btn-color rounded-0">Zapisz</form:button>
                </form:form>
            </div>
        </div>
    </div>
</section>


<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/fragments/footer.jsp"/>