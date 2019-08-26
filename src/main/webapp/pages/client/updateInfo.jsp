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
        .accountInfo{
            position: relative;
            left: 33%;
            top: 10%;
            width: 1500px;
        }
        .change{
            position: relative;
            left:-100px;
            top: 250px;
            width: 1500px;
        }
       .accountDetail input[type="text"]{text-align:center}

    </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <!-- Main Header -->
    <header class="main-header">

        <!-- Logo -->
        <a href="index.html" class="logo">
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
                        <li><a href="<c:url value="/pages/client/deposit.jsp"/>">存款<i class="fa fa-money"></i></a></li>
                        <li><a href="<c:url value="/pages/client/withdraw.jsp"/>">取款<i class="fa fa-credit-card"></i></a></li>
                        <li><a href="<c:url value="/accounts/toTransfer"/>">我的业务<i class="fa fa-exchange"></i></a></li>
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

            <div class="accountInfo">

                <div class="col-md-4">
                    <!-- Widget: user widget style 1 -->
                    <div class="box box-widget widget-user">
                        <!-- Add the bg color to the header using any of the bg-* classes -->
                        <div class="widget-user-header bg-black" style="background: url('<c:url value="/dist/img/photo1.png"/>') center center;">
                            <h3 class="widget-user-username">${sessionScope.user.name}</h3>
                            <h5 class="widget-user-desc">注册于${sessionScope.user.create_time}</h5>
                        </div>
                        <div class="widget-user-image">
                            <img src="${sessionScope.user.picture}" class="user-image user_pic" alt="User Image">
                        </div>
                        <div class="box-footer">
                            <div class="accountDetail">
                                <div class="col-sm-4 border-right">
                                    <div class="description-block">
                                        <h5 class="description-header">账号</h5>
                                        <input type="text" class="form-control" id="account_num" value="${account.account_num}" disabled>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-4 border-right">
                                    <div class="description-block">
                                        <h5 class="description-header">余额</h5>
                                        <input type="text" class="form-control" id="balance" value="${account.balance}元"  disabled>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-4">
                                    <div class="description-block">
                                        <h5 class="description-header">账户状态</h5>
                                        <input type="text" class="form-control" id="is_lock" value="${account.is_lock==0?"正常":"已冻结"}"  disabled>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                                <!-- /.col -->

                            </div>
                            <!-- /.row -->
                        </div>
                    </div>
                    <!-- /.widget-user -->
                </div>
                <!-- /.col -->
            </div>
            <section class="content">
                <div class="change">
                    <div class="col-md-6">
                        <!-- About Me Box -->
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">修改个人信息</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">

                                <h5><i class="fa fa-envelope margin-r-5"></i> 邮箱</h5>
                                <div class="form-group has-feedback">
                                    <input type="text" class="form-control" name="email"  value="${sessionScope.user.email}">
                                </div>

                                <h5><i class="fa fa-phone margin-r-5"></i> 联系方式</h5>

                                <div class="form-group has-feedback">
                                    <input type="text" class="form-control" name="telecode" value="${sessionScope.user.telecode}">
                                </div>

                                <h5><i class="fa fa-paper-plane-o margin-r-5"></i> 所在地址</h5>

                                <div class="form-group has-feedback">
                                    <input type="text" class="form-control" name="address" value="${sessionScope.user.address}">
                                </div>

                                <h5><i class="fa fa-birthday-cake margin-r-5"></i> 出生日期</h5>

                                <div class="form-group has-feedback">
                                    <input type="text" class="form-control" id="datepicker" name="birthday" value="${sessionScope.user.birthday}">
                                </div>

                                <div class="row">
                                    <div class="col-xs-4 col-xs-offset-4" >
                                        <button type="button" class="btn btn-primary pull-left" id="updateInfo">确认修改</button>
                                        <button type="button" class="btn btn-primary pull-right updatePwd">修改支付密码</button>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                </div>
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

<div class="modal fade" id="confirmUpdateDialog" tabindex="-1" role="dialog" aria-labelledby="myModelLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">修改支付密码</h4>
            </div>
            <div class="modal-body">
                <label>新密码</label>
                <input type="text" class="form-control" name="newPassword" id="newPassword" placeholder="新密码">
                <label>确认密码</label>
                <input type="text" class="form-control" name="confirmPassword" id="confirmPassword" placeholder="确认密码">
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="confirmUpdate">确认修改</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="<c:url value="/bower_components/jquery/dist/jquery.min.js"/>"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<c:url value="/bower_components/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<!-- AdminLTE App -->
<script src="<c:url value="/dist/js/adminlte.min.js"/>"></script>

<script src="<c:url value="/plugins/timepicker/bootstrap-timepicker.min.js"/>"></script>

<script src="<c:url value="/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"/>"></script>

<script>
    $('#datepicker').datepicker({
        autoclose: true,
        format: 'yyyy-mm-dd',
        setDate:${sessionScope.user.birthday}
    })
    $(".updatePwd").click(function () {
        $("#confirmUpdateDialog").modal('show');
    })
    $("#updateInfo").click(function () {
        var email=$("input[name='email']").val();
        var telecode=$("input[name='telecode']").val();
        var address=$("input[name='address']").val();
        var birthday=$("input[name='birthday']").val();

        var json = new Object();
        json.email = email;
        json.telecode = telecode;
        json.address = address;
        json.birthday = birthday;
        console.log(json)
        $.ajax({
            type: "post",
            url: "<c:url value='/user/updateInfo'/>",
            dataType: "json",
            data: json,
            success: function (data) {
                if(data.status.code==1){
                    alert("修改成功！");
                    window.location.reload();
                }else{
                    alert("修改失败!");
                }
            }
        })
    })
    $("#confirmUpdate").click(function () {
        var password=$("#newPassword").val();
        var confirmPassword=$("#confirmPassword").val();
        if(password==""||password==null){
            alert("新密码不能为空！");
            return;
        }
        if(/^[0-9]{6}$/.test(password)!=1){
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
            url: "<c:url value='/accounts/changePassword'/>",
            data: {"password":password},
            dataType: "json",
            success: function(data){
                    alert("支付密码修改成功！");
                    $('#password').attr('value', password);
                    $('#newPassword').val("");
                    $('#confirmPassword').val("");
            },
            error:function(){
                console.log("发送失败")
            }
        });
        $("#confirmUpdateDialog").modal('hide');
        window.location.reload();
    })
</script>
</body>
</html>