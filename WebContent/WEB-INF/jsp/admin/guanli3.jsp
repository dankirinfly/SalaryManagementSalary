<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <title>tkzSalary</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/css/bootstrap-admin-theme.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/css/DT_bootstrap.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/css/stytle.css" rel="stylesheet" media="screen" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/twitter-bootstrap-hover-dropdown.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/vendors/datatables/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/DT_bootstrap.js"></script>
        <script type="text/javascript">
        	
        	function employeeChange(id){
        		 var path = "${pageContext.request.contextPath }/admin/employeeChange.action";    
        		 var $traffic=$('<input type="hidden" name="employeeid" />');
           		 $traffic.attr("value", id);
           		 $('#employeeForm').append($traffic);
           		 $('#employeeForm').attr("action", path).submit(); 
        	}
        	function employeeDeleate(id){
        		 var path = "${pageContext.request.contextPath }/admin/employeeDeleate.action";    
        		 var $traffic=$('<input type="hidden" name="employeeid" />');
           		 $traffic.attr("value", id);
           		 $('#employeeForm').append($traffic);
           		 $('#employeeForm').attr("action", path).submit(); 
        	}
        	
        </script>
    </head>
    <body class="bootstrap-admin-with-small-navbar">
		<nav class="navbar navbar-default navbar-inverse navbar-fixed-top " role="navigation">
			<h1 align="center" style="color:FloralWhite;">タレントキリンズ株式会社　給与管理システム</h1>
		</nav>

        <div class="container">
            <!-- left, vertical navbar & content -->
            <div class="row">
                <!-- left, vertical navbar -->
                <div class="col-md-3"> 
                   <div class="panel panel-default"> 
                    <div class="panel-heading"> 
                      ホームページ
                    </div> 
                    <div class="list-group">
                    <a class="list-group-item" href="${pageContext.request.contextPath }/admin/admin.action"><i class="fa fa-fw fa-gear"></i> ホームページ </a> 
                    </div> 
                   </div> 
                   <div class="panel panel-default"> 
                    <div class="panel-heading">
                      照会 
                    </div> 
                    <div class="list-group"> 
                     <a class="list-group-item" href="${pageContext.request.contextPath }/admin/search.action"><i class="fa fa-fw fa-gear"></i> 社員給与照会 </a>
                     <a class="list-group-item " href="${pageContext.request.contextPath }/admin/search2.action"><i class="fa fa-fw fa-lock"></i> 経費申込照会 </a>
                     <a class="list-group-item " href="${pageContext.request.contextPath }/admin/search3.action"><i class="fa fa-fw fa-sign-in"></i> 社員情報照会 </a>
                    </div> 
                   </div> 
                   <div class="panel panel-default"> 
                    <div class="panel-heading">
                      データ作成 
                    </div> 
                    <div class="list-group"> 
                     <a class="list-group-item " href="${pageContext.request.contextPath }/admin/forms.action"><i class="fa fa-fw fa-gear"></i> 社員給与入力 </a>
                     <a class="list-group-item " href="${pageContext.request.contextPath }/admin/forms2.action"><i class="fa fa-fw fa-lock"></i> 社員情報入力 </a>
                    <a class="list-group-item  " href="${pageContext.request.contextPath }/admin/forms3.action"><i class="fa fa-fw fa-gear"></i> お知らせ入力 </a>
                    </div> 
                   </div> 
                   <div class="panel panel-default"> 
                    <div class="panel-heading">
                      管理 
                    </div> 
                    <div class="list-group"> 
                     <a class="list-group-item" href="${pageContext.request.contextPath }/admin/guanli.action"><i class="fa fa-fw fa-gear"></i> 経費申込 </a>
                     <a class="list-group-item " href="${pageContext.request.contextPath }/admin/guanli2.action"><i class="fa fa-fw fa-lock"></i> 社員給与 </a>
                     <a class="list-group-item  active" href="${pageContext.request.contextPath }/admin/guanli3.action"><i class="fa fa-fw fa-sign-in"></i> 社員情報 </a>
                     <a class="list-group-item " href="${pageContext.request.contextPath }/admin/guanli4.action"><i class="fa fa-fw fa-sign-in"></i> お知らせ </a>
                    </div> 
                   </div> 
                   <div class="panel panel-default"> 
                    <div class="panel-heading">
                      承認 
                    </div> 
                    <div class="list-group"> 
                     <a class="list-group-item" href="${pageContext.request.contextPath }/admin/shenhe.action"><i class="fa fa-fw fa-gear"></i> 承認 </a>
                    </div> 
                   </div> 
                   <div class="panel panel-default"> 
                    <div class="panel-heading">
                      ログアウト 
                    </div> 
                    <div class="list-group">
                     <a class="list-group-item" href="${pageContext.request.contextPath }/admin/tologin.action"><i class="fa fa-fw fa-gear"></i> ログアウト</a> 
                    </div> 
                   </div> 
                </div> 

                <!-- content -->
                <div class="col-md-9">
					
                    
                    
                    <div class="row">
                    <form id="employeeForm" method="post" action="" class="form-horizontal">
                        <div class="panel panel-default">
                            <div class="bootstrap-admin-panel-content">
                                <table class="table table-striped table-bordered" id="example">
                                    <thead>
                                        <tr>
                                            <th>社員番号</th>
                                            <th>アカウント</th>
                                            <th>パスワード</th>
                                            <th>名前</th>
                                            <th>連絡先</th>
                                            <th>修正</th>
                                            <th>删除</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${employeeList }" var="employee" varStatus="s">
                                        <tr class="gradeA">
                                            <td>668315${employee.employeeid }</td>
                                            <td>${employee.employeeaccount }</td>
                                            <td>${employee.employeepassword }</td>
                                            <td>${employee.employeename }</td>
                                            <td>${employee.employeecontact }</td>
                                            <td><button type="button" onclick="employeeChange(${employee.employeeid })">修正</button></td>
                                            <td><button type="button" onclick="employeeDeleate(${employee.employeeid })">削除</button></td>
                                        </tr>
                                       </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </form>
                    </div>
                    
				</div>
           </div>    
        </div>
    </body>
</html>