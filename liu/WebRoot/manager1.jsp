
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
	    <style>
	    	
 			.xuanfu{
 		 		position: fixed;
 		 		margin-left:100px;
				margin-top:1px;
				z-index:10000;
 					}
		</style>
	</head>


<body>
	<!-- start: Header -->
	<div class="navbar" role="navigation">
	
		<div class="container-fluid">		
			
			
			
		
			
	        <ul class="nav navbar-nav navbar-right">
				
				
				
				<li class="dropdown visible-md visible-lg">
	        		<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img class="user-avatar" src="<%=basePath%>assets/img/avatar.jpg" alt="user-mail">${sysuser.username}</a>
	        		
	      		</li>
				<li><a href="login.html"><i class="fa fa-power-off"></i></a></li>
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
						<c:if test="${sysuser.power=='2'}">	<li>
								<a href="<%=basePath%>manager1.jsp"><i class="fa  fa-group "></i><span class="text"> 员工管理</span> </a>
								
							</li>
							<li><a href="<%=basePath%>manager2.jsp"><i class="fa  fa-search"></i><span class="text"> 工资查询</span></a></li></c:if>
							<c:if test="${sysuser.power=='3'}"><li>
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
			
			<div class="xuanfu" id="xuanfu">
				<div class="panel panel-default">
			            <div class="panel-heading">
			                <h2><i class="fa fa-indent red"></i><strong>更换部门职务</strong></h2>
			            </div>
						<div class="panel-body">
							<form action="" method="post" enctype="multipart/form-data" class="form-horizontal ">
				                <div class="form-group">
				                    <label class="col-md-3 control-label" >员工ID</label>
				                    <div class="col-md-9">
				                        <p class="form-control-static" id="staffid"></p>
				                    </div>
				                </div>
				                <div class="form-group">
				                    <label class="col-md-3 control-label" for="text-input">员工姓名</label>
				                    <div class="col-md-9">
				                        <p class="form-control-static" id="staffname"></p>
				                    </div>
				                </div>
				               
				              
				               
				                <div class="form-group">
				                    <label class="col-md-3 control-label" for="select">部门</label>
				                    <div class="col-md-9">
				                        <select id="select1" name="select" class="form-control" size="1">
				                            <option value="0">部门1</option>
				                            <option value="1">部门2</option>
				                           
				                        </select>
				                       
				                       
				                    </div>
				                </div>
				                 <div class="form-group">
				                    <label class="col-md-3 control-label" for="select">职务</label>
				                    <div class="col-md-9">
				                       
				                        <select id="select2" name="select" class="form-control" size="1">
				                            <option value="0">管理</option>
				                            <option value="1">技术</option>
				                           
				                        </select>
				                       
				                    </div>
				                </div>
										
															
							
				            
				           
				              
				             
				                
				               
								<br>
				            </form>
						</div>
						<div class="panel-footer">
							 <button type="button" class="btn btn-sm btn-danger" onclick="guan()"><i class="fa fa-ban"></i> 关闭</button>
		                    <button type="button" class="btn btn-sm btn-success" onclick="altsave()"><i class="fa fa-dot-circle-o"></i> 保存</button>
	                       
		                </div>	
			        </div>	
			</div>
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa  fa-group"></i> 员工管理</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="<%=basePath%>index.jsp">首页</a></li>
						<li><i class="fa  fa-group"></i>员工管理</li>						  	
					</ol>
				</div>
			</div>
			
<script type="text/javascript">

function show(){
document.getElementById("xuanfu").style.display="";
//alert(document.getElementById("div").style.display)
}
function hidden(){
document.getElementById("xuanfu").style.display="none";
//alert(document.getElementById("div").style.display)
}
	function alt(id)
	{
		
		show();
		$.ajax({
                    type:"post",
                    url:"<%=basePath%>findstaffbyid",  //需要用来处理ajax请求的action,excuteAjax为处理的方法名，JsonAction为action名
                    data:{//设置数据源
                    	staffid:id,
                    	
                       // position:$("input[name=position]").val()//这里不要加","  不然会报错，而且根本不会提示错误地方
                    },
                    dataType:"json",//设置需要返回的数据类型
                    async:true,
                    success:function(data){
                    	
                        var mag = eval("("+data+")");//将数据转换成json类型，可以把data用alert()输出出来看看到底是什么样的结构
                        //得到的d是一个形如{"key":"value","key1":"value1"}的数据类型，然后取值出来
                      $("p[id='staffid']").text(mag.staffid); 
                      $("p[id='staffname']").text(mag.staffname);
                     
                      
                      	},
                      // alert(d);
                         
                    
                    error:function(){
                        alert("系统异常，请稍后重试！");
                    }//这里不要加","
                });
	}
		
		
	function altsave()
	{
		$.ajax({
                    type:"post",
                    url:"<%=basePath%>altstaff",  //需要用来处理ajax请求的action,excuteAjax为处理的方法名，JsonAction为action名
                    data:{//设置数据源
                    	staffid: $("p[id='staffid']").text(),
                    	staffname:$("p[id='staffname']").text(),
                    	department:$("select[id='select1']").find("option:selected").text(),
                    	position:$("select[id='select2']").find("option:selected").text(),
                       // position:$("input[name=position]").val()//这里不要加","  不然会报错，而且根本不会提示错误地方
                    },
                    dataType:"json",//设置需要返回的数据类型
                    async:true,
                    success:function(data){
                    	
                        var mag = eval("("+data+")");//将数据转换成json类型，可以把data用alert()输出出来看看到底是什么样的结构
                        //得到的d是一个形如{"key":"value","key1":"value1"}的数据类型，然后取值出来
                    	alert("成功");
                    	hidden();
                     	one();
                      
                      	},
                      // alert(d);
                         
                    
                    error:function(){
                        alert("系统异常，请稍后重试！");
                    }//这里不要加","
                });
	}
	function guan()
	{
		
		hidden();
	}
	function add()
	{	
		
		var  name= $("input[name='text-input1']").val();
		alert(name);
		$.ajax({
                    type:"post",
                    url:"<%=basePath%>addstaff",  //需要用来处理ajax请求的action,excuteAjax为处理的方法名，JsonAction为action名
                    data:{//设置数据源
                    	
                    	staffname:$("input[name='text-input1']").val(),
                    	department:$("select[name='selectbumen']").find("option:selected").text(),
                    	position:$("select[name='selectzhiwu']").find("option:selected").text(),
                    	
                       // position:$("input[name=position]").val()//这里不要加","  不然会报错，而且根本不会提示错误地方
                    },
                    dataType:"json",//设置需要返回的数据类型
                    async:true,
                    success:function(data){
                    	
                        var mag = eval("("+data+")");//将数据转换成json类型，可以把data用alert()输出出来看看到底是什么样的结构
                        //得到的d是一个形如{"key":"value","key1":"value1"}的数据类型，然后取值出来
                       
                      	var asd = mag["asd"];
                      	if(asd=='13')alert("姓名重复");
                      	else if(asd=='14')alert("姓名不能为空");
                      	else{
                      		alert("成功");
                      		document.getElementById("clo").click(); 
                      		one();
                      	}
                      // alert(d);
                         
                    },
                    error:function(){
                        alert("系统异常，请稍后重试！");
                    }//这里不要加","
                });
	}

	 window.onload=function(){
	 		one();
	 		hidden();
       	 
       	 
     
		} ;
		function de(id)
		{
			
			$.ajax({
                    type:"post",
                    url:"<%=basePath%>delstaff",  //需要用来处理ajax请求的action,excuteAjax为处理的方法名，JsonAction为action名
                    data:{//设置数据源
                    	staffid:id,
                    	
                       // position:$("input[name=position]").val()//这里不要加","  不然会报错，而且根本不会提示错误地方
                    },
                    dataType:"json",//设置需要返回的数据类型
                    async:true,
                    success:function(data){
                    	
                        var mag = eval("("+data+")");//将数据转换成json类型，可以把data用alert()输出出来看看到底是什么样的结构
                        //得到的d是一个形如{"key":"value","key1":"value1"}的数据类型，然后取值出来
                    	alert("成功");
                    
                     	one();
                      
                      	},
                      // alert(d);
                         
                    
                    error:function(){
                        alert("系统异常，请稍后重试！");
                    }//这里不要加","
                });
		}
	function one(){
		
		
		 $.ajax({
                    type:"post",
                    url:"<%=basePath%>user",  //需要用来处理ajax请求的action,excuteAjax为处理的方法名，JsonAction为action名
                    data:{//设置数据源
                    	
                    	
                    	bumen:$("select[name='s_value']").find("option:selected").text(),
                    	zhiwu:$("select[name='d_value']").find("option:selected").text(),
                    	
                       // position:$("input[name=position]").val()//这里不要加","  不然会报错，而且根本不会提示错误地方
                    },
                    dataType:"json",//设置需要返回的数据类型
                    async:true,
                    success:function(data){
                    	var div = document.getElementById("biao");
	    				var asd = ""; 
                        var mag = eval("("+data+")");//将数据转换成json类型，可以把data用alert()输出出来看看到底是什么样的结构
                        //得到的d是一个形如{"key":"value","key1":"value1"}的数据类型，然后取值出来
                       var msg = mag["liststaff"];
                     
                       for(var key in msg)
                       {
                       		 asd+="<tr><td>";
                       asd+=msg[key].staffid;
                       asd+="</td><td>";
                       asd+=msg[key].staffname;
                       asd+="</td><td>";
                       asd+=msg[key].department;
                       asd+="</td><td>";
                       asd+=msg[key].position;
                       asd+="</td>";
                       asd+="<td><a class=\"btn btn-success\" onclick=\"alt('"+msg[key].staffid+"')\"><i class=\"fa fa-edit \"></i></a><a class=\"btn btn-danger\" onclick=\"de('"+msg[key].staffid+"')\"><i class=\"fa fa-trash-o \"></i></a></td>";
                       asd+="</tr>";
                       }
                      
                       
                      	
 						div.innerHTML =asd;
                      // alert(d);
                         
                    },
                    error:function(){
                        alert("系统异常，请稍后重试！");
                    }//这里不要加","
                });
		
	}
</script>			
		

		<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2><i class="fa  fa-group red"></i><span class="break"></span><strong>员工表
		

  
			<select name="s_value">
				<option value="aa">部门1</option>
				<option value="cc">部门2</option>
			</select>
			<select name="d_value">
				<option value="aa">管理</option>
				<option value="cc">技术</option>
			</select>
			
			 <input type="submit" value="提交" onclick="one()" class="btn btn-info " />
		</strong></h2>
							<div class="panel-actions">
								<a href="table.html#" class="btn-setting"><i class="fa  fa-plus-circle"></i></a>
								
							</div>
							
						</div>
						<div class="panel-body">
							<table class="table table-striped table-bordered bootstrap-datatable datatable">
							  <thead>
								  <tr>
									  <th>员工工号</th>
                                      <th>员工姓名</th>
                                      <th>部门</th>
									  <th>职务</th>
									  <th>操作</th>
								  </tr>
							  </thead>   
							  <tbody id="biao">								
								<tr>
									<td>Willson</td>
                                    <td>Developer</td>
                                    <td>2563$</td>
									<td>
										<span class="label label-warning">Pending</span>
									</td>
									<td>
										<a class="btn btn-success" href="table.html#">
											<i class="fa fa-search-plus "></i>                                            
										</a>
										<a class="btn btn-info" href="table.html#">
											<i class="fa fa-edit "></i>                                            
										</a>
										<a class="btn btn-danger" onclick="de('asd')">
											<i class="fa fa-trash-o "></i> 

										</a>
									</td>
								</tr>
							
							  </tbody>
						  </table>            
						</div>
					</div>
				</div><!--/col-->			
		</div>
		<!-- end: Content -->
		<br><br><br>
		
		
		
	</div><!--/container-->
		
	
	<div class="modal fade"  id="myModal">
		<div class="modal-dialog" >
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">添加员工</h4>
				</div>
				
			        <div class="panel panel-default">
			           
						<div class="panel-body">
							<form action="" method="post" enctype="multipart/form-data" class="form-horizontal ">
				                
				                <div class="form-group">
				                    <label class="col-md-3 control-label" for="text-input">员工姓名</label>
				                    <div class="col-md-9">
				                        <input type="text" id="text-input" name="text-input1" class="form-control" placeholder="员工姓名">
				                        <span class="help-block">×必填</span>
				                    </div>
				                </div>
				                <div class="form-group">
				                    <label class="col-md-3 control-label" for="select">所属部门</label>
				                    <div class="col-md-9">
				                        <select id="select" name="selectbumen" class="form-control input-lg" size="1">
				                           
				                            <option value="1">部门1</option>
				                            <option value="2">部门2</option>
				                           
				                        </select>
				                         <span class="help-block">×必选</span>
				                    </div>
				                </div>
				                <div class="form-group">
				                    <label class="col-md-3 control-label" for="select">职务</label>
				                    <div class="col-md-9">
				                        <select id="select" name="selectzhiwu" class="form-control input-lg" size="1">
				                           
				                            <option value="1">管理</option>
				                            <option value="2">技术</option>
				                           
				                        </select>
				                         <span class="help-block">×必选</span>
				                    </div>
				                </div>			
				                
								<br>
				            
						</div>
							
			        </div>	
			    
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal" id="clo">关闭</button>
					<input type="button" class="btn btn-primary" value="提交" onclick="add()">
					</form>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
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