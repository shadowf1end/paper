$(function() {
    $.ajax({
        type: "post",
        url: "./latest.json",
        async: false,
        success: function(data) {
            data.forEach(function(book) {
                $(".latest_books").append('<div class="col-md-3 latest">'+
                    '<a href="./subject/'+book['bookId']+'"><img src="'+ book['image'] +'"></a>'+
                    '<div><a href="./subject/'+book['bookId']+'">'+ book['title'] +'</a>'+
                    '<p><span id="author">'+ book['authors'] +'</span></p></div></div>');
            });
        },
        error: function() {
            layer.msg("加载失败");
        }
    });
    $.ajax({
        type: "post",
        url: "./concerned.json",
        async: false,
        success: function(data) {
            data.forEach(function(book) {
                $(".concerned_books").append('<div class="row col-md-6 concern"><div class="col-md-5">'+
                    '<a><img src="'+ book['image'] +'"></a> <p></p> </div> <div div class="col-md-7">'+
                    '<a href="./subject/'+book['bookId']+'"><h5>'+ book['title'] +'</h5></a>'+
                    ' <p id="author">作者：'+ book['authors'] +'</p><p id="tag">'+ book['tags'] +'</p>'+
                '</div></div>');
            });
        },
        error: function() {
            layer.msg("加载失败");
        }
    });

    $(".latest_books img").css("width","70%");

    $(".first").load("hotTags.html");
});