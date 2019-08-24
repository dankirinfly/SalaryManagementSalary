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
    </head>
    <body class="bootstrap-admin-without-padding">
    	<nav class="navbar navbar-default navbar-inverse navbar-fixed-top " role="navigation">
			<h1 align="center" style="color:FloralWhite;">ログインページ</h1>
		</nav>
        <div class="container">
            <div class="row">
                <form method="post" action="${pageContext.request.contextPath }/font/login.action" class="bootstrap-admin-login-form">
                    <h1>ログイン</h1>
                    <div class="form-group">
                        <input class="form-control" type="text" name="employeeaccount" placeholder="ログイン">
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="password" name="employeepassword" placeholder="パスワード">
                    </div>
                    <button class="btn btn-lg btn-primary" type="submit">確定</button>
                </form>
            </div>
        </div>
    </body>
</html>
