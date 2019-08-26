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
        <section class="content">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">交易列表</h3>

                                <div class="box-tools">
                                    <div class="input-group input-group-sm hidden-xs" style="width: 150px;">
                                        <input type="text" name="table_search" class="form-control pull-right" placeholder="输入发起人姓名搜索">

                                        <div class="input-group-btn">
                                            <button type="submit" class="btn btn-default searchBtn"><i class="fa fa-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <table class="table table-bordered table-hover" id="transferInfo">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>交易单号</th>
                                        <th>发起人</th>
                                        <th>接收人</th>
                                        <th>交易金额</th>
                                        <th>交易状态</th>
                                        <th>备注</th>
                                        <th>交易类型</th>
                                        <th>交易时间</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                </table>
                                <nav aria-label="Page navigation" class="text-right">
                                    <ul class="pull-right pagination" id="pages"></ul>
                                </nav>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
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

<!-- ./wrapper -->
<div class="modal fade" id="deleteDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <h4>是否确认删除?</h4>
            </div>
            <div class="modal-footer" style="margin-top:0px;">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="confirmDelete" tranferId="">确定</button>
            </div>
        </div>
    </div>
</div>

<!-- jQuery 3 -->
<script src="<c:url value="/bower_components/jquery/dist/jquery.min.js"/>"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<c:url value="/bower_components/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<!-- AdminLTE App -->
<script src="<c:url value="/dist/js/adminlte.min.js"/>"></script>

<script type="text/javascript" src="<c:url value='/dist/js/bootstrap-paginator.js'/>"></script>

<script>
    $(function () {
        /*初始化界面*/
        Bootstrap_paging(1)
        function Bootstrap_paging(page){
            var json=new Object();
            json.pageNumber=page;//页码
            json.pageSize=10;//页面大小
            $.ajax({
                type: "POST",
                url:"<c:url value='/records/queryAllTransfer'/>",
                dataType:"json",
                data: json,
                beforeSend:function (){
                    $("#transferInfo tbody").html("<tr style='display:none;'><td colspan='8'></td></tr><tr><td colspan='10'><div id='waiting'>waiting</div></td></tr>");
                },
                success:function(data){
                    $("#transferInfo tbody").html("");
                    if(data.rows==0){
                        $("#transferInfo tbody").html("<tr style='display:none;'><td colspan='8'></td></tr><tr><td colspan='10'><p class='text-center' style='color:#777;padding-top:20px;'>暂无数据</p></td></tr>")
                        return;
                    }
                    console.log(data);
                    for(var i=0;i<data.size;i++){
                        var node="\n" +
                            "<tr>\n" +
                            "<td>"+(i+1)+"</td>\n" +
                            "<td>"+data.data[i].transfer_num+"</td>\n" +
                            "<td>"+data.data[i].sponsorName+"</td>\n"+
                            "<td>"+(data.data[i].recieverName==null?'空':data.data[i].recieverName)+"</td>\n"+
                            "<td>"+data.data[i].transfer_amount+"</td>\n"+
                            "<td>"+(data.data[i].transfer_status == 0?'已取消': data.data[i].transfer_status == 1?'已完成': data.data[i].transfer_status == 2?'处理中':'')+"</td>\n"+
                            "<td>"+data.data[i].remark+"</td>\n"+
                            "<td>"+(data.data[i].transfer_type == 0?'存款': data.data[i].transfer_type == 1?'取款': data.data[i].transfer_type == 2?'转账':'')+"</td>\n"+
                            "<td>"+data.data[i].transfer_time+"</td>\n"+
                            "<td><button  type='button' class='btn btn-danger btn-sm deleteBtn' transferId='"+data.data[i].id+"'>删除</button></td>\n"
                            "</tr>"
                        $("#transferInfo tbody").append(node)
                    }
                    $(".deleteBtn").click(function(){
                        $("#deleteDialog").modal('show');
                        var transferId=$(this).attr("transferId");
                        $("#confirmDelete").attr("transferId",transferId);
                    });

                    $(".searchBtn").click(function () {
                        var sponsorName=$("input[name='table_search']").val();
                    })

                    var options = {
                        bootstrapMajorVersion : 3,
                        currentPage : page, // 当前页数
                        numberOfPages : 5, // 显示按钮的数量
                        totalPages : Math.ceil(data["total"]/10), // 总页数
                        itemTexts : function(type, page, current) {
                            switch (type) {
                                case "first":
                                    return "首页";
                                case "prev":
                                    return "上一页";
                                case "next":
                                    return "下一页";
                                case "last":
                                    return "末页";
                                case "page":
                                    return page;
                            }
                        },
                        // 点击事件，用于通过Ajax来刷新整个list列表
                        onPageClicked : function(event, originalEvent, type, page) {
                            Bootstrap_paging(page);
                        }
                    };
                    $("#pages").bootstrapPaginator(options);//显示控件
                }
            });
        }


        $("#confirmDelete").click(function(){
            var id = $(this).attr("transferId");
            $.ajax({
                type: "GET",
                url:"<c:url value='/records/deleteTransfer'/>",
                dataType:"json",
                data: {"id":id},
                success:function(data){
                    $("#confirmDelete").modal('hide');
                    window.location.reload();
                }
            });
        });
        /*按照姓名查找查找事件*/
        $("#query_customer").click(function(){
            Bootstrap_paging(1);
        })
    });
</script>
</body>
</html>