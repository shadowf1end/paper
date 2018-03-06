<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./header.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="modal fade" tabindex="-1" id="collectionModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">添加收藏：我想读这本书</h4>
            </div>
            <div class="modal-body">
                给个评分吧？（可选）
                <span id = "stars">
                    <a href="#" class="star1"><img src="${pageContext.request.contextPath}/images/star_hollow_hover.png"></a>
                    <a href="#" class="star2"><img src="${pageContext.request.contextPath}/images/star_hollow_hover.png"></a>
                    <a href="#" class="star3"><img src="${pageContext.request.contextPath}/images/star_hollow_hover.png"></a>
                    <a href="#" class="star4"><img src="${pageContext.request.contextPath}/images/star_hollow_hover.png"></a>
                    <a href="#" class="star5"><img src="${pageContext.request.contextPath}/images/star_hollow_hover.png"></a>
                    <span class="rateword"></span>
                </span>
            </div>
            <div class="modal-body">
                <p></p>
                <textarea class="form-control" rows="7"></textarea>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary save-collection">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<div class="container">
    <h3>${book.title}</h3>
</div>

<div class="container">
    <div class="row">
        <br>
        <div class="col-md-8 subject">
            <div class="row">
                <div class="col-md-2">
                    <a><img src="${book.image}"></a>
                </div>
                <div class="col-md-5" id="info">
                    <c:if test="${!empty(book.authors)}">
                        <p class="text-muted">作者: ${book.authors}</p>
                    </c:if>
                    <c:if test="${!empty(book.publisher)}">
                        <p class="text-muted">出版社: ${book.publisher}</p>
                    </c:if>
                    <c:if test="${!empty(book.originTitle)}">
                        <p class="text-muted">原作名: ${book.originTitle}</p>
                    </c:if>
                    <c:if test="${!empty(book.translators)}">
                        <p class="text-muted">译者: ${book.translators}</p>
                    </c:if>
                    <c:if test="${!empty(book.pubdate)}">
                        <p class="text-muted">出版年: ${book.pubdate}</p>
                    </c:if>
                    <c:if test="${!empty(book.pages)}">
                        <p class="text-muted">页数: ${book.pages}</p>
                    </c:if>
                    <c:if test="${!empty(book.price)}">
                        <p class="text-muted">定价: ${book.price}</p>
                    </c:if>
                </div>
                <div class="col-md-5" id="score">
                    <p>评分: ${fn:substring(rating.average,0,2)}</p>
                    <p><span id="ratings" style="background-position: 0 <fmt:formatNumber value="${(rating.average-10)*15}" type="number"/>px"></span>&nbsp;
                        <span id="detail">(${rating.collectionNum}人评价)</span></p>
                    <c:choose>
                        <c:when test="${rating.collectionNum == 0}">
                            <span class="pull-left">5星</span><div id="startop"></div><span>0%</span>
                            <br>
                            <span class="pull-left">4星</span><div id="startop"></div><span>0%</span>
                            <br>
                            <span class="pull-left">3星</span><div id="startop"></div><span>0%</span>
                            <br>
                            <span class="pull-left">2星</span><div id="startop"></div><span>0%</span>
                            <br>
                            <span class="pull-left">1星</span><div id="startop"></div><span>0%</span>
                        </c:when>
                        <c:otherwise>
                            <span class="pull-left">5星</span>
                            <div id="startop" style="width: ${rating.star5/rating.collectionNum*100}px"></div>
                            <span>${rating.star5/rating.collectionNum*100}%</span>
                            <br>
                            <span class="pull-left">4星</span>
                            <div id="startop" style="width: ${rating.star4/rating.collectionNum*100}px"></div>
                            <span>${rating.star4/rating.collectionNum*100}%</span>
                            <br>
                            <span class="pull-left">3星</span>
                            <div id="startop" style="width: ${rating.star3/rating.collectionNum*100}px"></div>
                            <span>${rating.star3/rating.collectionNum*100}%</span>
                            <br>
                            <span class="pull-left">2星</span>
                            <div id="startop" style="width: ${rating.star2/rating.collectionNum*100}px"></div>
                            <span>${rating.star2/rating.collectionNum*100}%</span>
                            <br>
                            <span class="pull-left">1星</span>
                            <div id="startop" style="width: ${rating.star1/rating.collectionNum*100}px"></div>
                            <span>${rating.star1/rating.collectionNum*100}%</span>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
            <br><br><br><br>
            <c:choose>
                <c:when test="${!empty(collection)}">
                    <div>
                        <p>
                            <span>
                                <c:choose>
                                    <c:when test="${collection.collectionType == 0}">
                                        我想读这本书&nbsp;
                                    </c:when>
                                    <c:when test="${collection.collectionType == 1}">
                                        我在读这本书&nbsp;
                                        <span id="star" style="background-position: 0 ${(collection.rating-5)*22}px"></span>
                                    </c:when>
                                    <c:otherwise>
                                        我读过这本书&nbsp;
                                        <span id="star" style="background-position: 0 ${(collection.rating-5)*22}px"></span>
                                    </c:otherwise>
                                </c:choose>
                            </span>
                            <span>&nbsp;${fn:substring(collection.time,0,10)}</span>
                            <span>&nbsp;<a>修改</a>&nbsp;<a>删除</a></span>
                        </p>
                        <p>${collection.comment}</p>
                    </div>
                </c:when>
                <c:otherwise>
                    <div>
                        <button type="button" class="btn btn-default toread">想读</button>
                        <span>&nbsp;&nbsp;</span>
                        <button type="button" class="btn btn-default reading">在读</button>
                        <span>&nbsp;&nbsp;</span>
                        <button type="button" class="btn btn-default read">读过</button>
                        <span>&nbsp;&nbsp;</span>
                        <span>&nbsp;&nbsp;评价：&nbsp;</span>
                        <span id = "stars">
                            <a href="#" id="star1"><img src="${pageContext.request.contextPath}/images/star_hollow_hover.png"></a>
                            <a href="#" id="star2"><img src="${pageContext.request.contextPath}/images/star_hollow_hover.png"></a>
                            <a href="#" id="star3"><img src="${pageContext.request.contextPath}/images/star_hollow_hover.png"></a>
                            <a href="#" id="star4"><img src="${pageContext.request.contextPath}/images/star_hollow_hover.png"></a>
                            <a href="#" id="star5"><img src="${pageContext.request.contextPath}/images/star_hollow_hover.png"></a>
                            <span id="rateword"></span>
                        </span>
                    </div>
                </c:otherwise>
            </c:choose>
            <br><br>
            <c:if test="${!empty(book.summary)}">
                <br><p class="text-success">内容简介 ······</p>
                <div>${book.summary}</div>
            </c:if>
            <c:if test="${!empty(book.authorIntro)}">
                <br><p class="text-success">作者简介 ······</p>
                <div>${book.authorIntro}</div>
            </c:if>
            <c:if test="${!empty(book.catalog)}">
                <br><p class="text-success">目录 ······</p>
                <div>${book.catalog}</div>
            </c:if>
            <br><br><p class="text-success">短评 ······(<a href="./${book.bookId}/collections/1">全部${rating.collectionNum}条</a>)</p>
            <div id="collections"></div>
            <p>&gt;<a href="./${book.bookId}/collections/1">更多短评&nbsp;${rating.collectionNum}&nbsp;条</a></p>
        </div>

        <div class="col-md-4">
            <div>
                <a><img src="${pageContext.request.contextPath}/images/8.jpg"></a>
            </div>
        </div>
    </div>
</div>
<%@include file="./footer.jsp"%>
<script>
    $(function() {
        $("#collections").load("${pageContext.request.contextPath}/subject/${book.bookId}/collections/1 #collections");
    });
</script>
<c:choose>
    <c:when test="${empty(user)}">
        <script src="${pageContext.request.contextPath}/js/subject_out.js"></script>
    </c:when>
    <c:otherwise>
        <script src="${pageContext.request.contextPath}/js/subject_in.js"></script>
        <script>
            $(".save-collection").click(function() {
                var comment = $("textarea").val();
                console.log(collectionType);
                if(comment.length == 0) {
                    layer.msg("请输入评论");
                    return;
                }
                $.ajax({
                    url: "${pageContext.request.contextPath}/collection.json",
                    type: "post",
                    data: {rating: rating, comment: comment, collectionType: collectionType, userId: ${user.userId}, bookId: ${book.bookId}},
                    dataType: "json",
                    success: function(data) {
                        layer.msg(data["content"]);
                        if(data["status"]) {
                            layer.msg(data["content"]);
                            window.location.reload(true);
                        }
                    },
                    error: function() {
                        layer.msg("收藏失败，请重试");
                    }
                });
            });
        </script>
    </c:otherwise>
</c:choose>
</body>

</html>
