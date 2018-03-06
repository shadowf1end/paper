$(function() {
    $(".login").click(function() {
        var loginName = $("#loginName").val();
        var loginPassword = $("#loginPassword").val();
        var nameReg = /^[a-zA-Z0-9_]{1,10}$/;
        var passwordReg = /^[a-zA-Z0-9_]{6,15}$/;
        var flag = 1;
        if(loginName.length == 0) {
            layer.msg("请输入用户名");
            flag = 0;
        }else if(loginPassword.length == 0) {
            layer.msg("请输入密码");
            flag = 0;
        }
        if(flag) {
            if(!nameReg.test(loginName)) {
                layer.msg("用户名或密码错误");
                flag = 0;
            }else if(!passwordReg.test(loginPassword)) {
                layer.msg("用户名或密码错误");
                flag = 0;
            }
        }
        if(flag) {
            $.ajax({
                type: "post",
                url: "http://localhost:8080/bookshop/login.json",
                data: { name: loginName, password: loginPassword },
                dataType: "json",
                success: function(data) {
                    layer.msg(data["content"]);
                    if(data["status"]) {
                        layer.msg(data["content"]);
                        window.location.reload(true);
                    }
                },
                error: function() {
                    layer.msg("登录失败，请重试");
                }
            });
        }
    });

    $(".register").click(function() {
        var registerName = $("#registerName").val();
        var registerPassword = $("#registerPassword").val();
        var confirm = $("#confirm").val();
        var nameReg = /^[a-zA-Z0-9_]{1,10}$/;
        var passwordReg = /^[a-zA-Z0-9_]{6,15}$/;
        var flag = 1;
        if(registerName.length == 0) {
            layer.msg("请输入用户名");
            flag = 0;
        }else if(registerPassword.length == 0) {
            layer.msg("请输入密码");
            flag = 0;
        }else if(confirm.length == 0) {
            layer.msg("请确认密码");
            flag = 0;
        }
        if(flag) {
            if(!nameReg.test(registerName)) {
                layer.msg("用户名以1-10位英文字母，数字，下划线组成");
                flag = 0;
            }else if(!passwordReg.test(registerPassword)) {
                layer.msg("密码以6-15位英文字母，数字，下划线组成");
                flag = 0;
            }else if(registerPassword !== confirm) {
                layer.msg("两次密码输入不一致");
                flag = 0;
            }
        }
        if(flag) {
            $.ajax({
                type: "post",
                url: "http://localhost:8080/bookshop/register.json",
                data: { name: registerName, password: registerPassword },
                dataType: "json",
                success: function(data) {
                    layer.msg(data["content"], {time: 500});
                    if(data["status"]) {
                        $("#registModal").modal("hide");
                        $("#loginModal").modal("show");
                    }
                },
                error: function() {
                    layer.msg("注册失败，请重试");
                }
            });
        }
    });

    $(".logout").click(function() {
        $.ajax({
            url: "http://localhost:8080/bookshop/logout.json",
            success: function(data) {
                layer.msg(data["content"]);
                if(data["status"]){
                    layer.msg(data["content"]);
                    window.location.reload(true);
                }
            },
            error: function() {
                layer.msg("退出失败，请重试");
            }
        });
    });
});

