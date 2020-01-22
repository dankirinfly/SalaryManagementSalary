<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
        	function detailtijiao(){
        		 var path = "${pageContext.request.contextPath }/admin/detailxiugai.action";
        		 $('#detailForm').attr("action", path).submit();	     
        	}
        	function detailquxiao(){
        		var path = "${pageContext.request.contextPath }/admin/guanli2.action";
        		$('#detailForm').attr("action", path).submit();
        	}
        	function employeetijiao(){
        		var path = "${pageContext.request.contextPath }/admin/employeexiugai.action";
        		$('#employeeForm').attr("action", path).submit();    		     
        	}
        	function employeequxiao(){
        		var path = "${pageContext.request.contextPath }/admin/guanli3.action";
        		$('#employeeForm').attr("action", path).submit();	
        	}
        	function traffictijiao(){
        		var path = "${pageContext.request.contextPath }/admin/trafficxiugai.action";
        		$('#trafficForm').attr("action", path).submit();      		     
        	}
        	function trafficquxiao(){
        		var path = "${pageContext.request.contextPath }/admin/guanli.action";
        		$('#trafficForm').attr("action", path).submit();		
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
                

                <!-- content -->
                <div class="col-md-10">
					
                    <c:if test="${!empty detail}">                                            	
                    <div class="row">
                    <form id="detailForm" method="post" action="" class="form-horizontal">
                        <div class="panel panel-default">
                            
                            <div class="bootstrap-admin-panel-content">
                             <table class="table table-striped table-bordered" id="">
                             	<input type="hidden" name="detailid"  value = "${ detail.detailid}" />
                                <input type="hidden" name="employeeid"  value = "${ detail.employeeid}" />
                            	<div class="col-lg-10">
                            		<label class="col-lg-3">社員氏名</label>
                            		<input class="col-lg-5" type="text" name="" value = "${ employee.employeename}" disabled="disabled"/>
                            	</div>
                            	<div class="col-lg-10">
                            		<label class="col-lg-3">勤務時間</label>
                            		<input class="col-lg-5" type="date" name="worktime" value = "${fn:substring(detail.worktime, 0, 10)}"/>
                            	</div>  
                            	<div class="col-lg-10">
                            		<label class="col-lg-3">支給時間</label>
                            		<input class="col-lg-5" type="date" name="paytime" value = "${fn:substring(detail.paytime, 0, 10)}"/>
                            	</div>
                                <div class="col-lg-6">
                            		<label class="col-lg-3">労働日數</label>
                            		<input class="col-lg-5" type="text" name="workdays" value = "${ detail.workdays}">
                            	</div>       
                                <div class="col-lg-6">
                            		<label class="col-lg-3">出勤日数</label>
                            		<input class="col-lg-5" type="text" name="attendancedays" value = "${ detail.attendancedays}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">欠勤</label>
                            		<input class="col-lg-5" type="text" name="absencedays" value = "${ detail.absencedays}">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">不就労</label>
                            		<input class="col-lg-5" type="text" name="unemployeddays" value = "${ detail.unemployeddays}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">平日普通</label>
                            		<input class="col-lg-5" type="text" name="normalovertime" value = "${ detail.normalovertime}">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">休日普通</label>
                            		<input class="col-lg-5" type="text" name="specialovertime" value = "${ detail.specialovertime}">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">基本給</label>
                            		<input class="col-lg-5" type="text" name="basicpay" value = "${ detail.basicpay}">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">その他の費用</label>
                            		<input class="col-lg-5" type="text" name="trafficexpense" value = "${ detail.trafficexpense}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">定期通勤料</label>
                            		<input class="col-lg-5" type="text" name="monthtrafficexpense" value = "${ detail.monthtrafficexpense}">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">総支给額</label>
                            		<input class="col-lg-5" type="text" name="totalsalary" value = "${ detail.totalsalary}">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">健康保險</label>
                            		<input class="col-lg-5" type="text" name="healthinsurance" value = "${ detail.healthinsurance}">
                            	</div>  
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">介護保險</label>
                            		<input class="col-lg-5" type="text" name="careinsurance" value = "${ detail.careinsurance}">
                            	</div>  
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">厚生年金</label>
                            		<input class="col-lg-5" type="text" name="welfarepension" value = "${ detail.welfarepension}">
                            	</div>  
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">年金基金</label>
                            		<input class="col-lg-5" type="text" name="pensionfund" value = "${ detail.pensionfund}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">社保調整</label>
                            		<input class="col-lg-5" type="text" name="adjustsocial" value = "${ detail.adjustsocial}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">雇佣保險</label>
                            		<input class="col-lg-5" type="text" name="employinsurance" value = "${ detail.employinsurance}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">法定控除計</label>
                            		<input class="col-lg-5" type="text" name="legaldeduction" value = "${ detail.legaldeduction}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">所得税</label>
                            		<input class="col-lg-5" type="text" name="incometax" value = "${ detail.incometax}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">住民税</label>
                            		<input class="col-lg-5" type="text" name="inlandtax" value = "${ detail.inlandtax}">
                            	</div>            
                                <div class="col-lg-6">
                            		<label class="col-lg-3">扶養</label>
                            		<input class="col-lg-5" type="text" name="dependnumber" value = "${ detail.dependnumber}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">控除合計</label>
                            		<input class="col-lg-5" type="text" name="totaldeduction" value = "${ detail.totaldeduction}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">調整</label>
                            		<input class="col-lg-5" type="text" name="adjustsalary" value = "${ detail.adjustsalary}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">控除総計</label>
                            		<input class="col-lg-5" type="text" name="grandtotaldeduction" value = "${ detail.grandtotaldeduction}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">課税総額</label>
                            		<input class="col-lg-5" type="text" name="totaltaxation" value = "${ detail.totaltaxation}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">非課税総額</label>
                            		<input class="col-lg-5" type="text" name="totaltaxexempt" value = "${ detail.totaltaxexempt}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">差引支給額</label>
                            		<input class="col-lg-5" type="text" name="substractionsupply" value = "${ detail.substractionsupply}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">年末調整額</label>
                            		<input class="col-lg-5" type="text" name="yearendadjustment" value = "${ detail.yearendadjustment}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">特別奨励金</label>
                            		<input class="col-lg-5" type="text" name="specialbounty" value = "${ detail.specialbounty}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">業績達成金</label>
                            		<input class="col-lg-5" type="text" name="achievementmoney" value = "${ detail.achievementmoney}">
                            	</div>
                            	<div class="col-lg-10">
                            	    <button type="button" class="btn btn-lg btn-primary"  onclick="detailtijiao()">確定</button>
                                    <button type="button" class="btn btn-lg btn-primary"  onclick="detailquxiao()">キャンセル</button>
                            	</div> 
                            	</table>                            
                            </div>
                        </div>
                        
                    </form>
                    </div>
                     </c:if>
                     <c:if test="${ empty traffic && empty detail}">
                    <div class="row">
                     <form id="employeeForm" method="post" action="" class="form-horizontal">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="text-muted bootstrap-admin-box-title">社員情報照会</div>
                            </div>
                            <div class="bootstrap-admin-panel-content">
                                <table class="table table-striped table-bordered" id="">
                                    <thead>
                                        <tr>
                                            <th>アカウント</th>
                                            <th>パスワード</th>
                                            <th>名前</th>
                                            <th>連絡先</th>
                                            <th>诞生日</th>
                                            <th>登録日</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	
                                        <tr class="gradeA">
                                        	<input type="hidden" name="employeeid"  value = "${ employee.employeeid}" />
                                        	<input type="hidden" name="adminid"  value = "${ employee.adminid}" />
                                            <td><input type="text" name="employeeaccount"  value = "${ employee.employeeaccount}"></td>
                                            <td><input type="text" name="employeepassword"  value = "${ employee.employeepassword}"></td>
                                            <td><input type="text" name="employeename"  value = "${ employee.employeename}"></td>
                                            <td><input type="text" name="employeecontact"  value = "${ employee.employeecontact}"></td>
                                            <td><input class="col-lg-12" type="date" name="employeebirth"  value = "${fn:substring(employee.employeebirth, 0, 10)}"/></td>
                                       		<td><input class="col-lg-12" type="date" name="employeeregisteredtime"  value = "${fn:substring(employee.employeeregisteredtime, 0, 10)}"/></td>
                                        </tr>
                                       
                                    </tbody>
                                    
                                </table>
                            </div>
							<div >
                            	<button type="button" class="btn btn-lg btn-primary"  onclick="employeetijiao()">確定</button>
                                <button type="button" class="btn btn-lg btn-primary"  onclick="employeequxiao()">キャンセル</button>
                            </div> 
                        </div>
                     </form>
                    </div>
                    </c:if>
                    
                      <c:if test="${ !empty traffic }">
                    <div class="row">
                     <form id="trafficForm" method="post" action="" class="form-horizontal">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="text-muted bootstrap-admin-box-title">経費申込</div>
                            </div>
                            <div class="bootstrap-admin-panel-content">
                                <table class="table table-striped table-bordered" id="">
                                    <thead>
                                        <tr>
                                            <th>社員氏名</th>
                                            <th>料金タイプ</th>
                                            <th>交通区間</th>
                                            <th>費用時間</th>
                                            <th>交通費</th>
                                            <th>審查狀態</th>
                                            <th>失敗理由</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	
                                        <tr class="gradeA">
                                        	<input type="hidden" name="trafficid"  value = "${ traffic.trafficid}" />
                                        	 <input type="hidden" name="employeeid"  value = "${ traffic.employeeid}" />
                                            <td><input class="col-lg-12" type="text" name=""  value = "${ employee.employeename}" disabled="disabled"></td>
                                            <td>
                                            <select name="trafficexpensetype" >
                                     			<option value="1" selected = "selected">定期通勤料</option>
											</select>
											</td>
                                            <td><input class="col-lg-12" type="text" name="trafficsection"  value = "${ traffic.trafficsection}"></td>
                                            <td><input class="col-lg-12" type="date" name="traffictime"  value = "${fn:substring( traffic.traffictime, 0, 10)}"/></td>
                                            <td><input class="col-lg-12" type="text" name="trafficexpense"  value = "${ traffic.trafficexpense}"></td>
                                            <td>
                                            <select  name="verifystatus" >
                                  				<option  class="col-lg-12" value="1" <c:if test="${ traffic.verifystatus == 1 }">selected = "selected"</c:if> ><div class="text-muted bootstrap-admin-box-title">未審查</div></option>
                                  				<option  class="col-lg-12" value="2" <c:if test="${ traffic.verifystatus == 2 }">selected = "selected"</c:if>><div class="text-muted bootstrap-admin-box-title">失敗</div></option>
                                  				<option  class="col-lg-12" value="3" <c:if test="${ traffic.verifystatus == 3 }">selected = "selected"</c:if>><div class="text-muted bootstrap-admin-box-title">成功</div></option>
                                			</select>
                                            </td>
                                            <td><input class="col-lg-12" type="text" name="failedreason"  value = "${ traffic.failedreason}"></td>
                                            
                                        </tr>
                                       
                                    </tbody>
                                    
                                </table>
                            </div>
							<div >
                            	<button type="button" class="btn btn-lg btn-primary"  onclick="traffictijiao()">確定</button>
                                <button type="button" class="btn btn-lg btn-primary"  onclick="trafficquxiao()">キャンセル</button>
                            </div> 
                        </div>
                     </form>
                    </div>
                    </c:if>
				</div>
           </div>    
        </div>
    </body>
</html>