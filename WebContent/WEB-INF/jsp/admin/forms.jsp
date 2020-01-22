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
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" charset="UTF-8">
        	function formSubmit(){
        		document.forms[0].submit();
   			}
        	function selectChange(){
        		var employeeid = document.getElementById("employeeid");
                var selectvalue = employeeid.options[employeeid.selectedIndex].value;
                window.location.href="${pageContext.request.contextPath }/admin/forms1.action?employeeid="+selectvalue;
   			}	
        	function upload(input){     
        		let file = input.files[0];	//取到当前上传的文件
        		fileType = file.name.split('.');	//取到文件名并使用“.”进行切割
        		let reader = new FileReader();	//new一个FileReader对象实例
 		  		reader.readAsText(file, 'utf8');	//读取csv文件
        		reader.onload = () => {	
        			let fileData = reader.result	//获取读取的数据
        			var allTextLines = fileData.split("\r\n");
        		  	for(var i = 1;i<allTextLines.length-1;i++){
        		  		var allTextLine = allTextLines[i].split(",");
        		  		var empid = document.getElementById("employeeid").value;
        				if(allTextLine[0] == empid){
        					document.getElementById("workdays").value = allTextLine[1];
        					document.getElementById("attendancedays").value = allTextLine[2];
        					document.getElementById("absencedays").value = allTextLine[3];
        					document.getElementById("unemployeddays").value = allTextLine[4];
        					document.getElementById("normalovertime").value = allTextLine[5];
        					document.getElementById("specialovertime").value = allTextLine[6];
        					document.getElementById("basicpay").value = allTextLine[7];
        					document.getElementById("trafficexpense").value = allTextLine[8];
        					document.getElementById("monthtrafficexpense").value = allTextLine[9];
        					document.getElementById("totalsalary").value = allTextLine[10];
        					document.getElementById("healthinsurance").value = allTextLine[11];
        					document.getElementById("careinsurance").value = allTextLine[12];
        					document.getElementById("welfarepension").value = allTextLine[13];
        					document.getElementById("pensionfund").value = allTextLine[14];
        					document.getElementById("adjustsocial").value = allTextLine[15];
        					document.getElementById("employinsurance").value = allTextLine[16];
        					document.getElementById("legaldeduction").value = allTextLine[17];
        					document.getElementById("incometax").value = allTextLine[18];
        					document.getElementById("inlandtax").value = allTextLine[19];
        					document.getElementById("dependnumber").value = allTextLine[20];
        					document.getElementById("totaldeduction").value = allTextLine[21];
        					document.getElementById("adjustsalary").value = allTextLine[22];
        					document.getElementById("grandtotaldeduction").value = allTextLine[23];
        					document.getElementById("totaltaxation").value = allTextLine[24];
        					document.getElementById("totaltaxexempt").value = allTextLine[25];
        					document.getElementById("substractionsupply").value = allTextLine[26];
        					document.getElementById("yearendadjustment").value = allTextLine[27];
        					document.getElementById("specialbounty").value = allTextLine[28];
        					document.getElementById("achievementmoney").value = allTextLine[29];
        					break;
        				}
        	        }
        		}
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
                     <a class="list-group-item " href="${pageContext.request.contextPath }/admin/guanli3.action"><i class="fa fa-fw fa-sign-in"></i> 社員情報 </a>
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
                    <form method="post" action="${pageContext.request.contextPath }/admin/detailzhuce.action" class="form-horizontal"  enctype ="multipart/form-data">
                        <div class="panel panel-default">
                            
                            
                            <div class="bootstrap-admin-panel-content">
                             <table class="table table-striped table-bordered" id="example">
                            	<div class="col-lg-10">
                            		<label class="col-lg-3">社員氏名</label>
                            		<select class="col-lg-5" name="employeeid" onchange="selectChange()" id="employeeid">
                                       <c:forEach items="${employeeList }" var="employee" varStatus="s">                                      			
                                            <option <c:if test="${ detail.employeeid == employee.employeeid }">selected="selected"</c:if> value="${ employee.employeeid}">${ employee.employeename}</option>
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
                            		<input id = "workdays" class="col-lg-5" type="text" name="workdays" value = "${ detail.workdays}">
                            	</div>       
                                <div class="col-lg-6">
                            		<label class="col-lg-3">出勤日数</label>
                            		<input id = "attendancedays" class="col-lg-5" type="text" name="attendancedays" value = "${ detail.attendancedays}" >
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">欠勤</label>
                            		<input id = "absencedays" class="col-lg-5" type="text" name="absencedays" value = "${ detail.absencedays}">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">不就労</label>
                            		<input id = "unemployeddays" class="col-lg-5" type="text" name="unemployeddays" value = "${ detail.unemployeddays}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">平日普通</label>
                            		<input id = "normalovertime" class="col-lg-5" type="text" name="normalovertime" value = "${ detail.normalovertime}">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">休日普通</label>
                            		<input id = "specialovertime" class="col-lg-5" type="text" name="specialovertime" value = "${ detail.specialovertime}">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">基本給</label>
                            		<input id = "basicpay" class="col-lg-5" type="text" name="basicpay" value = "${ detail.basicpay}">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">非定期料金</label>
                            		<input id = "trafficexpense" class="col-lg-5" type="text" name="trafficexpense" value = "${ detail.trafficexpense}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">定期通勤料</label>
                            		<input id = "monthtrafficexpense" class="col-lg-5" type="text" name="monthtrafficexpense" value = "${ detail.monthtrafficexpense}">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">総支给額</label>
                            		<input id = "totalsalary" class="col-lg-5" type="text" name="totalsalary" value = "${ detail.totalsalary}">
                            	</div> 
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">健康保險</label>
                            		<input id = "healthinsurance" class="col-lg-5" type="text" name="healthinsurance" value = "${ detail.healthinsurance}">
                            	</div>  
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">介護保險</label>
                            		<input id = "careinsurance" class="col-lg-5" type="text" name="careinsurance" value = "${ detail.careinsurance}">
                            	</div>  
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">厚生年金</label>
                            		<input id = "welfarepension" class="col-lg-5" type="text" name="welfarepension" value = "${ detail.welfarepension}">
                            	</div>  
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">年金基金</label>
                            		<input id = "pensionfund" class="col-lg-5" type="text" name="pensionfund" value = "${ detail.pensionfund}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">社保調整</label>
                            		<input id = "adjustsocial" class="col-lg-5" type="text" name="adjustsocial" value = "${ detail.adjustsocial}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">雇佣保險</label>
                            		<input id = "employinsurance" class="col-lg-5" type="text" name="employinsurance" value = "${ detail.employinsurance}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">法定控除計</label>
                            		<input id = "legaldeduction" class="col-lg-5" type="text" name="legaldeduction" value = "${ detail.legaldeduction}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">所得税</label>
                            		<input id = "incometax" class="col-lg-5" type="text" name="incometax" value = "${ detail.incometax}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">住民税</label>
                            		<input id = "inlandtax" class="col-lg-5" type="text" name="inlandtax" value = "${ detail.inlandtax}">
                            	</div>            
                                <div class="col-lg-6">
                            		<label class="col-lg-3">扶養</label>
                            		<input id = "dependnumber" class="col-lg-5" type="text" name="dependnumber" value = "${ detail.dependnumber}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">控除合計</label>
                            		<input id = "totaldeduction" class="col-lg-5" type="text" name="totaldeduction" value = "${ detail.totaldeduction}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">调整</label>
                            		<input id = "adjustsalary" class="col-lg-5" type="text" name="adjustsalary" value = "${ detail.adjustsalary}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">控除総計</label>
                            		<input id = "grandtotaldeduction" class="col-lg-5" type="text" name="grandtotaldeduction" value = "${ detail.grandtotaldeduction}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">課税総額</label>
                            		<input id = "totaltaxation" class="col-lg-5" type="text" name="totaltaxation" value = "${ detail.totaltaxation}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">非課税総額</label>
                            		<input id = "totaltaxexempt" class="col-lg-5" type="text" name="totaltaxexempt" value = "${ detail.totaltaxexempt}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">差引支給額</label>
                            		<input id = "substractionsupply" class="col-lg-5" type="text" name="substractionsupply" value = "${ detail.substractionsupply}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">年末調整額</label>
                            		<input id = "yearendadjustment" class="col-lg-5" type="text" name="yearendadjustment" value = "${ detail.yearendadjustment}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">特別奨励金</label>
                            		<input id = "specialbounty" class="col-lg-5" type="text" name="specialbounty" value = "${ detail.specialbounty}">
                            	</div>
                            	<div class="col-lg-6">
                            		<label class="col-lg-3">業績達成金</label>
                            		<input id = "achievementmoney" class="col-lg-5" type="text" name="achievementmoney" value = "${ detail.achievementmoney}">
                            	</div>
                            	<div class="col-lg-10">
                            		<button class="btn btn-lg btn-primary" type="button" onclick="formSubmit()">确认</button>
                            		<button  class="btn btn-lg btn-primary" >CSV入力<input id='file' type="file" onchange="upload(this)"/></button>
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