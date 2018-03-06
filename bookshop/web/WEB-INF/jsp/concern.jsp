<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./header.jsp"%>
<div class="container">
    <h3>最受关注图书榜</h3>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-8">
            <hr>
            <div class="row concern_row">
                <div class="col-md-1" id="rank"><span>&nbsp;1&nbsp;</span></div>
                <div class="col-md-2">
                    <a href=""><img src="./images/2.jpg"></a>
                </div>
                <div class="col-md-9">
                    <a href="" id="name">时光列车</a>
                    <p id="detail" class="pull-right"><span id="change">3</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>( 上榜3天 )</span></p>
                    <p></p>
                    <p id="detail">余世存 / 老树 / 2017-1-1 / 铁葫芦 / 中国友谊出版公司</p>
                    <p><span id="star"></span>&nbsp;<span id="detail">(12345人评价)</span></p>
                    <p id="detail"><span>99元</span>&nbsp;&nbsp;&nbsp;<a href="JavaScript:">加入购书单</a></p>
                </div>
                <div class="col-md-12">
                    <p></p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <p><span class="concern_title">新书速递</span>· · · · · ·( <a href="">全部</a> )</p>
            <br>
            <div class="row concern_latest">
                <div class="col-md-4">
                    <p>
                        <a href=""><img src="./images/2.jpg"></a>
                    </p>
                    <div id="name"><a href="">东北游记</a></div>
                    <br>
                </div>
            </div>
            <br>
            <p><span class="concern_title">top50</span>( 随机显示 )· · · · · ·( <a href="">全部</a> )</p>
            <br>
            <div class="row top50">
                <div class="col-md-4">
                    <p>
                        <a href=""><img src="./images/2.jpg"></a>
                    </p>
                    <div id="name"><a href="">东北游记</a></div>
                    <br>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="./footer.jsp"%>
</body>

</html>
