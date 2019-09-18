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
                     <a class="list-group-item  active" href="${pageContext.request.contextPath }/admin/search.action"><i class="fa fa-fw fa-gear"></i> 社員給与照会 </a>
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
                    <a class="list-group-item  " href="${pageContext.request.contextPath }/admin/forms3.action"><i class="fa fa-fw fa-gear"></i> 公告入力 </a>
                    </div> 
                   </div> 
                   <div class="panel panel-default"> 
                    <div class="panel-heading">
                      管理 
                    </div> 
                    <div class="list-group"> 
                     <a class="list-group-item" href="${pageContext.request.contextPath }/admin/guanli.action"><i class="fa fa-fw fa-gear"></i> 経費申込 </a>
                     <a class="list-group-item " href="${pageContext.request.contextPath }/admin/guanli2.action"><i class="fa fa-fw fa-lock"></i> 社員給与 </a>
                     <a class="list-group-item " href="${pageContext.request.contextPath }/admin/guanli3.action"><i class="fa fa-fw fa-sign-in"></i> 社員情報 </a>
                     <a class="list-group-item " href="${pageContext.request.contextPath }/admin/guanli4.action"><i class="fa fa-fw fa-sign-in"></i> 公告 </a>
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
                        <div class="panel panel-default">
                            
                            
								<div class="bootstrap-admin-panel-content">
                                <table class="table table-striped table-bordered" id="example">
                                    <thead>
                                        <tr>
                                            <th>社員氏名</th>
                                            <th>支給時間</th> 
                                            <th>総支给額</th>
                                            <th>控除総計</th>
                                            <th>差引支給額</th>
                                            <th>详细</th>                                      
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <font>${gongGao.gonggaotitle }</font>
                                    	<c:forEach items="${detailList }" var="detail" varStatus="s">
                                        <tr class="gradeA">
                                            <td>
                                            <c:forEach items="${employeeList }" var="employee" varStatus="s">
                                            <c:if test="${ detail.employeeid == employee.employeeid }">
                                            	${ employee.employeename}
                                            </c:if>
                                            </c:forEach>
                                            </td>
                                            <td>${detail.paytime }</td>
                                            <td>${detail.totalsalary }</td>
                                            <td>${detail.grandtotaldeduction }</td>
                                            <td>${detail.substractionsupply }</td>
                                            <td><a href="${pageContext.request.contextPath }/admin/searchxiangqing.action?detailid=${detail.detailid }&employeeid=${ detail.employeeid}"><i class="glyphicon glyphicon-chevron-right"></i>給与詳細</a></td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                          
                        </div>
                    </div>
                    
				</div>
           </div>    
        </div>
    </body>
</html>

