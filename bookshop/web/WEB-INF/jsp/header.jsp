<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title></title>
    <link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<div class="modal fade" tabindex="-1" id="loginModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">登录</h4>
            </div>
            <div class="modal-body">
                <div class="input-group col-md-7 container">
                    <span class="input-group-addon">用户名</span>
                    <input type="text" class="form-control" id="loginName">
                </div>
            </div>
            <div class="modal-body">
                <div class="input-group col-md-7 container">
                    <span class="input-group-addon">密&nbsp;&nbsp;&nbsp;码</span>
                    <input type="text" class="form-control" id="loginPassword">
                </div>
            </div>
            <%--<div class="modal-body">--%>
                <%--<div class="row">--%>
                    <%--<div class="col-md-3"></div>--%>
                    <%--<div class="col-md-3">--%>
                        <%--<input type="text" class="form-control" placeholder="&nbsp请输入验证码">--%>
                    <%--</div>--%>
                    <%--<div class="col-md-3">--%>
                        <%--<img src="">--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary login">登录</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<div class="modal fade" tabindex="-1" id="registModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">注册</h4>
            </div>
            <div class="modal-body">
                <div class="input-group col-md-7 container">
                    <span class="input-group-addon">用户名</span>
                    <input type="text" class="form-control" id="registerName">
                </div>
            </div>
            <div class="modal-body">
                <div class="input-group col-md-7 container">
                    <span class="input-group-addon">密&nbsp;&nbsp;&nbsp;码</span>
                    <input type="text" class="form-control" id="registerPassword">
                </div>
            </div>
            <div class="modal-body">
                <div class="input-group col-md-7 container">
                    <span class="input-group-addon">确&nbsp;&nbsp;&nbsp;认</span>
                    <input type="text" class="form-control" id="confirm" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请再输入一次密码">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary register">注册</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="${pageContext.request.contextPath}">My BookShop</a>
        </div>
        <div class="col-md-1"></div>
        <div class="navbar-collapse">
            <form class="navbar-form navbar-left" method="post">
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" class="form-control factor" placeholder="书名、作者">
                        <span class="input-group-btn">
                            <button class="btn btn-default find" type="button">
                                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
							</button>
                        </span>
                    </div>
                </div>
            </form>
            <div class="col-md-1"></div>
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/tags.html">分类浏览</a></li>
                <li><a href="${pageContext.request.contextPath}/recommend.html">我猜</a></li>
                <li><a href="#" id="home">我读</a></li>
                <%--<li class="active"><a href="#">消息<span class="badge">99+</span></a></li>--%>
            </ul>
            <div class="col-md-1"></div>
            <div class="navbar-right">
                <c:choose>
                    <c:when test="${empty(user)}">
                        <p class="navbar-text">
                            <a href="#" class="navbar-link" data-toggle="modal" data-target="#loginModal">登录</a>
                            <a href="#" class="navbar-link" data-toggle="modal" data-target="#registModal">注册</a>
                        </p>
                    </c:when>
                    <c:otherwise>
                        <ul class="nav navbar-nav navbar-right">
                            <%--<p class="navbar-text">--%>
                                <%--<a><img src="${pageContext.request.contextPath}/images/icon-cort.png"></a>--%>
                                <%--<a href="#" class="navbar-link">购书单</a>--%>
                            <%--</p>--%>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    ${user.userName}的账号&nbsp;<span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="${pageContext.request.contextPath}/user.html">个人主页</a></li>
                                    <%--<li><a href="#">我的订单</a></li>--%>
                                    <li><a href="">账号管理</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#" class="logout">退出</a></li>
                                </ul>
                            </li>
                            <li>&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        </ul>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</nav>

<br><br><br><br><br><br>