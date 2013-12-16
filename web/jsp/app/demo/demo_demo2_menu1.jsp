<%@page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="newx.tld" prefix="newx" %>
<%@page import="newx.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
<title><%=SysUtil.getTitle()%></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<LINK href="<%=request.getContextPath()%>/css/newx.css" type=text/css rel=StyleSheet>
<script type="text/javascript" src="<%= request.getContextPath()%>/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/js/common.js"></script>
</head>
<body>
<newx:navbar/>
<br>
<newx:stable title="测试标题">
<newx:tr>
	<newx:td txt="角色名字" type="2" name="name"/>
	<newx:td txt="角色名字" type="2" name="sex"/>
	<newx:td txt="角色名" type="2" name="fdsfdsf"/>
</newx:tr>
<newx:tr>
	<newx:td txt="&nbsp;" tcolspan="6"/>
</newx:tr>
</newx:stable>
<br>
<newx:stable title="测试标题">
<newx:tr>
	<newx:td/>
	<newx:td/>
	<newx:td/>
</newx:tr>
<newx:tr>
	<newx:td/>
	<newx:td/>
	<newx:td/>
</newx:tr>
</newx:stable>
</body>
</html>
