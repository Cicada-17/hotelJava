<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
					
				</div><h3 class="page-header"><i class="fa fa-folder-open"></i> 导入信息管理</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="<%=basePath%>index.html">首页</a></li>
						<li><i class="fa fa-folder-open"></i>导入信息管理</li>						  	
					</ol>
			</div>
			
								

				                  
				                   
	<script type="text/javascript" src="scripts/jquery-2.1.1.min.js"></script>
    <script type="text/javascript">
    	function save()
    	{
    	
    		var temp=/^\d+(\.\d+)?$/;
 				
 				var z = $("input[name='shijia']").val();
 				var p =  $("input[name='chidao']").val();
 				var d = $("input[name='bingjia']").val();
    		if( $("input[name='bingjia']").val()==""||$("input[name='shijia']").val()==""||$("input[name='chidao']").val()=="")
    		{
    			alert("不能为空");
    		}
    		else if(temp.test(z)==false||temp.test(d)==false||temp.test(p)==false){
 				
				alert("输入错误请输入数字");
			}
			else {
    		$.ajax({
                    type:"post",
                    url:"<%=basePath%>upddwage",  //需要用来处理ajax请求的action,excuteAjax为处理的方法名，JsonAction为action名
                    data:{//设置数据源
                    	staffid:   $("p[id='staffid']").text(),
                    	shijia: $("input[name='shijia']").val(),
                    	bingjia: $("input[name='bingjia']").val(),
                    	chidao : $("input[name='chidao']").val()
                       // position:$("input[name=position]").val()//这里不要加","  不然会报错，而且根本不会提示错误地方
                    },
                    dataType:"json",//设置需要返回的数据类型
                    async:true,
                    success:function(data){
                    	
                        var mag = eval("("+data+")");//将数据转换成json类型，可以把data用alert()输出出来看看到底是什么样的结构
                        //得到的d是一个形如{"key":"value","key1":"value1"}的数据类型，然后取值出来
                     	alert("成功");
                     	document.getElementById("guan").click(); 
                      	s();
                     
                      
                      	},
                      // alert(d);
                         
                    
                    error:function(){
                        alert("系统异常，请稍后重试！");
                    }//这里不要加","
                });}
    	}
    	function xiugai(id)
    	{
    		
    		$.ajax({
                    type:"post",
                    url:"<%=basePath%>finddwagebyid",  //需要用来处理ajax请求的action,excuteAjax为处理的方法名，JsonAction为action名
                    data:{//设置数据源
                    	staffid:id,
                    	
                       // position:$("input[name=position]").val()//这里不要加","  不然会报错，而且根本不会提示错误地方
                    },
                    dataType:"json",//设置需要返回的数据类型
                    async:true,
                    success:function(data){
                    	
                        var mag = eval("("+data+")");//将数据转换成json类型，可以把data用alert()输出出来看看到底是什么样的结构
                        //得到的d是一个形如{"key":"value","key1":"value1"}的数据类型，然后取值出来
                      var staff = mag["staff"];
                      var dwage = mag["dwage"];
                      $("p[id='staffid']").text(dwage.staffid); 
                      $("p[id='staffname']").text(staff.staffname);
                       $("p[id='department']").text(staff.department);
                        $("p[id='position']").text(staff.position);
                    
                       $("input[name='shijia']").val(dwage.shijia);
                       $("input[name='bingjia']").val(dwage.bingjia);
                       $("input[name='chidao']").val(dwage.chidao);
                     
                      
                      	},
                      // alert(d);
                         
                    
                    error:function(){
                        alert("系统异常，请稍后重试！");
                    }//这里不要加","
                });
    		
    		document.getElementById("asd").click(); 
    	}
    	function shanchu(id)
    	{
    		alert(id);
    	}
    	var qwe =4;
    	function one() {
    		$.ajax({
    		
    			type:"post",
    			url:"<%=basePath%>selgwageaction",
    			data:{},
    			dataType:"json",
    			async:true,
    			success:function(data){
	    				var div = document.getElementById("gwage");
	    				var asd = "<th>员工编号</th><th>员工姓名</th><th>部门</th><th>职务</th>";
	    				var map = eval("("+data+")");
	    				asd+="";
		    			for(var key in map)
		    			{
		    				var listwage = map[key];
		    				qwe = 4+listwage.length;
		    				
		    				for(var wage in listwage)
		    				{
		    					asd+="<th>";
		    					asd+=listwage[wage].wagename;
		    					
		    					asd+="</th>";
		    				}
		    				
		    			}
		    			asd+="<th>操作</th>";
		    			div.innerHTML =asd;
    			}
    			
    		});
    		
    	
           
             
        }
        window.onload=function(){
       	 
       	 s();
     
		} ;
        /* 提交结果，执行ajax */
        function s(){
             
           		
               
                $.ajax({
                    type:"post",
                    url:"<%=basePath%>money3begin",  //需要用来处理ajax请求的action,excuteAjax为处理的方法名，JsonAction为action名
                    data:{//设置数据源
                    	department:$("select[name='s_value']").find("option:selected").text()
                    	
                       // position:$("input[name=position]").val()//这里不要加","  不然会报错，而且根本不会提示错误地方
                    },
                    dataType:"json",//设置需要返回的数据类型
                    async:true,
                    success:function(data){
                    	var div = document.getElementById("first");
	    				var asd = ""; 
                        var msg = eval("("+data+")");//将数据转换成json类型，可以把data用alert()输出出来看看到底是什么样的结构
                        //得到的d是一个形如{"key":"value","key1":"value1"}的数据类型，然后取值出来
                       
                       
                      	var listdwage = msg["listdwage"];
                      	var liststaff = msg["liststaff"];
                      
                      	for( var gwage in listdwage)
                      	{	
                      		
                      		asd+="<tr ><td>";
                      		asd+=listdwage[gwage].staffid;
                      		asd+="</td><td>";
                      		asd+=liststaff[gwage].staffname;
                      		asd+="</td><td>";
                      		asd+=liststaff[gwage].department;
                      		asd+="</td><td>";
                      		asd+=liststaff[gwage].position;
                      		asd+="</td><td>";
                      		asd+=listdwage[gwage].shijia;
                      		asd+="</td><td>";
                      		asd+=listdwage[gwage].bingjia;
                      		asd+="</td><td>";
                      		asd+=listdwage[gwage].chidao;
                      		asd+="</td><td><div class=\"panel-actions\"><a  class=\"btn-setting btn btn-success\" onclick=\"xiugai("+liststaff[gwage].staffid+")\"><i class=\"fa fa-edit\"></i></a></div></td>";
							//asd+="</td><td><a class=\"btn btn-success\" ><i class=\"fa fa-edit \"></i></a><a class=\"btn btn-danger\" ><i class=\"fa fa-trash-o \"></i></a></td>";
                      	}
 						div.innerHTML =asd;
                      // alert(d);
                         
                    },
                    error:function(){
                        alert("系统异常，请稍后重试！");
                    }//这里不要加","
                });
                 
           
        }
     
        /* 页面加载完成，绑定事件 */
        $(document).ready(function(){  
        	alert("asd");        
           s();//点击提交，执行ajax
        });
    </script>			                     
		
	               
		<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2><i class="fa fa-folder-open red"></i><span class="break"></span><strong>导入信息管理<form name="reg_testdate" action="" method="post"> 
  
  <select name="s_value">
				<option value="aa">部门1</option>
				<option value="cc">部门2</option>
			</select>
  <input type="button" value="提交" class="btn btn-info " onclick="s()"/>
  
  
</form></strong></h2>
						<div class="panel-actions">
										<a href="table.html#" class="btn-setting "  id="asd"></a>
								
								
							</div>	
						</div>
						
						<div class="panel-body" >
							<form>
							<table class="table table-striped table-bordered bootstrap-datatable datatable">
							  <thead>
								  <tr id="gwage">
								  		
									<th>员工编号</th><th>员工姓名</th><th>部门</th><th>职务</th>
									<th>事假次数</th>
									<th>病假次数</th>
									<th>迟到次数</th>  
									
										
										 
										        
								  </tr>
							  </thead>   
							  <tbody id="first">								
								
								
							  </tbody>
							 	
						  </table>
						
						  </form>           
						</div>
					</div>
				</div><!--/col-->		                
		<h1>主页</h1>  

		</div>
		<!-- end: Content -->
		<br><br><br>
		
		
		
	</div><!--/container-->
		
	
	<div class="modal fade" id="myModal">
		
		<div class="modal-dialog" >
			<div class="modal-content" >
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">导入</h4>
				</div>
			
				
				              
				 
				              
				
				  <div class="panel panel-default">
			           
						<div class="panel-body">
							<form action="" method="post" enctype="multipart/form-data" class="form-horizontal ">
				                
				                <div class="form-group">
				                   <div class="form-group">
				                    <label class="col-md-3 control-label">员工ID</label>
				                    <div class="col-md-9">
				                        <p class="form-control-static" id="staffid"></p>
				                    </div>
				                    </div>
				                </div>
				                <div class="form-group">
				                     <div class="form-group">
				                   <div class="form-group">
				                    <label class="col-md-3 control-label">员工姓名</label>
				                    <div class="col-md-9">
				                        <p class="form-control-static" id="staffname"></p>
				                    </div>
				                    </div>
				                </div>
				                  
				                <div class="form-group">
				                   <div class="form-group">
				                    <label class="col-md-3 control-label">部门</label>
				                    <div class="col-md-9">
				                        <p class="form-control-static" id="department"></p>
				                    </div>
				                    </div>
				                </div>
				                  
				                <div class="form-group">
				                   <div class="form-group">
				                    <label class="col-md-3 control-label">职务</label>
				                    <div class="col-md-9">
				                        <p class="form-control-static" id="position"></p>
				                    </div>
				                    </div>
				                </div>
				                  
				                <div class="form-group">
				                   <div class="form-group">
				                    <label class="col-md-3 control-label">事假次数</label>
				                    <div class="col-md-9">
				                        <input type="text" name="shijia"/>
				                    </div>
				                    </div>
				                </div>
				                <div class="form-group">
				                 <div class="form-group">
				                    <label class="col-md-3 control-label">病假次数</label>
				                    <div class="col-md-9">
				                        <input type="text" name="bingjia"/>
				                    </div>
				                    </div>
				                    
				                </div>			
				                 <div class="form-group">
				                 <div class="form-group">
				                    <label class="col-md-3 control-label">迟到次数</label>
				                    <div class="col-md-9">
				                        <input type="text" name="chidao"/>
				                    </div>
				                    </div>
				                    
				                </div>	
								<br>
				            
						</div>
							
			        </div>	
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal" id="guan">关闭</button>
					<button type="button" class="btn btn-primary" onclick="save()">保存</button>
				
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