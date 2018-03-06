<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./header.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet">
<div class="container">
    <h3>图书标签：${tag.tagName}</h3>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-8">
            <hr>
            <c:forEach var="book" items="${books}" varStatus="s">
                <div class="row top50_row">
                    <br/>
                    <div class="col-md-2">
                        <a href="${pageContext.request.contextPath}/subject/${book.key.bookId}"><img src="${book.key.image}"></a>
                    </div>
                    <div class="col-md-10">
                        <a href="${pageContext.request.contextPath}/subject/${book.key.bookId}" id="name">${book.key.title}</a>
                        <p></p>
                        <p id="detail">${book.key.authors} ${book.key.translators} ${book.key.publisher} ${book.key.pubdate} ${book.key.price}</p>
                        <p><span id="star" style="background-position: 0 <fmt:formatNumber value="${(book.value.average-10)*11}" type="number"/>px"></span>&nbsp
                            <span id="detail">(${book.value.collectionNum}人评价)</span></p>
                        <p id="summary">${fn:substring(book.key.summary,0,150)} ...</p>
                    </div>
                </div>
            </c:forEach>
            <nav aria-label="Page navigation" class="text-center">
                <ul class="pagination">
                    <c:if test="${pageInfo.currentIndex != 1}">
                        <li>
                            <a href="./${pageInfo.currentIndex - 1}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <c:forEach begin="${pageInfo.beginIndex}" end="${pageInfo.endIndex}" varStatus="s">
                        <li><a href="./${s.index}">${s.index}</a></li>
                    </c:forEach>
                    <c:if test="${pageInfo.currentIndex != pageInfo.endIndex}">
                        <li>
                            <a href="./${pageInfo.currentIndex + 1}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                </ul>
            </nav>
        </div>
        <div class="col-md-4">
            <div>
                <a><img src="${pageContext.request.contextPath}/images/4.jpg"></a>
            </div>
            <br>
        </div>
    </div>
</div>
<%@include file="./footer.jsp"%>
<script>
    $(function() {
        $(".pagination li a:contains('${pageInfo.currentIndex}')").parent().addClass("active");
    });
</script>
</body>

</html>
