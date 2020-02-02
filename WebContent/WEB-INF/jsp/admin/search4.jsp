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
        	function tiaozhuan(){
        		
        		window.location.href="${pageContext.request.contextPath }/admin/search.action";
        		
        	}
        </script>
       
    </head>
    <body class="bootstrap-admin-with-small-navbar">
		<nav class="navbar navbar-default navbar-inverse navbar-fixed-top " role="navigation">
			<h1 align="center" style="color:FloralWhite;">タレントキリンズ株式会社　給与管理システム</h1>
		</nav>
		
		
		<div class="container table-bordered">
            <!-- left, vertical navbar & content -->
            <div class="col-md-6" style ="margin-bottom:50px;margin-top:10px">
                    
                    <div class="row">                      
                         <font size="5" style="left: 10px; position: absolute; top: 15px;">${fn:substring(detail.paytime, 0, 4)}年${fn:substring(detail.paytime, 5, 7)}月${fn:substring(detail.paytime, 8, 10)}日支給分&emsp;&emsp;給与詳細</font><br />
                         <font size="3" style="left: 10px; position: absolute; top: 50px;">対象期間：${fn:substring(detail.worktime, 5, 7)}月1日 ~${fn:substring(detail.worktime, 5, 7)}月30日</font><br />
                         <font size="5" style="left: 10px; position: absolute; top: 90px;">差引支給額：${detail.substractionsupply }円</font><br />    
                    </div>
                    
			</div>
			<div class="col-md-6 table-bordered" style ="margin-bottom:50px;margin-top:10px;padding-bottom:80px">
                    
                    <div class="row">                      
                          <font size="5" style="left: 10px; position: absolute; top: 15px;">タレントキリンズ株式会社　給与管理システム</font> <br />
                          <font size="3" style="left: 10px; position: absolute; top: 60px;">社員番号：${668315+employee.employeeid}</font> <br />
                          <font size="5" style="left: 10px; position: absolute; top: 90px;">${employee.employeename}</font><br />
                    </div>
                    
			</div>
			
			 
             <div class="col-md-3">
                    
                    <div class="row">                      
                        <table class="table table-striped table-bordered" id="">
                        	<thead>
                            	<tr>
                                	<th>勤怠</th>                                            
                                </tr>
                            </thead>
                            <tbody>                                    	
                                <tr class="">
                                	<th>労働日數 &emsp;:&emsp;&emsp;${detail.workdays }</th>                                         
                                </tr>
                                <tr class="">
                                	<th>出勤日数  &emsp;:&emsp;&emsp;${detail.attendancedays }</th>                                           
                                </tr>
                                 <tr class="">
                                	<th>欠勤&emsp;&emsp;&emsp;&nbsp;:&emsp;&emsp;${detail.absencedays }</th>                                                                                    
                                </tr>
                                 <tr class="">
                                	 <th>不就労      &emsp;&emsp;:&emsp;&emsp;${detail.unemployeddays }</th>                                                                                     
                                </tr>
                                 <tr class="">
                                	<th>平日普通     &emsp;:&emsp;&emsp;${detail.normalovertime }</th>                                                                                     
                                </tr>
                                 <tr class="">
                                	<th>休日普通       &emsp;:&emsp;&emsp;${detail.specialovertime }</th>                                         
                                </tr>                                                                
                            </tbody>
                         </table>
                         <button type="button" class="btn btn-lg btn-primary"  onclick="tiaozhuan()">戻る</button>                
                    </div>
                    
			</div>
			<div class="col-md-3">
                    
                    <div class="row">                      
                        <table class="table table-striped table-bordered" id="">
                        	<thead>
                            	<tr>
                                	<th>支給</th>                                            
                                </tr>
                            </thead>
                            <tbody>                                    	
                                <tr class="">
                                	<th>基本給       &emsp; &emsp;:&emsp;&emsp; ${detail.basicpay }</th>                                                                                   
                                </tr>
                                <tr class="">
                                	<th>非定期料金 &nbsp;:&emsp;&emsp;&nbsp;${detail.trafficexpense }</th>                                        
                                </tr>
                                <tr class="">
									<th>定期通勤料 &nbsp;:&emsp;&emsp;&nbsp;${detail.monthtrafficexpense }</th>                                                                                    
                                </tr>
                                <tr class="">
                                	 <th>総支给額   &emsp;&nbsp;:&emsp;&emsp;&nbsp;${detail.totalsalary }</th>                                            
                                </tr>                                                                
                            </tbody>
                         </table>                
                    </div>
                    
			</div>
			<div class="col-md-3">
                    
                    <div class="row">                      
                        <table class="table table-striped table-bordered" id="">
                        	<thead>
                            	<tr>
                                	<th>控除</th>                                            
                                </tr>
                            </thead>
                            <tbody>                                    	
                                <tr class="">
                                	<th>健康保險    &emsp;:&emsp;&emsp;${detail.healthinsurance }</th>                                          
                                </tr>
                                <tr class="">
                                	<th>介護保險    &emsp;:&emsp;&emsp;${detail.careinsurance }</th>                                           
                                </tr> 
                                <tr class="">
                                	<th>厚生年金   &emsp;:&emsp;&emsp;${detail.welfarepension }</th>                                            
                                </tr>
                                <tr class="">
                                    <th>年金基金   &emsp;:&emsp;&emsp;${detail.pensionfund }</th>                                            
                                </tr>
                                <tr class="">
                                	<th>健康保險  &emsp;:&emsp;&emsp;${detail.adjustsocial }</th>                                           
                                </tr>
                                <tr class="">
                                	<th>雇佣保險    &emsp;:&emsp;&emsp;${detail.employinsurance }</th>                                           
                                </tr>
                                <tr class="">
                                	<th>法定控除計&nbsp;:&emsp;&emsp;${detail.legaldeduction }</th>                                           
                                </tr>
                                <tr class="">
                                	<th>所得税&ensp;&ensp;&emsp;&nbsp;:&emsp;&emsp;${detail.incometax }</th>                                           
                                </tr>
                                <tr class="">
                                	<th>住民税 &emsp;&ensp;&ensp;:&emsp;&emsp;${detail.inlandtax }</th>                                         
                                </tr>
                                <tr class="">
                                	<th>扶養 &emsp;&ensp;&ensp;&emsp;:&emsp;&emsp;${detail.dependnumber }</th>                                           
                                </tr>
                                <tr class="">
                                	<th>控除合計      &emsp;:&emsp;&emsp;${detail.totaldeduction }</th>                                          
                                </tr>
                                <tr class="">
                                	 <th>调整 &emsp; &emsp;&ensp;&nbsp;:&emsp;&emsp;${detail.adjustsalary }</th>                                        
                                </tr>
                                <tr class="">
                                	 <th>控除総計 &emsp;:&emsp;&emsp;${detail.grandtotaldeduction }</th>
                                </tr>                                                               
                            </tbody>
                         </table>                
                    </div>
                    
			</div>
			<div class="col-md-3">
                    
                    <div class="row">                      
                        <table class="table table-striped table-bordered" id="">
                        	<thead>
                            	<tr>
                                	<th>その他</th>                                            
                                </tr>
                            </thead>
                            <tbody>                                    	
                                <tr class="">
                                	 <th>課税総額 &emsp;&emsp;&nbsp;&nbsp;:&emsp;&emsp;${detail.totaltaxation }</th>                                                                                    
                                </tr>
                                <tr class="">
                                	 <th>非課税総額 &nbsp; &emsp;:&emsp;&emsp;${detail.totaltaxexempt }</th>                                         
                                </tr>  
                                <tr class="">
                                	 <th>差引支給額 &emsp;&nbsp;&nbsp;:&emsp;&emsp;${detail.substractionsupply }</th>                                           
                                </tr>        
                                <tr class="">
                                	 <th>年末調整額 &emsp;&nbsp;&nbsp;:&emsp;&emsp;${detail.yearendadjustment }</th>                                           
                                </tr>
                                <tr class="">
                                	 <th>年末調整額 &emsp;&nbsp;&nbsp;:&emsp;&emsp;${detail.specialbounty }</th>                                        
                                </tr>
                                <tr class="">
                                	 <th>業績達成金 &emsp;&nbsp;&nbsp;:&emsp;&emsp;${detail.achievementmoney }</th>                                           
                                </tr>                                                          
                            </tbody>
                         </table>                
                    </div>
                    
			</div>
        </div>
		
    </body>
</html>