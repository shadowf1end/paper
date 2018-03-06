$(function() {
    $("#star1").hover(function () {
        $("#star1 img").attr("src", "../images/star_onmouseover.png");
        $("#rateword").text("很差");
    }, function () {
        $("#star1 img").attr("src", "../images/star_hollow_hover.png");
        $("#rateword").empty();
    });

    $("#star2").hover(function () {
        $("#star1 img").attr("src", "../images/star_onmouseover.png");
        $("#star2 img").attr("src", "../images/star_onmouseover.png");
        $("#rateword").text("较差");
    }, function () {
        $("#star1 img").attr("src", "../images/star_hollow_hover.png");
        $("#star2 img").attr("src", "../images/star_hollow_hover.png");
        $("#rateword").empty();
    });

    $("#star3").hover(function () {
        $("#star1 img").attr("src", "../images/star_onmouseover.png");
        $("#star2 img").attr("src", "../images/star_onmouseover.png");
        $("#star3 img").attr("src", "../images/star_onmouseover.png");
        $("#rateword").text("还行");
    }, function () {
        $("#star1 img").attr("src", "../images/star_hollow_hover.png");
        $("#star2 img").attr("src", "../images/star_hollow_hover.png");
        $("#star3 img").attr("src", "../images/star_hollow_hover.png");
        $("#rateword").empty();
    });

    $("#star4").hover(function () {
        $("#star1 img").attr("src", "../images/star_onmouseover.png");
        $("#star2 img").attr("src", "../images/star_onmouseover.png");
        $("#star3 img").attr("src", "../images/star_onmouseover.png");
        $("#star4 img").attr("src", "../images/star_onmouseover.png");
        $("#rateword").text("推荐");
    }, function () {
        $("#star1 img").attr("src", "../images/star_hollow_hover.png");
        $("#star2 img").attr("src", "../images/star_hollow_hover.png");
        $("#star3 img").attr("src", "../images/star_hollow_hover.png");
        $("#star4 img").attr("src", "../images/star_hollow_hover.png");
        $("#rateword").empty();
    });

    $("#star5").hover(function () {
        $("#star1 img").attr("src", "../images/star_onmouseover.png");
        $("#star2 img").attr("src", "../images/star_onmouseover.png");
        $("#star3 img").attr("src", "../images/star_onmouseover.png");
        $("#star4 img").attr("src", "../images/star_onmouseover.png");
        $("#star5 img").attr("src", "../images/star_onmouseover.png");
        $("#rateword").text("力荐");
    }, function () {
        $("#star1 img").attr("src", "../images/star_hollow_hover.png");
        $("#star2 img").attr("src", "../images/star_hollow_hover.png");
        $("#star3 img").attr("src", "../images/star_hollow_hover.png");
        $("#star4 img").attr("src", "../images/star_hollow_hover.png");
        $("#star5 img").attr("src", "../images/star_hollow_hover.png");
        $("#rateword").empty();
    });

    $(".toread, .reading, .read, #star1, #star2, #star3, #star4, #star5").click(function() {
        layer.msg("请登录后再收藏", {time: 500}, function() {
            $("#loginModal").modal("show");
        });
    });
});