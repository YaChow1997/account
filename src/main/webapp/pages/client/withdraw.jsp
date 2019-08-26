<%@ page import="com.account.entity.Account" %>
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
    <!-- Select2 -->
    <link rel="stylesheet" href="<c:url value="/bower_components/select2/dist/css/select2.min.css"/> ">
    <!-- Google Font -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <!-- Main Header -->
    <header class="main-header">

        <!-- Logo -->
        <a href="#" class="logo">
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
        <section class="content container-fluid">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class=""><a href="#deposit" data-toggle="tab" aria-expanded="false">存款</a></li>
                    <li class="active"><a href="#withdraw" data-toggle="tab" aria-expanded="true">取款</a></li>
                    <li class=""><a href="#transfer" data-toggle="tab" aria-expanded="false">转账</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane" id="deposit">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">账户余额</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" value="${account.balance}元" disabled>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">存款金额</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="transfer_amount1" placeholder="请输入存款金额">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">支付密码</label>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control" name="password1" placeholder="请输入支付密码">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-danger" id="depositBtn">存款</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- /.tab-pane -->
                    <div class="tab-pane active" id="withdraw">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">账户余额</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" value="${account.balance}元" disabled>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">取款金额</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="transfer_amount2" placeholder="请输入取款金额">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">支付密码</label>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control" name="password2" placeholder="请输入支付密码">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-danger" id="withdrawBtn">取款</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- /.tab-pane -->
                    <div class="tab-pane" id="transfer">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">收款人</label>
                                <div class="col-sm-4">
                                    <select class="form-control select2" style="width: 100%;" name="user_id">
                                        <option selected="selected" value="">请选择</option>
                                        <c:forEach var="user" items="${users}">
                                            <option value="${user.id}">${user.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">电话号码</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="telecode" placeholder="请输入输入号码">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">转账金额</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="transfer_amount3" placeholder="请输入转账金额">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">支付密码</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="password3" placeholder="请输入密码">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">备注</label>
                                <div class="col-sm-10">
                                    <textarea type="text"  class="form-control" name="remark" rows="3" placeholder="请填写备注（可不填）"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="button" class="btn btn-danger"  id="transferBtn">转账</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- /.tab-pane -->
                </div>
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

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="<c:url value="/bower_components/jquery/dist/jquery.min.js"/>"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<c:url value="/bower_components/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<!-- AdminLTE App -->
<script src="<c:url value="/dist/js/adminlte.min.js"/>"></script>

<!-- Select2 -->
<script src="<c:url value="/bower_components/select2/dist/js/select2.full.min.js"/>"></script>

<script>
    $(document).ready(function () {
        $("#depositBtn").click(function(){
            var transfer_amount=$("input[name='transfer_amount1']").val();
            var password=$("input[name='password1']").val();
            if(!transfer_amount.match("^([1-9]\\d{0,9}|0)([.]?|(\\.\\d{1,2})?)$")){
                alert("请核实存款金额");
                return;
            }
            if(password==""||isNaN(password)){
                alert("请核实支付密码");
                return;
            }
            var json={transfer_amount:transfer_amount,password:password};
            $.ajax({
                type: "post",
                url: "<c:url value='/accounts/deposit'/>",
                contentType:"application/x-www-form-urlencoded",
                data: json,
                dataType: "json",
                success: function (data) {
                    if(data.status.code==1){
                        alert("存款成功");
                        window.location.href="<c:url value='/accounts/toDeposit'/>";
                    }else{
                        alert(data.status.message);
                    }
                },
                error:function(){
                    alert("发送失败")
                }
            });
        })

        $("#withdrawBtn").click(function(){
            var transfer_amount=$("input[name='transfer_amount2']").val();
            var password=$("input[name='password2']").val();
            if(!transfer_amount.match("^([1-9]\\d{0,9}|0)([.]?|(\\.\\d{1,2})?)$")){
                alert("取款金额格式有误");
                return;
            }
            if(password==""||isNaN(password)){alert("密码不能为空");return;}
            var json={transfer_amount:transfer_amount,password:password};
            $.ajax({
                type: "post",
                url: "<c:url value='/accounts/withdraw'/>",
                contentType:"application/x-www-form-urlencoded",
                data: json,
                dataType: "json",
                success: function (data) {
                    if(data.status.code==1){
                        alert("取款成功");
                        window.location.href="<c:url value='/accounts/toWithdraw'/>";
                    }else{
                        alert(data.status.message);
                    }
                },
                error:function(){
                    alert("发送失败")
                }
            });
        })

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
                }
            });
        })
        $("#transferBtn").click(function(){
            var toUser_id=$("select[name='user_id']").val();
            var transfer_amount=$("input[name='transfer_amount3']").val();
            var remark=$("textarea[name='remark']").val();
            var password=$("input[name='password3']").val();
            if (toUser_id==null||toUser_id=="") {
                alert("请选择用户");
                return;
            }
            console.log(transfer_amount)
            if(!transfer_amount.match("^([1-9]\\d{0,9}|0)([.]?|(\\.\\d{1,2})?)$")){
                alert("请核实转账金额");
                return;
            }
            if(password==""||isNaN(password)){alert("支付密码未填写");return;}
            var json={toUserId:toUser_id,transfer_amount:transfer_amount,remark:remark,password:password};
            $.ajax({
                type: "post",
                url: "<c:url value='/accounts/transfer'/>",
                contentType:"application/x-www-form-urlencoded",
                data: json,
                dataType: "json",
                success: function (data) {
                    if(data.status.code==1){
                        alert("转账成功");
                        window.location.href="<c:url value='/accounts/toTransfer'/>";
                    }else{
                        alert(data.status.message);
                    }
                },
                error:function(){
                    alert("发送失败")
                }
            });
        })
    })
</script>
</body>
</html>