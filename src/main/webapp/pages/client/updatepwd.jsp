<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Account|index</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="<c:url value="/bower_components/bootstrap/dist/css/bootstrap.min.css"/>">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<c:url value="/bower_components/font-awesome/css/font-awesome.min.css"/>">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<c:url value="/bower_components/Ionicons/css/ionicons.min.css"/>">
    <!-- Theme style -->
    <link rel="stylesheet" href="<c:url value="/dist/css/AdminLTE.min.css"/>">

    <link rel="stylesheet" href="<c:url value="/dist/css/skins/skin-blue.min.css"/>">

    <!-- Google Font -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <style type="text/css">
        .changepwd{
            position: relative;
            left: 25%;
            top: 10%;
            width: 1500px;
        }
    </style>
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <!-- Main Header -->
    <header class="main-header">

        <!-- Logo -->
        <a href="index.jsp" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>客</b>户</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>互联网+</b>个人资金账户管理系统</span>
        </a>
        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Tasks Menu -->
                    <li class="dropdown tasks-menu">
                        <ul class="dropdown-menu">
                            <li class="header">You have 9 tasks</li>
                            <li>
                                <!-- Inner menu: contains the tasks -->
                                <ul class="menu">
                                    <li><!-- Task item -->
                                        <a href="#">
                                            <!-- Task title and progress text -->
                                            <h3>
                                                Design some buttons
                                                <small class="pull-right">20%</small>
                                            </h3>
                                            <!-- The progress bar -->
                                            <div class="progress xs">
                                                <!-- Change the css width attribute to simulate progress -->
                                                <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar"
                                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">20% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="#">View all tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- User Account Menu -->
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                            <img src="${sessionScope.user.picture}" class="user-image user_pic" alt="User Image">
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                            <span class="hidden-xs">${sessionScope.user.name}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- The user image in the menu -->
                            <li class="user-header">
                                <img src="${sessionScope.user.picture}" class="user-image user_pic" alt="User Image">
                                <p>
                                    ${sessionScope.user.name}
                                    <small>注册于${sessionScope.user.create_time}</small>
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-right">
                                    <a href="<c:url value="/pages/login.jsp"/>" class="btn btn-default btn-flat">注销</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

            <!-- Sidebar user panel (optional) -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="${sessionScope.user.picture}" class="user-image user_pic" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>${sessionScope.user.name}</p>
                    <!-- Status -->
                    <a href="#"><i class="fa fa-circle text-success"></i>客户</a>
                </div>
            </div>
            <!-- Sidebar Menu -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">客户侧栏</li>
                <li class="active"><a href="<c:url value="/pages/client/news.jsp"/>"><i class="fa fa-newspaper-o"></i> <span>新闻列表</span></a></li>
                <li><a href="<c:url value="/pages/client/records.jsp"/>"><i class="fa fa-list"></i> <span>查看交易记录</span></a></li>
                <li class="treeview">
                    <a href="#"><i class="fa fa-cc-visa"></i> <span>存款/取款/转账</span>
                        <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="<c:url value="/accounts/toDeposit"/>">存款<i class="fa fa-money"></i></a></li>
                        <li><a href="<c:url value="/accounts/toWithdraw"/>">取款<i class="fa fa-credit-card"></i></a></li>
                        <li><a href="<c:url value="/accounts/toTransfer"/>">转账<i class="fa fa-exchange"></i></a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#"><i class="fa fa-info"></i> <span>个人信息</span>
                        <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="<c:url value="/pages/client/updatepwd.jsp"/>">修改个人密码<i class="fa fa-asterisk"></i></a></li>
                        <li><a href="<c:url value="/accounts/toUpdateInfo"/>">修改个人信息<i class="fa fa-user"></i></a></li>
                    </ul>
                </li>
            </ul>
            <!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

        <!-- Main content -->
        <section class="content container-fluid">

            <section class="content">
                <div class="changepwd">
                    <!-- right column -->
                    <div class="col-md-6">
                        <!-- Horizontal Form -->
                        <!-- general form elements disabled -->
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">修改登录密码</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <form role="form">
                                    <!-- text input -->
                                    <div class="form-group">
                                        <label>原密码</label>
                                        <input type="text" class="form-control" id="oldPassword" placeholder="请输入原密码">
                                    </div>
                                    <div class="form-group">
                                        <label>新密码</label>
                                        <input type="text" class="form-control" id="newPassword" placeholder="请输入新密码">
                                    </div>
                                    <div class="form-group">
                                        <label>密码确认</label>
                                        <input type="text" class="form-control" id="confirmPassword" placeholder="请再输入一次密码">
                                    </div>
                                    <div class="box-footer">
                                        <div class="row">
                                            <div class="col-sm-4 col-sm-offset-2">
                                                <button type="button" class="form-control btn btn-primary" id="confirmUpdate">确认修改</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <!--/.col (right) -->
                </div>
                <!-- /.row -->
            </section>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
            Anything you want
        </div>
        <!-- Default to the left -->
        <strong>Copyright &copy; 2019 <a href="#">Company</a>.</strong> All rights reserved.
    </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="<c:url value="/bower_components/jquery/dist/jquery.min.js"/>"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<c:url value="/bower_components/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<!-- AdminLTE App -->
<script src="<c:url value="/dist/js/adminlte.min.js"/>"></script>

<script>
    $(document).ready(function () {
        $("#confirmUpdate").click(function () {
            var oldPassword=$("#oldPassword").val();
            var password=$("#newPassword").val();
            var confirmPassword=$("#confirmPassword").val();
            if(oldPassword==""||oldPassword==null){
                alert("旧密码不能为空！");
                return;
            }
            if(/^[0-9a-zA-Z_]{3,12}$/.test(oldPassword)!=1){
                alert("旧密码格式有误！");
                return;
            }
            if(password==""||password==null){
                alert("新密码不能为空！");
                return;
            }
            if(/^[0-9a-zA-Z_]{3,12}$/.test(password)!=1){
                alert("新密码格式有误！");
                return;
            }
            if(confirmPassword==""||confirmPassword==null){
                alert("确认密码不能为空！");
                return;
            }
            if(confirmPassword!=password){
                alert("两次输入的密码不一致");
                return;
            }
            $.ajax({
                type: "POST",
                contentType:"application/x-www-form-urlencoded",
                url: "<c:url value='/user/changePassword'/>",
                data: {"oldPassword":oldPassword,"password":password},
                dataType: "json",
                success: function(data){
                    if(data.status.code==1){
                        alert("密码修改成功！");
                        window.location.href="<c:url value="/pages/login.jsp"/>"
                    }else{
                        alert(data.status.message);
                    }
                },
                error:function(){
                    console.log("发送失败")
                }
            });

        })
        $('.sidebar-menu').tree()
    })
</script>
</body>
</html>