<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./header.jsp"%>
<div class="container">
    <h3>top50</h3>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-8">
            <hr>
            <div class="row top50_row">
                <p></p>
                <div class="col-md-2">
                    <a href=""><img src="./images/2.jpg"></a>
                </div>
                <div class="col-md-10">
                    <a href="" id="name">时光列车</a>
                    <p></p>
                    <p id="detail">余世存 / 老树 / 2017-1-1 / 铁葫芦 / 中国友谊出版公司</p>
                    <p><span id="star"></span>&nbsp;<span id="detail">(12345人评价)</span></p>
                    <p id="detail"><span>￥99</span><button class="btn btn-default pull-right" type="submit">加入购书单</button></p>
                    <p><img src="./images/quotel.png" class="top50_img">&nbsp;<span>为你，千千万万遍</span>&nbsp;
                        <img src="./images/quoter.png" class="top50_img"></p>
                    <p id="detail"><a href="">想读</a>&nbsp;&nbsp;&nbsp;<a href="">在读</a>&nbsp;&nbsp;&nbsp;<a href="">读过</a></p>
                </div>
            </div>
            <nav aria-label="Page navigation" class="text-center">
                <ul class="pagination">
                    <li>
                        <a href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li>
                        <a href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="col-md-4">
            <div>
                <a><img src="./images/4.jpg"></a>
            </div>
            <br>
            <p class="detail">用户每天都在对“读过”的书进行“很差”到“力荐”的评价，根据每本书读过的人数以及该书所得的评价等综合数据，通过算法分析产生了top50。</p>
        </div>
    </div>
</div>
<%@include file="./footer.jsp"%>
</body>

</html>
