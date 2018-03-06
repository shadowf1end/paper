<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./header.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="container">
    <h3>${book.title}&nbsp;短评</h3>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-8">
            <br><br>
            <p class="pull-left">全部共 ${pageInfo.dataCount} 条</p>
            <br>
            <div id="collections">
                <c:forEach items="${collections}" var="collection">
                    <div class="row">
                        <div class="col-md-12 comment">
                            <hr>
                            <div class="row">
                                <div class="col-md-1">
                                    <a href=""><img id="head" src="${pageContext.request.contextPath}/images/5.jpg"></a>
                                </div>
                                <div class="col-md-11">
                                    <p><a href="">${collection.key.userName}</a>&nbsp;
                                        <span id="star" style="background-position: 0 ${(collection.value.rating-5)*22}px"></span>
                                            ${fn:substring(collection.value.time,0,10)}</p>
                                    <p>${collection.value.comment}</p>
                                    <p>${collection.value.approval}<a>有用</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <hr>
            </div>
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
