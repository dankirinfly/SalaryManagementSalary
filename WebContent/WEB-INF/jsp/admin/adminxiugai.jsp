<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="bootstrap-admin-vertical-centered">
    <head>
        <title>tkzSalary</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/css/bootstrap-admin-theme.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/css/stytle.css" rel="stylesheet" media="screen" />
        <script type="text/javascript" src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
        <script type="text/javascript">
        	function tijiao(id){
        		 var path = "${pageContext.request.contextPath }/admin/adminxiugai.action";
        		 if($('#pw1').val()==$('#pw2').val()){
        			 $('#loginform').attr("action", path).submit();
        		 }else{
        			 alert("密码不一致");
        		 }
        		     
        	}
        	function xiugai(id){
        		var path = "${pageContext.request.contextPath }/admin/"; 
        		 $('#loginform').attr("action", path).submit(); 
        	}
        </script>
    </head>
    <body class="bootstrap-admin-without-padding">
    	<nav class="navbar navbar-default navbar-inverse navbar-fixed-top " role="navigation">
			<h1 align="center" style="color:FloralWhite;">タレントキリンズ株式会社　給与管理システム</h1>
		</nav>
        <div class="container">
            <div class="row">
                <form id = "loginform" method="post" action="" class="bootstrap-admin-login-form">
                    <h1>パスワード変更</h1>
                    <div class="form-group">
                        <input class="form-control" type="text" name="adminaccount" placeholder="アカウント">
                    </div>
                    <div class="form-group">
                        <input  class="form-control" type="password" name="adminpassword" placeholder="旧パスワード">
                    </div>
                    <div class="form-group">
                        <input id = "pw1" class="form-control" type="password" name="xinpassword" placeholder="新パスワード">
                    </div>
                    <div class="form-group">
                        <input id = "pw2" class="form-control"  placeholder="再度入力">
                    </div>
                    <button type="button" class="btn btn-lg btn-primary" onclick="tijiao(${traffic.trafficid })">確定</button>
                    <button type="button" class="btn btn-lg btn-primary" onclick="xiugai(${traffic.trafficid })">キャンセル</button>
                </form>
            </div>
        </div>
    </body>
</html>
