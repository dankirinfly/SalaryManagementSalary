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
        <link href="${pageContext.request.contextPath }/css/stytle.css" rel="stylesheet" media="screen" />
        <script type="text/javascript" src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
        <script type="text/javascript">
        	function formSubmit(){
        		document.forms[0].submit();
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
                     <a class="list-group-item  active" href="${pageContext.request.contextPath }/admin/forms.action"><i class="fa fa-fw fa-gear"></i> 社員給与入力 </a>
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
                    <form method="post" action="${pageContext.request.contextPath }/admin/detailzhuce.action" class="form-horizontal">
                        <div class="panel panel-default">
                            
                            
                            <div class="bootstrap-admin-panel-content">
                             <table class="table table-striped table-bordered" id="example">
                            	<div class="col-lg-10">
                            		<label class="col-lg-3">社員氏名</label>
                            		<select class="col-lg-5" name="employeeid">
                                       <c:forEach items="${employeeList }" var="employee" varStatus="s">
                                            <option value="${ employee.employeeid}">${ employee.employeename}</option>
                                       </c:forEach>
									</select> 
                            	</div>
                            	<input type="hidden" name="adminid"  value = "${ adminid}" />
                            	<div class="col-lg-10">
                            		<label class="col-lg-3">勤務時間</label>
                            		<input id = "worktime" class="col-lg-5" type="date" name="worktime"/>
                            	</div>  
                            	<div class="col-lg-10">
                            		<label class="col-lg-3">支給時間</label>
                            		<input id = "paytime"  class="col-lg-5" type="date" name="paytime" />
                            	</div>
                                <div class="col-lg-6">
                            		<label class="col-lg-3">労働日數</label>
                            		<input class="col-lg-2" type="text" name="workdays" value = "0.0">
                            	</div>       
                                <div class="col-lg-6">
                            		<label class="col-lg-3">出勤日数</label>
                            		<input class="col-lg-2" type="text" name="attendancedays" value = "14.0" >
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">欠勤</label>
                            		<input class="col-lg-2" type="text" name="absencedays" value = "0.0">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">不就労</label>
                            		<input class="col-lg-2" type="text" name="unemployeddays" value = "0.0">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">平日普通</label>
                            		<input class="col-lg-2" type="text" name="normalovertime" value = "0.0">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">休日普通</label>
                            		<input class="col-lg-2" type="text" name="specialovertime" value = "0.0">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">基本給</label>
                            		<input class="col-lg-2" type="text" name="basicpay" value = "0">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">非定期料金</label>
                            		<input class="col-lg-2" type="text" name="trafficexpense" value = "0">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">定期通勤料</label>
                            		<input class="col-lg-2" type="text" name="monthtrafficexpense" value = "0">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">総支给額</label>
                            		<input class="col-lg-2" type="text" name="totalsalary" value = "0">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">健康保險</label>
                            		<input class="col-lg-2" type="text" name="healthinsurance" value = "0">
                            	</div>  
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">介護保險</label>
                            		<input class="col-lg-2" type="text" name="careinsurance" value = "0">
                            	</div>  
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">厚生年金</label>
                            		<input class="col-lg-2" type="text" name="welfarepension" value = "0">
                            	</div>  
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">年金基金</label>
                            		<input class="col-lg-2" type="text" name="pensionfund" value = "0">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">社保調整</label>
                            		<input class="col-lg-2" type="text" name="adjustsocial" value = "0">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">雇佣保險</label>
                            		<input class="col-lg-2" type="text" name="employinsurance" value = "0">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">法定控除計</label>
                            		<input class="col-lg-2" type="text" name="legaldeduction" value = "0">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">所得税</label>
                            		<input class="col-lg-2" type="text" name="incometax" value = "0">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">住民税</label>
                            		<input class="col-lg-2" type="text" name="inlandtax" value = "0">
                            	</div>            
                                <div class="col-lg-6">
                            		<label class="col-lg-3">扶養</label>
                            		<input class="col-lg-2" type="text" name="dependnumber" value = "0">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">控除合計</label>
                            		<input class="col-lg-2" type="text" name="totaldeduction" value = "0">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">调整</label>
                            		<input class="col-lg-2" type="text" name="adjustsalary" value = "0">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">控除総計</label>
                            		<input class="col-lg-2" type="text" name="grandtotaldeduction" value = "0">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">課税総額</label>
                            		<input class="col-lg-2" type="text" name="totaltaxation" value = "0">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">非課税総額</label>
                            		<input class="col-lg-2" type="text" name="totaltaxexempt" value = "0">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">差引支給額</label>
                            		<input class="col-lg-2" type="text" name="substractionsupply" value = "0">
                            	</div>
                            	<div class="col-lg-10">
                            		<button class="btn btn-lg btn-primary" type="button" onclick="formSubmit()">确认</button>
                            	</div> 
                            	</table>                            
                            </div>
                        </div>
                        
                    </form>
                    </div>
                    
				</div>
           </div>    
        </div>
        <script language="JavaScript"> 
        
			var today=new Date();
			var month = today.getMonth();
			var month1 = today.getMonth()+1;
			if(month<10){
				document.getElementById("worktime").value=today.getFullYear()+"-"+"0"+month+"-"+"01";
			}else{
				document.getElementById("worktime").value=today.getFullYear()+"-"+month+"-"+"01";
				
			}
			if(month1<10){
				document.getElementById("paytime").value=today.getFullYear()+"-"+"0"+month1+"-"+"25";			
			}else{
				document.getElementById("paytime").value=today.getFullYear()+"-"+month1+"-"+"25";
			}
			
       
		</script>
    </body>
</html>