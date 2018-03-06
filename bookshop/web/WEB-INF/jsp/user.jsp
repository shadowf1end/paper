<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./header.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-md-1">
            <p></p>
            <a href=""><img src="./images/6.jpg"></a>
        </div>
        <div class="col-md-10">
            <h4>${user.userName}的读书主页</h4>
            <ul class="nav nav-pills">
                <li class="active"><a href="${pageContext.request.contextPath}/user.html">读书主页</a></li>
                <li><a href="#" id="collection">书评</a></li>
                <li><a href="#" id="toread">想读</a></li>
                <li><a href="#" id="reading">在读</a></li>
                <li><a href="#" id="read">读过</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-8" id="content">
            <br>

        </div>
        <div class="col-md-4">
            <div>
                <a><img src="./images/8.jpg"></a>
            </div>
            <br>
        </div>
    </div>
</div>
<%@include file="./footer.jsp"%>
<script>
    $(function() {
        <c:if test="${empty(user)}">
        layer.msg("请登录后再操作", {time: 500}, function() {
            history.go(-1);
        });
        </c:if>
        $("#content").load("${pageContext.request.contextPath}/user/home .home");
        $("#collection").click(function() {
            $("#content").empty();
            $("#content").load("${pageContext.request.contextPath}/user/home .collections");
            $(".nav-pills li:eq(0)").removeClass("active");
            $(".nav-pills li:eq(2)").removeClass("active");
            $(".nav-pills li:eq(3)").removeClass("active");
            $(".nav-pills li:eq(4)").removeClass("active");
            $(".nav-pills li:eq(1)").addClass("active");
        });
        $("#toread").click(function() {
            $("#content").empty();
            $("#content").load("${pageContext.request.contextPath}/user/home .row1");
            $(".nav-pills li:eq(0)").removeClass("active");
            $(".nav-pills li:eq(1)").removeClass("active");
            $(".nav-pills li:eq(3)").removeClass("active");
            $(".nav-pills li:eq(4)").removeClass("active");
            $(".nav-pills li:eq(2)").addClass("active");
        });
        $("#reading").click(function() {
            $("#content").empty();
            $("#content").load("${pageContext.request.contextPath}/user/home .row2");
            $(".nav-pills li:eq(0)").removeClass("active");
            $(".nav-pills li:eq(1)").removeClass("active");
            $(".nav-pills li:eq(2)").removeClass("active");
            $(".nav-pills li:eq(4)").removeClass("active");
            $(".nav-pills li:eq(3)").addClass("active");
        });
        $("#read").click(function() {
            $("#content").empty();
            $("#content").load("${pageContext.request.contextPath}/user/home .row3");
            $(".nav-pills li:eq(0)").removeClass("active");
            $(".nav-pills li:eq(1)").removeClass("active");
            $(".nav-pills li:eq(2)").removeClass("active");
            $(".nav-pills li:eq(3)").removeClass("active");
            $(".nav-pills li:eq(4)").addClass("active");
        });
    });
</script>
</body>

</html>