<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${tags}" var="t">
    <ul>
        <li class="tag_title">${t.key}</li>
        <c:forEach items="${t.value}" var="tag">
            <li class="last"><a class="tag" href="${pageContext.request.contextPath}/tag/${tag.tagId}/page/1">${tag.tagName}</a></li>
        </c:forEach>
        <li class="last"><a href="${pageContext.request.contextPath}/tags.html" class="tag_more">更多》</a></li>
    </ul>
</c:forEach>

