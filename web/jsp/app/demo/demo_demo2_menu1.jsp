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
<newx:stable hasTitle="false" title="测试标题">
<newx:tr>
	<newx:td/>
	<newx:td/>
	<newx:td/>
</newx:tr>
<newx:tr>
	<newx:td>fdsfsdf</newx:td>
	<newx:td/>
	<newx:td/>
</newx:tr>
<newx:tr>
	<newx:td/>
	<newx:td/>
	<newx:td/>
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
