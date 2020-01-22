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
        <link href="${pageContext.request.contextPath }/css/stytle.css" rel="stylesheet" media="screen" />
       
    </head>

<style type="text/css">
#winpop {
	width: 200px;
	height: 0px;
	position: absolute;
	right: 0;
	bottom: 0;
	border: 1px solid #999999;
	margin: 0;
	padding: 1px;
	overflow: hidden;
	display: none;
	background: #FFFFFF
}

#winpop .title {
	width: 100%;
	height: 20px;
	line-height: 20px;
	background: #FFCC00;
	font-weight: bold;
	text-align: center;
	font-size: 12px;
}

#winpop .con {
	width: 100%;
	height: 80px;
	line-height: 80px;
	font-weight: bold;
	font-size: 12px;
	color: #FF0000;
	text-decoration: underline;
	text-align: center
}

.close {
	position: absolute;
	right: 4px;
	top: -1px;
	color: #FFFFFF;
	cursor: pointer
}

</style>
<script type="text/javascript">
	function tips_pop() {
		var MsgPop = document.getElementById("winpop");//获取窗口这个对象,即ID为winpop的对象 
		var popH = parseInt(MsgPop.style.height);//用parseInt将对象的高度转化为数字,以方便下面比较 
		if (popH == 0) {//如果窗口的高度是0 
			MsgPop.style.display = "block";//那么将隐藏的窗口显示出来 
			show = setInterval("changeH('up')", 2);//开始以每0.002秒调用函数changeH("up"),即每0.002秒向上移动一次 
		} else {
			hide = setInterval("changeH('down')", 2);//开始以每0.002秒调用函数changeH("down"),即每0.002秒向下移动一次 
		}
	}
	function changeH(str) {
		var MsgPop = document.getElementById("winpop");
		var popH = parseInt(MsgPop.style.height);
		if (str == "up") {//如果这个参数是UP 
			if (popH <= 100) {//如果转化为数值的高度小于等于100 
				MsgPop.style.height = (popH + 4).toString() + "px";//高度增加4个象素 
			} else {
				clearInterval(show);//否则就取消这个函数调用,意思就是如果高度超过100象度了,就不再增长了 
			}
		}
		if (str == "down") {
			if (popH >= 4) {//如果这个参数是down 
				MsgPop.style.height = (popH - 4).toString() + "px";//那么窗口的高度减少4个象素 
			} else {
				clearInterval(hide);//否则就取消这个函数调用,意思就是如果高度小于4个象度的时候,就不再减了 
				MsgPop.style.display = "none";//因为窗口有边框,所以还是可以看见1~2象素没缩进去,这时候就把DIV隐藏掉 
			}
		}
	}
	window.onload = function() {
		var enddate =  document.getElementById("enddate").value;
		var date=new Date();
    	var year=date.getFullYear();
    	var month=date.getMonth()+1;
    	var day=date.getDate();
    	 var hour=date.getHours();
         var minute=date.getMinutes();
         var second=date.getSeconds();
         if (month<10) {
        	 month='0'+month;
          }
         if (hour<10) {
         	hour='0'+hour;
         }
         if (minute<10) {
         	minute='0'+minute;
         }
         if (second<10) {
         	second='0'+second;
         }
    	var nowtime=year+'-'+month+'-'+day+' '+hour+':'+minute+':'+second;
		if(enddate<nowtime){
			setTimeout("tips_pop()", 800);
		}
		document.getElementById('winpop').style.height = '0px';
		
	}
</script>

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
                    <a class="list-group-item  active" href="${pageContext.request.contextPath }/font/font.action"><i class="fa fa-fw fa-gear"></i> ホームページ </a> 
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
                     <a class="list-group-item" href="${pageContext.request.contextPath }/font/shenbao.action"><i class="fa fa-fw fa-gear"></i> 経費申込 </a>
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

			<div id="winpop">
				<div class="title">
					ご注意ください<span class="close" onclick="tips_pop()">x</span>
				</div>
				<div class="con">建议您尽快更改密码</div>
			</div>
			<input type="hidden" id="enddate" name="enddate" value="${enddate}">
			<div class="col-md-9">
					
                    <div class="row" >
                       <ul class="alert alert-info js-dashboard-info js-for-admin topInfoContainer animeStart">
                         <c:forEach items="${gongGaoList}" var="gongGao" varStatus="s">
                                        
                        	<li>
      							<a href="${pageContext.request.contextPath }/font/gongaosearch.action?gonggaoid=${ gongGao.gonggaoid  }" >
        							<span class="date">${fn:substring(gongGao.gonggaodate, 0, 10)}</span>
        							<span class="title left-buffer-10">${ gongGao.gonggaotitle  }</span>
      							</a>
    						</li>
                         </c:forEach>
    					</ul>
                    </div>
				</div>
           </div>    
        </div>
    </body>
</html>