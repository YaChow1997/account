<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>注册</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<c:url value="/bower_components/bootstrap/dist/css/bootstrap.min.css"/>">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<c:url value="/bower_components/font-awesome/css/font-awesome.min.css"/>">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<c:url value="/bower_components/Ionicons/css/ionicons.min.css"/>">
    <!-- Theme style -->
    <link rel="stylesheet" href="<c:url value="/dist/css/AdminLTE.min.css"/>">
    <!-- iCheck -->
    <link rel="stylesheet" href="<c:url value="/plugins/iCheck/square/blue.css"/>">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition register-page">
<div class="register-box">
    <div class="register-logo">
        <a href=""><b>注&nbsp;&nbsp;&nbsp;&nbsp;册</b></a>
    </div>
    <div class="register-box-body">
        <p class="login-box-msg">注册账号</p>

        <form>
            <div class="form-group has-feedback">
                <input type="text" class="form-control" placeholder="姓名" name="name">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="tel" class="form-control" placeholder="联系方式" name="telecode">
                <span class="glyphicon glyphicon-phone form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="email" class="form-control" placeholder="邮箱" name="email">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>

            <div class="form-group has-feedback">
                <input type="text" class="form-control" placeholder="身份证号" name="card_num">
                <span class="glyphicon glyphicon-paperclip form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="密码" name="password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="确认密码" name="confirmPassword">
                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <a href="login.jsp" class="text-center">已有账号？返回登陆</a>
                        </label>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="button" class="btn btn-primary btn-block btn-flat" id="register">注册</button>
                </div>
                <!-- /.col -->
            </div>
        </form>
    </div>
    <!-- /.form-box -->
</div>
<!-- /.register-box -->

<!-- jQuery 3 -->
<script src="<c:url value="/bower_components/jquery/dist/jquery.min.js"/>"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<c:url value="/bower_components/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<!-- iCheck -->
<script src="<c:url value="/plugins/iCheck/icheck.min.js"/>"></script>
<script>
    $(function () {
        $("#password").keydown(function() {
            if (event.keyCode == "13") {//keyCode=13是回车键
                $('#register').click();
            }
        });
        $("#register").click(function(){
            var name=$("input[name='name']").val();
            var email=$("input[name='email']").val();
            var password=$("input[name='password']").val();
            var card_num=$("input[name='card_num']").val();
            var telecode=$("input[name='telecode']").val();
            var confirmPassword=$("input[name='confirmPassword']").val();
            if (name==null||name=="") {
                alert("姓名不能为空");
                return;
            }
            if (!telecode.match("^1[3456789]\\d{9}$")) {
                alert("手机号格式错误");
                return;
            }
            if (!email.match("^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$")) {
                alert("邮箱格式错误");
                return;
            }
            if(!card_num.match("^[1-9]\\d{5}(18|19|([23]\\d))\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{3}[0-9Xx]$")){
                alert("身份证号格式错误");
                return;
            }
            if(password!=confirmPassword){
                alert("两次密码输入不一致");
                return;
            }
        $.ajax({
                type: "post",
                contentType:"application/x-www-form-urlencoded",
                url: "<c:url value='/user/register'/>",
                data: {"name":name,"email":email,"password":password,"telecode":telecode,"card_num":card_num},
                dataType: "json",
                success:function(data){
                if(data.status.code==1){
                alert("注册成功,返回登录");
                window.location.href="register.jsp";
                return;
                }
                if(data.status.code==-1){
                alert("注册失败");
                return;
                }
                alert(data.status.message);
                }
            })
        })
    });
</script>
</body>
</html>
