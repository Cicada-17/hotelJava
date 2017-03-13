<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
	<head>
    	<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <title>工资管理系统</title>		
		
		<!-- Import google fonts - Heading first/ text second -->
        <link rel='stylesheet' type='text/css' href='http://fonts.useso.com/css?family=Open+Sans:400,700|Droid+Sans:400,700' />
        <!--[if lt IE 9]>
<link href="http://fonts.useso.com/css?family=Open+Sans:400" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Open+Sans:700" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Droid+Sans:400" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Droid+Sans:700" rel="stylesheet" type="text/css" />
<![endif]-->

		<!-- Fav and touch icons -->
		<link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" />    

	    <!-- Css files -->
	    <link href="<%=basePath%>assets/css/bootstrap.min.css" rel="stylesheet">		
		<link href="<%=basePath%>assets/css/jquery.mmenu.css" rel="stylesheet">		
		<link href="<%=basePath%>assets/css/font-awesome.min.css" rel="stylesheet">
		<link href="<%=basePath%>assets/css/climacons-font.css" rel="stylesheet">
		<link href="<%=basePath%>assets/plugins/xcharts/css/xcharts.min.css" rel=" stylesheet">		
		<link href="<%=basePath%>assets/plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet">
		<link href="<%=basePath%>assets/plugins/morris/css/morris.css" rel="stylesheet">
		<link href="<%=basePath%>assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
		<link href="<%=basePath%>assets/plugins/jvectormap/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">	    
	    <link href="<%=basePath%>assets/css/style.min.css" rel="stylesheet">
		<link href="<%=basePath%>assets/css/add-ons.min.css" rel="stylesheet">		

	    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	    <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->
	</head>
</head>

<body>
	<!-- start: Header -->
	<div class="navbar" role="navigation">
	
		<div class="container-fluid">		
			
			
			
		
			
	        <ul class="nav navbar-nav navbar-right">
				
				
				
				<li class="dropdown visible-md visible-lg">
	        		<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img class="user-avatar" src="<%=basePath%>assets/img/avatar.jpg" alt="user-mail">${sysuser.username}</a>
	        		
	      		</li>
				<li><a href="login.jsp"><i class="fa fa-power-off"></i></a></li>
			</ul>
			
		</div>
		
	</div>
	<!-- end: Header -->
	
	<div class="container-fluid content">
	
		<div class="row">
				
			<!-- start: Main Menu -->
			<div class="sidebar ">
								
				<div class="sidebar-collapse">
					<div class="sidebar-header t-center">
                        <span>工资管理系统</span>
                    </div>										
					<div class="sidebar-menu">						
						<ul class="nav nav-sidebar">
							<li><a href="<%=basePath%>index.jsp"><i class="fa fa-laptop"></i><span class="text"> 首页</span></a></li>
							<c:if test="${sysuser.power=='1'}"><li>
								<a href="<%=basePath%>employees.jsp"><i class="fa  fa-list-alt"></i><span class="text"> 工资查询</span> </a>
								
							</li></c:if>
							<c:if test="${sysuser.power=='2'}"><li>
								<a href="<%=basePath%>manager1.jsp"><i class="fa  fa-group "></i><span class="text"> 员工管理</span> </a>
								
							</li>
							<li><a href="<%=basePath%>manager2.jsp"><i class="fa  fa-search"></i><span class="text"> 工资查询</span></a></li></c:if>
						<c:if test="${sysuser.power=='3'}">	<li>
								<a href="#"><i class="fa  fa-wrench"></i><span class="text">工资管理</span> <span class="fa fa-angle-down pull-right"></span></a>
								<ul class="nav sub">
									<li><a href="<%=basePath%>wage/selwage_sel"><i class="fa  fa-gear"></i><span class="text"> 工资项目管理</span></a></li>
									<li><a href="<%=basePath%>money2.jsp"><i class="fa  fa-star"></i><span class="text"> 固定工资管理</span></a></li>
									<li><a href="<%=basePath%>money3.jsp"><i class="fa  fa-folder-open"></i><span class="text">导入项目数据录入</span></a></li>
								</ul>
							</li>
							<li>
								<a href="<%=basePath%>money4.jsp"><i class="fa  fa-cny"></i><span class="text"> 工资结算</span></a>
								
							</li></c:if>
							<li>
								<a href="<%=basePath%>employees2.jsp"><i class="fa   fa-keyboard-o "></i><span class="text"> 修改密码</span> </a>
								
							</li>
							
						</ul>
					</div>					
				</div>
				<div class="sidebar-footer">					
					
					
					
					<div class="copyright text-center">
						<small>Produced <i class="fa fa-coffee"></i> by <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">第五组</a></small>
					</div>					
				</div>	
				
			</div>
			<!-- end: Main Menu -->
		
		<!-- start: Content -->
		<div class="main">
		
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa  fa-search"></i> 工资查询</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="<%=basePath%>index.jsp">首页</a></li>
						<li><i class="fa  fa-search"></i>工资查询</li>						  	
					</ol>
				</div>
			</div>
			
			
		

		<script language="JavaScript">   
		 window.onload=function(){
		 	YYYYMMDDstart();   
	 		one();
	 		
       	 
       	 
     
		} ;
	function one(){
		
		
		 $.ajax({
                    type:"post",
                    url:"<%=basePath%>findmoney",  //需要用来处理ajax请求的action,excuteAjax为处理的方法名，JsonAction为action名
                    data:{//设置数据源
                    	year:$("select[name='YYYY']").find("option:selected").text(),
                    	month:$("select[name='MM']").find("option:selected").text(),
                    	department:$("select[name='s_value']").find("option:selected").text(),
                       // position:$("input[name=position]").val()//这里不要加","  不然会报错，而且根本不会提示错误地方
                    },
                    dataType:"json",//设置需要返回的数据类型
                    async:true,
                    success:function(data){
                    	var div = document.getElementById("biao");
	    				var asd = ""; 
                        var mag = eval("("+data+")");//将数据转换成json类型，可以把data用alert()输出出来看看到底是什么样的结构
                        //得到d是一个形如{"key":"value","key1":"value1"}的数据类型，然后取值出来
                        var msg = mag["listmoney"];
                        for(var key in msg)
                        {
                        	 asd+="<tr><td>";
                       asd+=msg[key].year;
                       asd+="</td><td>";
                       asd+=msg[key].month;
                       asd+="</td><td>";
                       asd+=msg[key].staffid;
                       asd+="</td><td>";
                       asd+=msg[key].staffname;
                       asd+="</td><td>";
                       asd+=msg[key].money;
                       asd+="</td><td>";
                       asd+=msg[key].jiben;
                       asd+="</td><td>";
                       asd+=msg[key].cainuan;
                       asd+="</td><td>";
                       asd+=msg[key].bingjia;
                       asd+="</td><td>";
                       asd+=msg[key].shijia;
                       asd+="</td><td>";
                       asd+=msg[key].caidao;
                       asd+="</td><td>";
                       asd+=msg[key].bingjiakou;
                       asd+="</td><td>";
                       asd+=msg[key].shijiakou;
                       asd+="</td><td>";
                       asd+=msg[key].chidaokou;
                       asd+="</td><td>";
                       asd+=msg[key].gerenyanglao;
                       asd+="</td><td>";
                       asd+=msg[key].gongsiyanglao;
                       asd+="</td><td>";
                       asd+=msg[key].gerengongjijin;
                       asd+="</td><td>";
                       asd+=msg[key].gerenshui;
                       asd+="</td></tr>";
                        }
                      
                       
                      	
 						div.innerHTML =asd;
                      // alert(d);
                         
                    },
                    error:function(){
                        alert("系统异常，请稍后重试！");
                    }//这里不要加","
                });
		
	}
   function YYYYMMDDstart()   
   {   
            
    
           //先给年下拉框赋内容   
           var y  = new Date().getFullYear();   
           for (var i = (y-30); i <= y; i++) //以今年为准，前30年，后30年   
                   document.reg_testdate.YYYY.options.add(new Option( i , i));   
    
           //赋月份的下拉框   
           for (var i = 1; i < 13; i++)   
                   document.reg_testdate.MM.options.add(new Option( i , i));   
    
           document.reg_testdate.YYYY.value = y;   
           document.reg_testdate.MM.value = new Date().getMonth() + 1;   
           
   }   
   
   function YYYYDD(str) //年发生变化时日期发生变化(主要是判断闰平年)   
   {   
           var MMvalue = document.reg_testdate.MM.options[document.reg_testdate.MM.selectedIndex].value;   
           if (MMvalue == ""){ var e = document.reg_testdate.DD; optionsClear(e); return;}   
           var n = MonHead[MMvalue - 1];   
           if (MMvalue ==2 && IsPinYear(str)) n++;   
                writeDay(n)   
   }   
    
   function optionsClear(e)   
   {   
        e.options.length = 1;   
   }   
   //--></script>	                   
		<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2><i class="fa  fa-search red"></i><span class="break"></span><strong>工资<form name="reg_testdate" action="" method="post"> 
  <select name="YYYY" onchange="YYYYDD(this.value)">
    <option value=""></option>
  </select>
  <select name="MM" onchange="MMDD(this.value)">
    <option value=""></option>
  </select>
  <select name="s_value">
				<option value="aa">部门1</option>
				<option value="cc">部门2</option>
			</select>
  <input type="button" value="提交" class="btn btn-info " onclick="one()"/>
  
  
</form></strong></h2>
							
						</div>
						<div class="panel-body">
							<table class="table table-striped table-bordered bootstrap-datatable datatable">
							  <thead>
								  <tr>
								  		<th>年份</th>
								  		<th>月份</th>
									  	<th>员工编号</th>
                                          <th>员工姓名</th>
                                          <th>实发工资</th>
										  <th>基本工资</th>
										  <th>采暖补贴</th>
										  <th>病假天数</th>
										  <th>事假天数</th>
										  
										  <th>迟到天数</th>
										  <th>病假扣款</th>
										  <th>事假扣款</th>
										  
										  <th>迟到扣款</th>
										  <th>个人支付养老保险</th>
										  <th>公司支付养老保险</th>
										  <th>个人支付公积金</th>
										  <th>个人所得税</th>
										  <th>补发</th>       
								  </tr>
							  </thead>   
							  <tbody id="biao">								
								
							  </tbody>
						  </table>            
						</div>
					</div>
				</div><!--/col-->		      
		<!-- end: Content -->
		<br><br><br>
		
		
		
	</div><!--/container-->
		
	
	
	
	<div class="clearfix"></div>
	
		
	<!-- start: JavaScript-->
	<!--[if !IE]>-->

			<script src="assets/js/jquery-2.1.1.min.js"></script>

	<!--<![endif]-->

	<!--[if IE]>
	
		<script src="assets/js/jquery-1.11.1.min.js"></script>
	
	<![endif]-->

	<!--[if !IE]>-->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.1.1.min.js'>"+"<"+"/script>");
		</script>

	<!--<![endif]-->

	<!--[if IE]>
	
		<script type="text/javascript">
	 	window.jQuery || document.write("<script src='assets/js/jquery-1.11.1.min.js'>"+"<"+"/script>");
		</script>
		
	<![endif]-->
	<script src="<%=basePath%>assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="<%=basePath%>assets/js/bootstrap.min.js"></script>	
	
	
	<!-- page scripts -->
	<script src="<%=basePath%>assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
	<script src="<%=basePath%>assets/plugins/touchpunch/jquery.ui.touch-punch.min.js"></script>
	<script src="<%=basePath%>assets/plugins/moment/moment.min.js"></script>
	<script src="<%=basePath%>assets/plugins/fullcalendar/js/fullcalendar.min.js"></script>
	<!--[if lte IE 8]>
		<script language="javascript" type="text/javascript" src="assets/plugins/excanvas/excanvas.min.js"></script>
	<![endif]-->
	<script src="<%=basePath%>assets/plugins/flot/jquery.flot.min.js"></script>
	<script src="<%=basePath%>assets/plugins/flot/jquery.flot.pie.min.js"></script>
	<script src="<%=basePath%>assets/plugins/flot/jquery.flot.stack.min.js"></script>
	<script src="<%=basePath%>assets/plugins/flot/jquery.flot.resize.min.js"></script>
	<script src="<%=basePath%>assets/plugins/flot/jquery.flot.time.min.js"></script>
	<script src="<%=basePath%>assets/plugins/flot/jquery.flot.spline.min.js"></script>
	<script src="<%=basePath%>assets/plugins/xcharts/js/xcharts.min.js"></script>
	<script src="<%=basePath%>assets/plugins/autosize/jquery.autosize.min.js"></script>
	<script src="<%=basePath%>assets/plugins/placeholder/jquery.placeholder.min.js"></script>
	<script src="<%=basePath%>assets/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="<%=basePath%>assets/plugins/datatables/js/dataTables.bootstrap.min.js"></script>
	<script src="<%=basePath%>assets/plugins/raphael/raphael.min.js"></script>
	<script src="<%=basePath%>assets/plugins/morris/js/morris.min.js"></script>
	<script src="<%=basePath%>assets/plugins/jvectormap/js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="<%=basePath%>assets/plugins/jvectormap/js/jquery-jvectormap-world-mill-en.js"></script>
	<script src="<%=basePath%>assets/plugins/jvectormap/js/gdp-data.js"></script>	
	<script src="<%=basePath%>assets/plugins/gauge/gauge.min.js"></script>
	
	
	<!-- theme scripts -->
	<script src="<%=basePath%>assets/js/SmoothScroll.js"></script>
	<script src="<%=basePath%>assets/js/jquery.mmenu.min.js"></script>
	<script src="<%=basePath%>assets/js/core.min.js"></script>
	<script src="<%=basePath%>assets/plugins/d3/d3.min.js"></script>	
	
	<!-- inline scripts related to this page -->
	<script src="<%=basePath%>assets/js/pages/index.js"></script>	
	
	<!-- end: JavaScript-->
	
</body>
</html>