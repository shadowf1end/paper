<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./header.jsp"%>
<div class="container">
    <h3>图书标签</h3>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-8">
            <hr>
            <c:forEach var="t" items="${tags}" varStatus="s1">
                <div>
                    <p class="tag_title">${t.key}</p>
                    <table class="tag_table">
                        <c:forEach var="tag" items="${t.value}" varStatus="s2">
                            <c:if test="${(s2.count - 1) % 4 == 0}">
                                <tr>
                            </c:if>
                            <td><a href="./tag/${tag.tagId}/page/1">${tag.tagName}</a><b class="amount">(${tag.tagNum})</b></td>
                            <c:if test="${s2.count % 4 == 0}">
                                </tr>
                            </c:if>
                        </c:forEach>
                    </table>
                </div>
                <br>
            </c:forEach>
        </div>
        <div class="col-md-4">
            <p class="tag_title">标签直达</p>
            <form>
                <div class="row">
                    <div class="col-md-8"><input class="form-control tag_name" type="text" placeholder="去其他标签"></div>
                    <button class="btn btn-default search" type="button">进入</button>
                </div>
            </form>
            <div>
                <br><br>
                <a><img src="${pageContext.request.contextPath}/images/7.jpg"></a>
            </div>
        </div>
    </div>
</div>
<%@include file="./footer.jsp"%>
<script src="${pageContext.request.contextPath}/js/tags.js"></script>
</body>

</html>