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
				<li><li><a href="login.jsp"><i class="fa fa-power-off"></i></a></li></li>
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
							<c:if test="${sysuser.power=='3'}"><li>
								<a href="#"><i class="fa  fa-wrench"></i><span class="text">工资管理</span> <span class="fa fa-angle-down pull-right"></span></a>
								<ul class="nav sub">
									<li><a href="<%=basePath%>wage/selwage_sel"><i class="fa  fa-gear"></i><span class="text"> 工资项目管理</span></a></li>
									<li><a href="<%=basePath%>money2.jsp"><i class="fa  fa-star"></i><span class="text"> 固定工资管理</span></a></li>
									<li><a href="<%=basePath%>money3.jsp"><i class="fa  fa-folder-open"></i><span class="text">导入项目数据录入</span></a></li>
								</ul>
							</li>
							<li>
								<a href="#"><i class="fa  fa-cny"></i><span class="text"> 工资结算</span></a>
								
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
					<h3 class="page-header"><i class="fa  fa-gear"></i> 工资项目管理</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="<%=basePath%>index.jsp">首页</a></li>
						<li><i class="fa  fa-gear"></i>工资项目管理</li>						  	
					</ol>
				</div>
			</div>
			
			
		

		<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2><i class="fa  fa-gear red"></i><span class="break"></span><strong>工资项目</strong></h2>
							<div class="panel-actions">
								<a  class="btn-setting"><i class="fa  fa-plus-circle"></i></a>
								
							</div>
						</div>
						<div class="panel-body">
							<table class="table table-striped table-bordered bootstrap-datatable datatable">
							  <thead>
								  <tr>
									  <th>名称</th>
                                      <th>类型</th>
                                      <th>是否在工资条显示</th>
									  <th>计算公式（只有计算项目有）</th>
									  <th>序号</th>
									  <th>增减项</th>
									  <th>备注</th>
									 
								  </tr>
							  </thead>   
							  <tbody>	
							  	<c:forEach items="${listwage}" var="wage">
							  		<tr>
									<td>${wage.wagename}</td>
                                    <td>${wage.wagetype}</td>
                                    <td>${wage.wageyn}</td>
									<td>
										${wage.wageformula}
									</td>
									<td>${wage.wagenumber}</td>
									<td>${wage.wageiord}</td>
									<td>${wage.wagerm}</td>
									
									
								</tr>
							  	</c:forEach>							
								
								
								
								
							  </tbody>
						  </table>            
						</div>
					</div>
				</div><!--/col-->			
		</div>
		<!-- end: Content -->
		<br><br><br>
		
		
		
	</div><!--/container-->
		
	
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">添加工资项目</h4>
				</div>
				
			        <div class="panel panel-default">
			           
						<div class="panel-body">
							<form action="" method="post" enctype="multipart/form-data" class="form-horizontal ">
				                
				                <div class="form-group">
				                    <label class="col-md-3 control-label" for="text-input">项目名称</label>
				                    <div class="col-md-9">
				                        <input type="text" id="text-input" name="text-input" class="form-control" placeholder="项目名称">
				                        <span class="help-block">×必填</span>
				                    </div>
				                </div>
				                <div class="form-group">
				                    <label class="col-md-3 control-label" for="select">项目类型</label>
				                    <div class="col-md-9">
				                        <select id="select" name="select" class="form-control input-lg" size="1">
				                           
				                            <option value="1">固定项目</option>
				                            <option value="2">计算项目</option>
				                            <option value="3">导入项目</option>
				                        </select>
				                         <span class="help-block">×必选</span>
				                    </div>
				                </div>
				                <div class="form-group">
				                    <label class="col-md-3 control-label">是否在工资条中显示</label>
				                    <div class="col-md-9">
				                        <div class="radio">
				                            <label for="radio1">
				                            <input type="radio" id="radio1" name="radios" value="是"> 是
				                            </label>
				                        </div>
				                        <div class="radio">
				                            <label for="radio2">
				                            <input type="radio" id="radio2" name="radios" value="否"> 否
				                            </label>
				                        </div>
				                        
				                    </div>
				                </div>
				                <div class="form-group">
				                    <label class="col-md-3 control-label" for="text-input">计算公式</label>
				                    <div class="col-md-9">
				                        <input type="text" id="text-input" name="text-input" class="form-control" placeholder="基本工资×8%">
				                        <span class="help-block">×只有计算项目填写</span>
				                    </div>
				                </div>		
				                <div class="form-group">
				                    <label class="col-md-3 control-label" for="select">增减项</label>
				                    <div class="col-md-9">
				                        <select id="select" name="select" class="form-control input-lg" size="1">
				                           
				                            <option value="1">增加</option>
				                            <option value="2">减少</option>
				                            <option value="3">不影响</option>
				                        </select>
				                         <span class="help-block">×必选</span>
				                    </div>
				                </div>
				                <div class="form-group">
								  <label class="control-label" for="textarea2">备注</label>
								  <div class="controls">
									<textarea id="limit" class="form-control" rows="6" style="width:100%"></textarea>
								  </div>
								</div>
								<br>
				            
						</div>
							
			        </div>	
			    
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<input type="submit" class="btn btn-primary" value="提交">
					</form>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
	<div class="clearfix"></div>
	
		
	<!-- start: JavaScript-->
	<!--[if !IE]>-->

			<script src="<%=basePath%>assets/js/jquery-2.1.1.min.js"></script>

	<!--<![endif]-->

	<!--[if IE]>
	
		<script src="assets/js/jquery-1.11.1.min.js"></script>
	
	<![endif]-->

	<!--[if !IE]>-->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='<%=basePath%>assets/js/jquery-2.1.1.min.js'>"+"<"+"/script>");
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