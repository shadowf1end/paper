<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="container">
    <h3>我猜</h3>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-8">
            <hr>
            <c:choose>
                <c:when test="${empty(user)}">
                    <p>${recommends}</p>
                </c:when>
                <c:otherwise>
                    <p>猜你可能感兴趣的书 · · · · · ·</p>
                    <br>
                    <div class="row">
                        <c:forEach items="${recommends}" var="recommend">
                            <div class="col-md-2" style="height: 300px">
                                <a href="${pageContext.request.contextPath}/subject/${recommend.key.bookId}"><img src="${recommend.key.image}"></a>
                                <a href="${pageContext.request.contextPath}/subject/${recommend.key.bookId}">${recommend.key.title}</a>
                                <p>推荐指数：${fn:substring(recommend.value,0,3)}</p>
                            </div>
                        </c:forEach>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="col-md-4">
            <div>
                <a><img src="${pageContext.request.contextPath}/images/4.jpg"></a>
            </div>
            <br>
            <p class="detail">这是给你的个人推荐。通过每天分析你的读过、想读、在读、评价行为，从海量数据里挑选你会感兴趣的内容给你。</p>
        </div>
    </div>
</div>
<%@include file="./footer.jsp"%>
</body>

</html>
