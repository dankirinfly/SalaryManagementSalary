<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <title>admin</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/css/bootstrap-admin-theme.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/css/stytle.css" rel="stylesheet" media="screen" />
       
    </head>
    <body class="bootstrap-admin-with-small-navbar">
		<nav class="navbar navbar-default navbar-inverse navbar-fixed-top " role="navigation">
			<h1 align="center" style="color:FloralWhite;">タレントキリンズ株式会社</h1>
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
                    <a class="list-group-item  " href="${pageContext.request.contextPath }/font/font.action"><i class="fa fa-fw fa-gear"></i> ホームページ </a> 
                    </div> 
                   </div> 
                   <div class="panel panel-default"> 
                    <div class="panel-heading">
                      給与照会 
                    </div> 
                    <div class="list-group"> 
                     <a class="list-group-item " href="${pageContext.request.contextPath }/font/search.action"><i class="fa fa-fw fa-gear"></i> 給与照会 </a>
                     <a class="list-group-item " href="${pageContext.request.contextPath }/font/search2.action"><i class="fa fa-fw fa-lock"></i> 経費申込照会 </a>
                     <a class="list-group-item " href="${pageContext.request.contextPath }/font/search3.action"><i class="fa fa-fw fa-sign-in"></i> 個人情報照会 </a>
                    </div> 
                   </div> 
                   <div class="panel panel-default"> 
                    <div class="panel-heading">
                      個人情報修正 
                    </div> 
                    <div class="list-group"> 
                     <a class="list-group-item " href="${pageContext.request.contextPath }/font/xiugai.action"><i class="fa fa-fw fa-gear"></i> 個人情報修正 </a>
                    </div> 
                   </div> 
                   <div class="panel panel-default"> 
                    <div class="panel-heading">
                      経費申込 
                    </div> 
                    <div class="list-group"> 
                     <a class="list-group-item active" href="${pageContext.request.contextPath }/font/shenbao.action"><i class="fa fa-fw fa-gear"></i> 経費申込 </a>
                    </div> 
                   </div> 
                   
                   <div class="panel panel-default"> 
                    <div class="panel-heading">
                      ログアウト 
                    </div> 
                    <div class="list-group">
                     <a class="list-group-item" href="${pageContext.request.contextPath }/font/tologin.action"><i class="fa fa-fw fa-gear"></i> ログアウト</a> 
                    </div> 
                   </div> 
                </div> 

                <!-- content -->
                <div class="col-md-9">
					
                    
                    
                    
                    <div class="row">
                     <form method="post" action="${pageContext.request.contextPath }/font/shenhe.action" class="form-horizontal">
                        <div class="panel panel-default">
                            
                            <div class="bootstrap-admin-panel-content">
                                <table class="table table-striped table-bordered" id="example">
                                    <thead>
                                        <tr>
                                            <th>社員氏名</th>
                                            <th>料金タイプ</th>
                                            <th>交通区間</th>
                                            <th>費用時間</th>
                                            <th>交通費</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	
                                        <tr class="gradeA">
                                       	 	<input type="hidden" name="employeeid"  value = "${ employee.employeeid}" />
                                            <td><input  type="text" name="employeename" readonly="readonly" value = "${ employee.employeename}"></td>
                                            <td>
                                            <select name="trafficexpensetype" >
                                     			<option value="1" selected = "selected">定期通勤料</option>
                                     			<option value="2" >非定期料金</option>
											</select> 
											</td>
                                            <td>始发站<input type="text" name="trafficsection1" ><br/>终点站<input type="text" name="trafficsection2" ></td>
                                            <td><input id = "traffictime" class="col-lg-12" type="date" name="traffictime" /></td>
                                            <td><input type="text" name="trafficexpense" ></td>
											<input  type="hidden" name="verifystatus"  value = "1">
                                        </tr>
                                       
                                    </tbody>
                                    
                                </table>
                            </div>
							<div >
                            	<button type="button" class="btn btn-lg btn-primary" onclick="formSubmit()">确认</button>
                            </div> 
                        </div>
                     </form>
                    </div>
                    
				</div>
           </div>    
        </div>
        <script language="JavaScript"> 
        
			var today=new Date();
			if(today.getMonth()<10){
				if(today.getDate()<10){
					document.getElementById("traffictime").value=today.getFullYear()+"-"+"0"+today.getMonth()+"-"+"0"+today.getDate();
				}
				document.getElementById("traffictime").value=today.getFullYear()+"-"+"0"+today.getMonth()+"-"+today.getDate();
						
			}else{
				if(today.getDate()<10){
					document.getElementById("traffictime").value=today.getFullYear()+"-"+today.getMonth()+"-"+"0"+today.getDate();
				}
				document.getElementById("traffictime").value=today.getFullYear()+"-"+today.getMonth()+"-"+today.getDate();
			}
			function formSubmit(){
        		document.forms[0].submit();
   			}
       
		</script>
    </body>
</html>