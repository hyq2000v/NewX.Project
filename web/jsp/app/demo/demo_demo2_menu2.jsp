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
<newx:mtable title="测试标题">
	<newx:head name="name" txt="名称" format="date"/>
	<newx:head name="sex" txt="性别" dict="sys_dd_sex"/>
	<newx:head name="borth" txt="出生地"/>
	<newx:provider id="demo_ma_test1_s3" sql="select * from log_activity where name = $(name)">
    	<newx:param name="name" value="花俊悔"/>
    </newx:provider>
</newx:mtable>
</body>
</html>
