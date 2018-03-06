var rating = 0;
var collectionType = 2;
$(function() {
    $("#star1").hover(function() {
        $("#star1 img").attr("src", "../images/star_onmouseover.png");
        $("#rateword").text("很差");
    }, function() {
        $("#star1 img").attr("src", "../images/star_hollow_hover.png");
        $("#rateword").empty();
    });

    $("#star2").hover(function() {
        $("#star1 img").attr("src", "../images/star_onmouseover.png");
        $("#star2 img").attr("src", "../images/star_onmouseover.png");
        $("#rateword").text("较差");
    }, function() {
        $("#star1 img").attr("src", "../images/star_hollow_hover.png");
        $("#star2 img").attr("src", "../images/star_hollow_hover.png");
        $("#rateword").empty();
    });

    $("#star3").hover(function() {
        $("#star1 img").attr("src", "../images/star_onmouseover.png");
        $("#star2 img").attr("src", "../images/star_onmouseover.png");
        $("#star3 img").attr("src", "../images/star_onmouseover.png");
        $("#rateword").text("还行");
    }, function() {
        $("#star1 img").attr("src", "../images/star_hollow_hover.png");
        $("#star2 img").attr("src", "../images/star_hollow_hover.png");
        $("#star3 img").attr("src", "../images/star_hollow_hover.png");
        $("#rateword").empty();
    });

    $("#star4").hover(function() {
        $("#star1 img").attr("src", "../images/star_onmouseover.png");
        $("#star2 img").attr("src", "../images/star_onmouseover.png");
        $("#star3 img").attr("src", "../images/star_onmouseover.png");
        $("#star4 img").attr("src", "../images/star_onmouseover.png");
        $("#rateword").text("推荐");
    }, function() {
        $("#star1 img").attr("src", "../images/star_hollow_hover.png");
        $("#star2 img").attr("src", "../images/star_hollow_hover.png");
        $("#star3 img").attr("src", "../images/star_hollow_hover.png");
        $("#star4 img").attr("src", "../images/star_hollow_hover.png");
        $("#rateword").empty();
    });

    $("#star5").hover(function() {
        $("#star1 img").attr("src", "../images/star_onmouseover.png");
        $("#star2 img").attr("src", "../images/star_onmouseover.png");
        $("#star3 img").attr("src", "../images/star_onmouseover.png");
        $("#star4 img").attr("src", "../images/star_onmouseover.png");
        $("#star5 img").attr("src", "../images/star_onmouseover.png");
        $("#rateword").text("力荐");
    }, function() {
        $("#star1 img").attr("src", "../images/star_hollow_hover.png");
        $("#star2 img").attr("src", "../images/star_hollow_hover.png");
        $("#star3 img").attr("src", "../images/star_hollow_hover.png");
        $("#star4 img").attr("src", "../images/star_hollow_hover.png");
        $("#star5 img").attr("src", "../images/star_hollow_hover.png");
        $("#rateword").empty();
    });

    $(".star1").mouseover(function() {
        rating = 1;
        $(".star1 img").attr("src", "../images/star_onmouseover.png");
        $(".star2 img").attr("src", "../images/star_hollow_hover.png");
        $(".star3 img").attr("src", "../images/star_hollow_hover.png");
        $(".star4 img").attr("src", "../images/star_hollow_hover.png");
        $(".star5 img").attr("src", "../images/star_hollow_hover.png");
        $(".rateword").text("很差");
    });

    $(".star2").mouseover(function() {
        rating = 2;
        $(".star1 img").attr("src", "../images/star_onmouseover.png");
        $(".star2 img").attr("src", "../images/star_onmouseover.png");
        $(".star3 img").attr("src", "../images/star_hollow_hover.png");
        $(".star4 img").attr("src", "../images/star_hollow_hover.png");
        $(".star5 img").attr("src", "../images/star_hollow_hover.png");
        $(".rateword").text("较差");
    });

    $(".star3").mouseover(function() {
        rating = 3;
        $(".star1 img").attr("src", "../images/star_onmouseover.png");
        $(".star2 img").attr("src", "../images/star_onmouseover.png");
        $(".star3 img").attr("src", "../images/star_onmouseover.png");
        $(".star4 img").attr("src", "../images/star_hollow_hover.png");
        $(".star5 img").attr("src", "../images/star_hollow_hover.png");
        $(".rateword").text("还行");
    });

    $(".star4").mouseover(function() {
        rating = 4;
        $(".star1 img").attr("src", "../images/star_onmouseover.png");
        $(".star2 img").attr("src", "../images/star_onmouseover.png");
        $(".star3 img").attr("src", "../images/star_onmouseover.png");
        $(".star4 img").attr("src", "../images/star_onmouseover.png");
        $(".star5 img").attr("src", "../images/star_hollow_hover.png");
        $(".rateword").text("推荐");
    });

    $(".star5").mouseover(function() {
        rating = 5;
        $(".star1 img").attr("src", "../images/star_onmouseover.png");
        $(".star2 img").attr("src", "../images/star_onmouseover.png");
        $(".star3 img").attr("src", "../images/star_onmouseover.png");
        $(".star4 img").attr("src", "../images/star_onmouseover.png");
        $(".star5 img").attr("src", "../images/star_onmouseover.png");
        $(".rateword").text("力荐");
    });

    $(".toread").click(function() {
        collectionType = 0;
        $("#collectionModal .modal-title").text("添加收藏：我想读这本书");
        $("#collectionModal .modal-body:eq(0)").hide();
        $("#collectionModal .modal-body:eq(1) p").text("简短附注（350）");
        $("#collectionModal").modal("show");
    });

    $(".reading").click(function() {
        collectionType = 1;
        $("#collectionModal .modal-title").text("添加收藏：我在读这本书");
        $("#collectionModal .modal-body:eq(0)").show();
        $("#collectionModal .modal-body:eq(1) p").text("简短评价（350）");
        $(".star1 img").attr("src", "../images/star_hollow_hover.png");
        $(".star2 img").attr("src", "../images/star_hollow_hover.png");
        $(".star3 img").attr("src", "../images/star_hollow_hover.png");
        $(".star4 img").attr("src", "../images/star_hollow_hover.png");
        $(".star5 img").attr("src", "../images/star_hollow_hover.png");
        $(".rateword").empty();
        $("#collectionModal").modal("show");
    });

    $(".read").click(function() {
        $("#collectionModal .modal-title").text("添加收藏：我读过这本书");
        $("#collectionModal .modal-body:eq(0)").show();
        $("#collectionModal .modal-body:eq(1) p").text("简短评价（350）");
        $(".star1 img").attr("src", "../images/star_hollow_hover.png");
        $(".star2 img").attr("src", "../images/star_hollow_hover.png");
        $(".star3 img").attr("src", "../images/star_hollow_hover.png");
        $(".star4 img").attr("src", "../images/star_hollow_hover.png");
        $(".star5 img").attr("src", "../images/star_hollow_hover.png");
        $(".rateword").empty();
        $("#collectionModal").modal("show");
    });

    $("#star1").click(function() {
        rating = 1;
        $("#collectionModal .modal-title").text("添加收藏：我读过这本书");
        $("#collectionModal .modal-body:eq(0)").show();
        $("#collectionModal .modal-body:eq(1) p").text("简短评价（350）");
        $(".star1 img").attr("src", "../images/star_onmouseover.png");
        $(".star2 img").attr("src", "../images/star_hollow_hover.png");
        $(".star3 img").attr("src", "../images/star_hollow_hover.png");
        $(".star4 img").attr("src", "../images/star_hollow_hover.png");
        $(".star5 img").attr("src", "../images/star_hollow_hover.png");
        $(".rateword").text("很差");
        $("#collectionModal").modal("show");
    });

    $("#star2").click(function() {
        rating = 2;
        $("#collectionModal .modal-title").text("添加收藏：我读过这本书");
        $("#collectionModal .modal-body:eq(0)").show();
        $("#collectionModal .modal-body:eq(1) p").text("简短评价（350）");
        $(".star1 img").attr("src", "../images/star_onmouseover.png");
        $(".star2 img").attr("src", "../images/star_onmouseover.png");
        $(".star3 img").attr("src", "../images/star_hollow_hover.png");
        $(".star4 img").attr("src", "../images/star_hollow_hover.png");
        $(".star5 img").attr("src", "../images/star_hollow_hover.png");
        $(".rateword").text("较差");
        $("#collectionModal").modal("show");
    });

    $("#star3").click(function() {
        rating = 3;
        $("#collectionModal .modal-title").text("添加收藏：我读过这本书");
        $("#collectionModal .modal-body:eq(0)").show();
        $("#collectionModal .modal-body:eq(1) p").text("简短评价（350）");
        $(".star1 img").attr("src", "../images/star_onmouseover.png");
        $(".star2 img").attr("src", "../images/star_onmouseover.png");
        $(".star3 img").attr("src", "../images/star_onmouseover.png");
        $(".star4 img").attr("src", "../images/star_hollow_hover.png");
        $(".star5 img").attr("src", "../images/star_hollow_hover.png");
        $(".rateword").text("还行");
        $("#collectionModal").modal("show");
    });

    $("#star4").click(function() {
        rating = 4;
        $("#collectionModal .modal-title").text("添加收藏：我读过这本书");
        $("#collectionModal .modal-body:eq(0)").show();
        $("#collectionModal .modal-body:eq(1) p").text("简短评价（350）");
        $(".star1 img").attr("src", "../images/star_onmouseover.png");
        $(".star2 img").attr("src", "../images/star_onmouseover.png");
        $(".star3 img").attr("src", "../images/star_onmouseover.png");
        $(".star4 img").attr("src", "../images/star_onmouseover.png");
        $(".star5 img").attr("src", "../images/star_hollow_hover.png");
        $(".rateword").text("推荐");
        $("#collectionModal").modal("show");
    });

    $("#star5").click(function() {
        rating = 5;
        $("#collectionModal .modal-title").text("添加收藏：我读过这本书");
        $("#collectionModal .modal-body:eq(0)").show();
        $("#collectionModal .modal-body:eq(1) p").text("简短评价（350）");
        $(".star1 img").attr("src", "../images/star_onmouseover.png");
        $(".star2 img").attr("src", "../images/star_onmouseover.png");
        $(".star3 img").attr("src", "../images/star_onmouseover.png");
        $(".star4 img").attr("src", "../images/star_onmouseover.png");
        $(".star5 img").attr("src", "../images/star_onmouseover.png");
        $(".rateword").text("力荐");
        $("#collectionModal").modal("show");
    });
});