<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="java.sql.*"
    import="zijin.bean.*"
    import="zijin.others.*"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<title>紫金试题库系统</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/jquery-2.1.4.js"></script>
<script src="../js/bootstrap.min.js"></script>
<style>
body{background-image: url(../picture/bg1.jpg);
	background-size: cover;
}
</style>
</head>
<body>		
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="adminHome.jsp">紫金试题库系统</a>
    </div>
     <div>
        <ul class="nav navbar-nav">
            <li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">班级管理<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="addClass.jsp">添加班级</a>
								</li>
								<li>
									 <a href="../ManagementClass?method=findClass">班级维护</a>
								</li>
							</ul>
			</li>
			<li class="dropdown active">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">学生管理<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="addStudent.jsp">添加学生</a>
								</li>
								<li>
									 <a href="../ManagementStudent?method=findStudent">学生维护</a>
								</li>
							</ul>
			</li>
			<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">教师管理<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="addTeacher.jsp">添加教师</a>
								</li>
								<li>
									 <a href="../ManagementTeacher?method=findTeacher">教师维护</a>
								</li>
							</ul>
			</li>
			<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">学科管理<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="addSubject.jsp">添加学科</a>
								</li>
								<li>
									 <a href="../ManagementSubject?method=findSubject">学科维护</a>
								</li>
							</ul>
			</li>
        </ul>
    </div>
    <ul class="nav navbar-nav navbar-right">
           <li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>我的<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="../PersonalInfo?method=findAdminInfo">个人信息</a>
								</li>
								<li>
									 <a href="updateAPW.jsp">修改密码</a>
								</li>
								<li>
									 <a href="../LoginServlet?usertype=logout">注销</a>
								</li>
							</ul>
			</li>
    </ul>
  </div>
</nav>
</div>
<% 
   myClass c = new myClass();
   List<Classbean> cl = c.getmyClass();
%>
<div class="col-md-6 col-md-offset-3">
      <h1 class="page-header text-center" ><font color="white">学生添加</font></h1>
<form class="form-horizontal" role="form" action="../ManagementStudent?method=addStudent" method="post">
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label"><font color="white">学号</font></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name = "sid" placeholder="请输入学号">
    </div>
  </div>
<div class="form-group">
    <label for="lastname" class="col-sm-2 control-label"><font color="white">姓名</font></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name = "sname" placeholder="请输入姓名">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label"><font color="white">密码</font></label>
    <div class="col-sm-10">
      <input type="password" class="form-control" name = "pwd" placeholder="请输入密码">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label"><font color="white">班级</font></label>
    <div class="col-sm-10">
      <select  class="form-control" name = "classid">
   
	<%if (cl == null || cl.size() == 0) {
		out.println("<option>还没有班级~</option>");						
		}
	else {
		for (Classbean r : cl) {	
	%>
	<option value=<%=r.getClassid() %> > <%=r.getClassname() %></option>
	<%}} %>
	</select><br>
	 </div>
  </div>
  <div class="form-group">
    <label for="sex" class="col-sm-2 control-label"><font color="white">性别</font></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name = "sex" placeholder="请输入性别（男/女）">
    </div>
  </div>
  <div class="form-group">
    <label for="phone" class="col-sm-2 control-label"><font color="white">电话号码</font></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name = "phone" placeholder="请输入电话号码">
    </div>
  </div>
  <div class="form-group">
    <label for="address" class="col-sm-2 control-label"><font color="white">地址</font></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name = "address" placeholder="请输入地址">
    </div>
  </div>
  <div class="form-group">
    <label for="birthdate" class="col-sm-2 control-label"><font color="white">生日（yyyy-MM-dd）</font></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name = "birthdate" placeholder="请输入生日(yyyy-MM-dd)">
    </div>
  </div>
  <div class="form-group">
    <label for="email" class="col-sm-2 control-label"><font color="white">邮箱</font></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name = "email" placeholder="请输入邮箱">
    </div>
  </div>
 <div class="form-group">
    <div class="col-sm-offset-3 col-sm-6">
      <button type="submit" class="btn btn-primary btn-lg btn-block" >添加</button>
    </div>
  </div>
</form>


	</div>
</div>

</body>
</html>