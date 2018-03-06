$(function() {
    $(".search").click(function() {
        var tagName = $(".tag_name").val()
        $.ajax({
            type: "post",
            url: "./search/tag.json",
            data: {tagName: tagName},
            dataType: "json",
            success: function (data) {
                if(data["status"] == 1) {
                   window.location.href = "tag/" + data["content"]["tagId"] + "/page/1";
                }else {
                    layer.msg(data["content"]);
                }
            },
            error: function () {
                layer.msg("查找失败，请重试");
            }
        });
    });
});