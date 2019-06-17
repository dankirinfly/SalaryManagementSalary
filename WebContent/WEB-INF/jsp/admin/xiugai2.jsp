<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
		<link href="${pageContext.request.contextPath }/css/DT_bootstrap.css" rel="stylesheet" media="screen">
		<link href="${pageContext.request.contextPath }/css/stytle.css" rel="stylesheet" media="screen" />
		<script type="text/javascript" src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/twitter-bootstrap-hover-dropdown.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/vendors/datatables/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/DT_bootstrap.js"></script>
        <script type="text/javascript">
        	
        	function traffictijiao(){
        		var path = "${pageContext.request.contextPath }/admin/guanlixiugai.action";
        		$('#trafficForm').attr("action", path).submit();      		     
        	}
        	function trafficquxiao(){
        		var path = "${pageContext.request.contextPath }/admin/guanli4.action";
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
               
					<form id="trafficForm" method="post" action="" class="form-horizontal">
					<input type="hidden" name="gonggaoid"  value = "${ gongGao.gonggaoid}" />
                   <div class="bootstrap-admin-panel-content">
                            	<div  >
                            		<label >公告時間</label>
                            		</div>
                            		<div  >
                            		<input id = "gonggao"  type="date" name="gonggaodate" value="${fn:substring(gongGao.gonggaodate, 0, 10)}"/>
                            	</div>
                            	<div  >
                            		<label >公告の概要</label>
                            		</div>
                            		<div  >
                            		<input type="text" class="col-lg-12"name="gonggaotitle" value="${ gongGao.gonggaotitle}">
                            	</div>
                            	<div >
                            		<label >公告の内容</label>
                            		</div>
                            		<div  >
                            		<textarea cols="1000" rows="15" class="col-lg-12" name="gonggaoneirong"value="${ gongGao.gonggaoneirong}" >
　										
									</textarea>
	                           	</div>                                          
                            	<div>
                            	<button type="button" class="btn btn-lg btn-primary"  onclick="traffictijiao()">確定</button>
                                <button type="button" class="btn btn-lg btn-primary"  onclick="trafficquxiao()">キャンセル</button>
                            	 </div>                   
                  </div>
                  </form>
				</div>
           </div>    
       
    </body>
</html>