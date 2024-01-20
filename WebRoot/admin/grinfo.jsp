<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>水族用品网上直销系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
	<script type="text/javascript" src="<%=path %>/layer/layer.js"></script>
	<script type="text/javascript" src="<%=path %>/admin/js/popup.js"></script>
</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<!--logo end-->
<jsp:include page="top.jsp"></jsp:include>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
<jsp:include page="left.jsp"></jsp:include>
</aside>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
	<div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12" style="min-height: 384px;">
                    <section class="panel">
                        <header class="panel-heading">
                           	 编辑个人信息
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form"  method="post" action="<%=path %>/admin/updateGrinfo.do">
                                <input type="hidden" name="id" value="${user.id}">
                                
                                <div class="form-group">
                                <label for="exampleInputEmail1">头像</label>
                                <input name='filename' type='text' class="form-control" value="${user.filename}"  style="width: 300px;width: 700px;" id='url' required/>&nbsp;<input type='button' value='上传'  class="layui-input" onClick="up('url')" style="width: 60px;height: 37px;"/>
                                </div>
                                
                                <div class="form-group">
                                <label for="exampleInputEmail1">用户名</label>
                                <input type="text" class="form-control" name="username" id="username" value="${user.username}" disabled="disabled" placeholder="标题" required oninvalid="setCustomValidity('请输入用户名')" oninput="setCustomValidity('');">
                                </div>
                                
                                <div class="form-group">
                                <label for="exampleInputEmail1">姓名</label>
                                <input type="text" class="form-control" name="realname" id="realname"  value="${user.realname}" required oninvalid="setCustomValidity('姓名不能为空')" oninput="setCustomValidity('');">
                                </div>
                                
                                <div class="form-group">
                                <label for="exampleInputEmail1">性别</label>
                                <select name="sex" id="sex"  class="form-control">
							  	  <option value="男" <c:if test="${user.sex eq '男' }">selected</c:if>>男</option>
							  	  <option value="女" <c:if test="${user.sex eq '女' }">selected</c:if>>女</option>
							  	</select>
                                </div>
                                
                                <div class="form-group">
                                <label for="exampleInputEmail1">电话</label>
                                <input type="number" class="form-control" name="tel" id="tel" value="${user.tel}" required oninvalid="setCustomValidity('电话不能为空')" oninput="setCustomValidity('');">
                                </div>
                                
                                <button type="submit" class="btn btn-info">提交</button>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
            

        <!-- page end-->
        </div>
</section>
 <!-- footer -->
 <jsp:include page="foot.jsp"></jsp:include>
  <!-- / footer -->
</section>

<!--main content end-->
</section>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
</body>
<script type="text/javascript">
function up(tt)
{
		    layer.open({
		      type: 2,
		      title: '上传文件',
		      shadeClose: true,
		      shade: false,
		      maxmin: true, //开启最大化最小化按钮
		      area: ['450px', '200px'],
		      content: '/onlineshopssm/upload.jsp?Result='+tt
		    });
}	
</script>
</html>
