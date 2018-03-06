
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<br><br><br><br><br><br><br><br>

<div class="container footer">
    <br>
    <div id="icp"><span>© 2013－2017 sunfan.tech</span></div>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/layer/layer.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script>
    $(function() {
        $(".find").click(function() {
            factor = $(".factor").val();
            if(factor.length == 0) {
                layer.msg("搜索内容不能为空");
                return;
            }
            window.location.href = "${pageContext.request.contextPath}/search/"+factor+"/p/1";
        });

        $("#home").click(function() {
            <c:choose>
                <c:when test="${empty(user)}">
                    layer.msg("请登录后再操作", {time: 500}, function() {
                        $("#loginModal").modal("show");
                    });
                </c:when>
                <c:otherwise>
                    window.location.href = "${pageContext.request.contextPath}/user.html";
                </c:otherwise>
            </c:choose>
        });
    });
</script>
