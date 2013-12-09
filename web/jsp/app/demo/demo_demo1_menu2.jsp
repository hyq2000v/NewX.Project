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
<newx:NavBar/>
<br>
<newx:SRecordSet id="demo_datasrc_test1">
    <newx:Provider id="demo_dd_test1_s1" sql="select * from log_activity where name=:name" outParam="outparam1">
    	<newx:Param name="name" type="S" value="阮欣南"/>
    </newx:Provider>
    <newx:Provider id="demo_dd_test1_s2" sql="select * from sys_right where 1 = 1 limit 1" outParam="outparam1"/>
    <newx:Provider id="demo_sa_test1_s3" sql="select * from sys_right where 1 = 1 limit 1" outParam="outparam1"/>
    <newx:Provider id="demo_sa_test1_s4" sql="select * from log_activity where id = :id" outParam="outparam1">
    	<newx:Param name="id" type="I" value="42"/>
    </newx:Provider>
</newx:SRecordSet>
<br>
<br>
<b>多记录数据源</b>
<br>
<newx:MRecordSet id="demo_datasrc_test2">
    <newx:Provider id="demo_ma_test1_s3" sql="select * from sys_right where 1 = 1"/>
</newx:MRecordSet>
</body>
</html>
