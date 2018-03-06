<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./WEB-INF/jsp/header.jsp"%>
<div class="container">
    <div>
        <a><img src="./images/1.jpg"></a>
    </div><br>
    <div class="row">
        <div class="col-md-8">
            <div>
                <p>
                <h4>新书速递&nbsp;&nbsp;&nbsp;</h4><%-- <a href="">更多»</a> --%></p>
                <hr>
                <div class="row latest_books"></div>
            </div>
            <div>
                <br>
                <a><img src="./images/3.jpg"></a>
            </div><br><br>
            <p>
            <h4>最受关注图书榜&nbsp;&nbsp;&nbsp;</h4><%-- <a href="">查看全部»</a> --%></p>
            <hr>
            <div class="row concerned_books">

                    <%--<div class="col-md-12">--%>
                        <%--<br>--%>
                        <%--<p id="describtion">也许文艺和仪式感或者更多看不见摸不着的事物终归是在过去的激流暗涌中，消亡了 (<a href="">海龟先生评论</a>)</p>--%>
                        <%--<br>--%>
                    <%--</div>--%>

            <%--<div>--%>
                <%--<a><img src="./images/5.jpg"></a>--%>
            <%--</div><br><br>--%>
            <%--<p>--%>
            <%--<h4>书评人&nbsp;&nbsp;&nbsp;</h4><a href="">书评专区»</a></p>--%>
            <%--<hr>--%>
            <%--<div class="row">--%>
                <%--<div class="col-md-6 comment">--%>
                    <%--<div class="row">--%>
                        <%--<div class="col-md-2">--%>
                            <%--<a href=""><img id="head" src="./images/5.jpg"></a>--%>
                        <%--</div>--%>
                        <%--<div class="col-md-10">--%>
                            <%--<p><a href="">喵了个咪</a></p>--%>
                            <%--<p>评论《西洋镜：一个德国飞行员镜头下的中国1933—1936》</p>--%>
                            <%--<p><a href="">回顾20世纪30年代的中国</a></p>--%>
                            <%--<p id="detail"><span>244</span>有用&nbsp;&nbsp;<span>2017-04-08</span></p>--%>
                        <%--</div>--%>
                        <%--<div class="row col-md-12"><br></div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            </div>
        </div>
        <div class="col-md-4">
            <br>
            <div>
                <a><img src="./images/4.jpg"></a>
            </div><br>
            <p>
            <h4>热门标签&nbsp&nbsp&nbsp</h4><a href="${pageContext.request.contextPath}/tags.html">全部标签»</a></p>
            <hr>
            <ul>
                <li class="first"></li>
            </ul>
            <p>
            <%--<h4>畅销图书榜&nbsp;&nbsp;&nbsp;</h4>--%>
            <%--</p>--%>
            <%--<hr>--%>
            <%--<table class="table table-hover rank">--%>
                <%--<tr>--%>
                    <%--<th>1.</th>--%>
                    <%--<th><a href="">浮生六记</a></th>--%>
                    <%--<th id="author">沈复</th>--%>
                <%--</tr>--%>
            <%--</table>--%>
            <%--<p>--%>
            <%--<h4>top50&nbsp;&nbsp;&nbsp;</h4><a href="">更多»</a></p>--%>
            <%--<hr>--%>
            <%--<div class="row top50">--%>
                <%--<div class="col-md-4">--%>
                    <%--<p>--%>
                        <%--<a href=""><img src="./images/2.jpg"></a>--%>
                    <%--</p>--%>
                    <%--<div id="name"><a href="">东北游记</a></div>--%>
                    <%--<br><br>--%>
                <%--</div>--%>
            <%--</div>--%>
        </div>
    </div>
</div>
<%@include file="./WEB-INF/jsp/footer.jsp"%>
<script src="${pageContext.request.contextPath}/js/index.js"></script>
</body>

</html>
