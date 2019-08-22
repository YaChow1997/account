<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Account|index</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<c:url value="/bower_components/bootstrap/dist/css/bootstrap.min.css"/>">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<c:url value="/bower_components/font-awesome/css/font-awesome.min.css"/>">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<c:url value="/bower_components/Ionicons/css/ionicons.min.css"/>">
    <!-- daterange picker -->
    <link rel="stylesheet" href="<c:url value="/bower_components/bootstrap-daterangepicker/daterangepicker.css"/>">
    <!-- bootstrap datepicker -->
    <link rel="stylesheet"
          href="<c:url value="/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"/>">
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="<c:url value="/plugins/iCheck/all.css"/>">
    <!-- Bootstrap Color Picker -->
    <link rel="stylesheet"
          href="<c:url value="/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"/>">
    <!-- Bootstrap time Picker -->
    <link rel="stylesheet" href="<c:url value="/plugins/timepicker/bootstrap-timepicker.min.css"/>">
    <!-- Select2 -->
    <link rel="stylesheet" href="<c:url value="/bower_components/select2/dist/css/select2.min.css"/> ">
    <!-- Theme style -->
    <link rel="stylesheet" href="<c:url value="/dist/css/AdminLTE.min.css"/>">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<c:url value="/dist/css/skins/_all-skins.min.css"/>">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <!-- Main Header -->
    <header class="main-header">

        <!-- Logo -->
        <a href="index.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>管理</b>员</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>互联网+</b>后台管理</span>
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
                    <a href="#"><i class="fa fa-circle text-success"></i>管理员</a>
                </div>
            </div>
            <!-- Sidebar Menu -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">管理员侧栏</li>
                <li class="active"><a href="<c:url value="/pages/admin/index1.jsp"/>"><i class="fa fa-bank "></i> <span>首页</span></a></li>
                <li class="treeview">
                    <a href="<c:url value="/pages/admin/"/>"><i class="fa fa-user-secret"></i> <span>新闻管理</span>
                        <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="<c:url value="/pages/admin/newslist.jsp"/>">新闻列表<i class="fa fa-newspaper-o"></i></a></li>
                        <li><a href="<c:url value="/pages/admin/addnews.jsp"/>">添加新闻<i class="fa fa-plus-square"></i></a></li>
                        <li><a href="<c:url value="/pages/admin/updatenews.jsp"/>">修改新闻<i class="fa fa-plus-square"></i></a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#"><i class="fa fa-user-secret"></i> <span>账户管理</span>
                        <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="<c:url value="/pages/admin/accountlist.jsp"/>">账户列表<i class="fa fa-list-ol"></i></a></li>
                        <li><a href="<c:url value="/pages/admin/recordlist.jsp"/>">客户交易列表<i class="fa fa-list-ol"></i></a></li>
                        <li><a href="<c:url value="/accounts/toOpenAccount"/>">开户<i class="fa fa-users"></i></a></li>

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
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">开户</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <form role="form">
                    <div class="box-body">
                        <div class="form-group">
                            <label>客户姓名</label>
                            <select class="form-control select2" style="width: 100%;" name="user_id">
                                <option selected="selected" value="">请选择开户用户</option>
                                <c:forEach var="user" items="${users}">
                                    <option value="${user.id}">${user.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>电话号码</label>
                            <input type="text" class="form-control" name="telecode" placeholder="请输入号码">
                        </div>
                        <div class="form-group">
                            <label>身份证</label>
                            <input type="text" class="form-control" name="card_num" placeholder="请输入身份证">
                        </div>
                        <div class="form-group">
                            <label>邮箱</label>
                            <input type="email" class="form-control" name="email" placeholder="请输入邮箱">
                        </div>
                        <div class="form-group">
                            <label>住址</label>
                            <input type="text" class="form-control" name="address" placeholder="请输入住址">
                        </div>
                        <div class="form-group">
                            <label>出生年月</label>
                            <input type="text" class="form-control" name="birthday" id="datepicker" placeholder="请输入出生年月">
                        </div>
                        <div class="form-group">
                            <label>开户金额</label>
                            <input type="text" class="form-control" name="open_money" placeholder="请输入开户金额">
                        </div>
                    </div>
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary" id="addAccount">提交</button>
                    </div>
                </form>
            </div>
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
<script src="<c:url value="/bower_components/jquery/dist/jquery.min.js"/> "></script>
<!-- Bootstrap 3.3.7 -->
<script src="<c:url value="/bower_components/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<!-- Select2 -->
<script src="<c:url value="/bower_components/select2/dist/js/select2.full.min.js"/>"></script>
<!-- InputMask -->
<script src="<c:url value="/plugins/input-mask/jquery.inputmask.js"/>"></script>
<script src="<c:url value="/plugins/input-mask/jquery.inputmask.date.extensions.js"/>"></script>
<script src="<c:url value="/plugins/input-mask/jquery.inputmask.extensions.js"/>"></script>
<!-- date-range-picker -->
<script src="<c:url value="/bower_components/moment/min/moment.min.js"/>"></script>
<script src="<c:url value="/bower_components/bootstrap-daterangepicker/daterangepicker.js"/>"></script>
<!-- bootstrap datepicker -->
<script src="<c:url value="/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"/>"></script>
<!-- bootstrap color picker -->
<script src="<c:url value="/bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"/>"></script>
<!-- bootstrap time picker -->
<script src="<c:url value="/plugins/timepicker/bootstrap-timepicker.min.js"/>"></script>
<!-- SlimScroll -->
<script src="<c:url value="/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"/>"></script>
<!-- iCheck 1.0.1 -->
<script src="<c:url value="/plugins/iCheck/icheck.min.js"/>"></script>
<!-- FastClick -->
<script src="<c:url value="/bower_components/fastclick/lib/fastclick.js"/>"></script>
<!-- AdminLTE App -->
<script src="<c:url value="/dist/js/adminlte.min.js"/>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<c:url value="/dist/js/demo.js"/>"></script>

<script>
    $(function () {
        //Initialize Select2 Elements
        $('.select2').select2()
        //选择用户事件
        $("select[name='user_id']").change(function () {
            var user_id=$(this).val();
            $.ajax({
                type: "get",
                url: "<c:url value='/user/queryByUserId'/>" ,
                contentType:"application/x-www-form-urlencoded",
                data: {"id":user_id},
                dataType: "json",
                success: function (data) {
                    $("input[name='telecode']").val(data.result.telecode);
                    $("input[name='card_num']").val(data.result.card_num);
                    $("input[name='email']").val(data.result.email);
                    $("input[name='address']").val(data.result.address);
                    $("input[name='birthday']").val(data.result.birthday);
                    $('#datepicker').datepicker('setDate',data.result.birthday);
                }
            });
        })
        //Date picker
        $('#datepicker').datepicker({
            autoclose: true,
            format: 'yyyy-mm-dd'
        })
        $("#addAccount").click(function(){
            var user_id=$("select[name='user_id']").val();
            var email=$("input[name='email']").val();
            var card_num=$("input[name='card_num']").val();
            var telecode=$("input[name='telecode']").val();
            var open_money=$("input[name='open_money']").val();
            if (user_id==null||user_id=="") {
                alert("请选择用户");
                return;
            }
            // if (!telecode.match("^1[3456789]\\d{9}$")) {
            //     alert("号码格式错误");
            //     return;
            // }
            // if(!card_num.match("^[1-9]\\d{5}(18|19|([23]\\d))\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{3}[0-9Xx]$")){
            //     alert("身份证号格式错误");
            //     return;
            // }
            if (!email.match("^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$")) {
                alert("邮箱格式错误");
                return;
            }

            if(!money.match("^([1-9]\\d{0,9}|0)([.]?|(\\.\\d{1,2})?)$")){
                alert("开户金额非法");
                return;
            }
            $.ajax({
                type: "post",
                url: "<c:url value='/accounts/addAccount'/>" ,
                contentType:"application/x-www-form-urlencoded",
                data: {"user_id":user_id,"email":email,"telecode":telecode,"cardNumber":card_num,"money":open_money},
                dataType: "json",
                success: function (data) {
                        alert("开设成功");
                        window.location.reload();
                }
            });
        })
    })
</script>
</body>
</html>
