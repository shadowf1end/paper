<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="home">
    <div class="row row1">
        <div class="col-md-12">
            <br>
            <p>想读 · · · ( <a href="">${fn:length(collections[0])}本</a> )</p>
        </div>
        <c:forEach items="${collections[0]}" var="c">
            <div class="col-md-2" style="height: 180px"><a href="${pageContext.request.contextPath}/subject/${c.value.bookId}">
                <img src="${c.value.image}"></a>
            </div>
        </c:forEach>
    </div>

    <div class="row row2">
        <div class="col-md-12">
            <br>
            <p>在读 · · · ( <a href="">${fn:length(collections[1])}本</a> )</p>
        </div>
        <c:forEach items="${collections[1]}" var="c">
            <div class="col-md-2" style="height: 180px"><a href="${pageContext.request.contextPath}/subject/${c.value.bookId}">
                <img src="${c.value.image}"></a>
            </div>
        </c:forEach>
    </div>

    <div class="row row3">
        <div class="col-md-12">
            <br>
            <p>读过 · · · ( <a href="">${fn:length(collections[2])}本</a> )</p>
        </div>
        <c:forEach items="${collections[2]}" var="c">
            <div class="col-md-2" style="height: 180px"><a href="${pageContext.request.contextPath}/subject/${c.value.bookId}">
                <img src="${c.value.image}"></a>
            </div>
        </c:forEach>
    </div>
</div>

<div class="collections">
    <c:forEach items="${collections}" var="collection">
        <c:forEach items="${collection}" var="c">
            <div class="row top50_row">
                <br/>
                <div class="col-md-2">
                    <a href="${pageContext.request.contextPath}/subject/${c.value.bookId}"><img src="${c.value.image}"></a>
                    <p></p>
                </div>
                <div class="col-md-10">
                    对 <a href="${pageContext.request.contextPath}/subject/${c.value.bookId}">${c.value.title}</a> 评价：
                    <p></p>
                    <p><span id="star" style="background-position: 0 ${(c.key.rating-5)*22}px"></span>
                        &nbsp${fn:substring(c.key.time,0,10)}</p>
                    <p id="summary">${c.key.comment}</p>
                </div>
            </div>
        </c:forEach>
    </c:forEach>
</div>