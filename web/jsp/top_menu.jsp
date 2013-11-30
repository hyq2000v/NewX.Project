<%@ page contentType="text/html;charset=utf-8" %>
<%@page import="newx.framework.FrameworkService"%>
<%@page import="newx.mod.menu.MenuService"%>
<%@page import="newx.mod.menu.Right"%>
<%@page import="newx.util.SysUtil"%>
<%@page import="java.util.List"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title><%=SysUtil.getTitle()%></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="<%=request.getContextPath()%>/css/newx.css" rel="stylesheet">
<style type="text/css">
body {height: 100%;}
.breadcrumb {
  height: 35px;
  width: 100%;
  vertical-align:middle;
  margin: 0 0 0px;
  list-style: none;
  background-color: #eceef3;
  background-image: -moz-linear-gradient(top, #ffffff, #a4b0c6);
  background-image: -ms-linear-gradient(top, #ffffff, #a4b0c6);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#a4b0c6));
  background-image: -webkit-linear-gradient(top, #ffffff, #a4b0c6);
  background-image: -o-linear-gradient(top, #ffffff, #a4b0c6);
  background-image: linear-gradient(top, #ffffff, #a4b0c6);
  background-repeat: repeat-x;
  border-style: solid;
  border-width: 1px 0px 1px 0px;
  border-color: #a4b0c6;
  /* 
  -webkit-border-radius: 3px;
     -moz-border-radius: 3px;
          border-radius: 3px;
  */
  filter: progid:dximagetransform.microsoft.gradient(startColorstr='#ffffff', endColorstr='#a4b0c6', GradientType=0);
  -webkit-box-shadow: inset 0 1px 0 #ffffff;
     -moz-box-shadow: inset 0 1px 0 #ffffff;
          box-shadow: inset 0 1px 0 #ffffff;
}
</style>
</head>
<%
	List<Right> menuList = MenuService.getInstance().getTopMenu();
%>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="margin-left:0px;margin-right:0px" width="100%" height='100%'>
    <div class="breadcrumb">
        <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" style="padding-top:2px">
            <tr>
                <td><div style="width:151px"></div></td>
                <td nowrap></td>
                <%
                	for (Right right : menuList) {
                %>
                <td nowrap><a href="#" mid="<%= right.getId()%>"><img src="<%= request.getContextPath()%>/images/bof/pageSetup.png"/><%= right.getRightname() %></a></td>
                <td nowrap width="10px"></td>
                <%
                }
                %>
                <td width="100%"></td>
            </tr>
        <table>
    </div>
</body>
</html>
