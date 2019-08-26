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
        <a href="index1.jsp" class="logo">
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
                            <h3 class="box-title">新闻列表</h3>

                            <div class="box-tools">
                                <div class="input-group input-group-sm hidden-xs" style="width: 150px;">
                                    <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                                    <div class="input-group-btn">
                                        <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table class="table table-bordered table-hover" id="newsInfo">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>标题</th>
                                    <th>作者</th>
                                    <th>创建时间</th>
                                    <th>更新时间</th>
                                    <th>索引号</th>
                                    <th>查看详情</th>
                                    <th>修改</th>
                                    <th>删除</th>
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
<!--删除界面-->
</div> <div class="modal fade" id="deleteNewsDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content" role="document">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">删除</h4>
            </div>
            <div class="modal-body">
                <p>是否确认删除？</p>
                <form id="deleteForm">
                    <input type="hidden" name="id"/>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-danger" id="confirmDeleteBtn">确认删除</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- REQUIRED JS SCRIPTS -->

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
                url:"<c:url value='/news/queryAll'/>",
                dataType:"json",
                data: json,
                beforeSend:function (){
                    $("#newsInfo tbody").html("<tr style='display:none;'><td colspan='8'></td></tr><tr><td colspan='10'><div id='waiting'>等待中</div></td></tr>");
                },
                success:function(data){
                    $("#newsInfo tbody").html("");
                    if(data.rows==0){
                        $("#newsInfo tbody").html("<tr style='display:none;'><td colspan='8'></td></tr><tr><td colspan='10'><p class='text-center' style='color:#777;padding-top:20px;'>暂无数据</p></td></tr>")
                        return;
                    }
                    console.log(data);
                    for(var i=0;i<data.size;i++){
                        var node="\n" +
                            "<tr>\n" +
                            "<td class='id'>"+data.data[i].id+"</td>\n" +
                            "<td>"+data.data[i].head+"</td>\n"+
                            "<td>"+data.data[i].creator+"</td>\n"+
                            "<td>"+data.data[i].create_time+"</td>\n"+
                            "<td>"+data.data[i].update_time +"</td>\n"+
                            "<td>"+data.data[i].order_index+"</td>\n"+
                            "<td><a type='button' class='btn btn-info btn-sm infoBtn' href='<c:url value='/news/read'/>?id="+data.data[i].id+"'>查看详情</a></td>\n"+
                            "<td><a type='button' class='btn btn-info btn-sm updateBtn' href='<c:url value='/news/toUpdateNews'/>?id="+data.data[i].id+"'>修改新闻</a></td>\n"+
                            "<td><button  type='button' class='btn btn-danger btn-sm deleteBtn' deleteId='"+data.data[i].id+"'>删除</button></td>\n"
                        "</tr>"
                        $("#newsInfo tbody").append(node)
                    }
                    $(".deleteBtn").click(function(){
                        $("#deleteNewsDialog").modal('show');
                        var deleteId=$(this).attr("deleteId");
                        $("#confirmDeleteBtn").attr("deleteId",deleteId);
                    });

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


        $("#confirmDeleteBtn").click(function(){
            var id=$(this).attr("deleteId");
            var json={id:id,is_delete:"1"};
            $.ajax({
                type: "post",
                url: "<c:url value='/news/deleteNews'/>",
                dataType: "json",
                data: json,
                success: function (data) {
                    $("#deleteNewsDialog").modal('hide');
                    window.location.reload();
                }
            })
        })
        /*按照姓名查找查找事件*/
        $("#query_customer").click(function(){
            Bootstrap_paging(1);
        })
    });
</script>

</body>
</html>
