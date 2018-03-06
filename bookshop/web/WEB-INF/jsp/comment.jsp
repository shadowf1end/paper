<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./header.jsp"%>
<div class="container">
    <h3>最受欢迎书评</h3>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-8">
            <hr>
            <div class="row comment_row">
                <div class="col-md-2">
                    <a href=""><img src="./images/2.jpg"></a>
                </div>
                <div class="col-md-10">
                    <div class="comment_title"><a href="">那些年，苏联人失去了什么</a></div>
                    <p></p>
                    <p id="detail"><a href="">喵了个咪</a> 评论 <a href="">二手时间</a></p>
                    <p><span id="star"></span>&nbsp&nbsp<span id="detail">2017-01-22 13:40</span></p>
                    <p><span>据媒体统计，我国每年“过劳死”的人数已达60万人，超越日本成为“过劳死”第一大国。不但如此，还有越来越多的人也正处于“亚健康”的状态之中。据一家世界知名调查机构指出，中国内地上班族在过去一年内所承受的压力，位列全球第一，巨大的工作压力是导致过劳死的重要原因。</span>                            (
                        <a href="">100回应</a>)
                    </p>
                    <p class="detail">331有用 / 25没用</p>
                </div>
            </div>
            <br>
        </div>
        <div class="col-md-4">
            <div>
                <a><img src="./images/8.jpg"></a>
            </div>
            <br>
            <p class="detail">如果你觉得一篇评论对你有帮助，请你点击“有用”。你的投票直接决定哪些评论出现在首页和“最受欢迎评论”里，以及在图书介绍页里评论的排序。</p>
        </div>
    </div>
</div>
<%@include file="./footer.jsp"%>
</body>

</html>
