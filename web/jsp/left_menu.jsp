<%@ page contentType="text/html;charset=utf-8" %>
<%@page import="newx.framework.ConfigService"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title><%=ConfigService.getInstance().getTitle()%></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>banner</title>
<link href="<%=request.getContextPath()%>/css/menu.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%= request.getContextPath()%>/js/jquery-1.9.1.js"></script>
</head>
<script type="text/javascript">
$(document).ready(function() {
    $("table.menubutton1").click(function() {
        $("div[id=" + this.id + "][name='Child']").toggle();
    });
});
</script>

<body class="navibody">
    <table width="75%" height="" border="0" cellspacing="0" cellpadding="0">
    <tr><td height="11" ></td></tr>
	</table>

<div name="TOP" id="demo" style="display:block">
<table style="background-repeat: repeat-y;background-position: right top;" border=0  cellspacing=0 cellpadding=0 width=100%>

    <tr class='Item' >
        <td align="center">
            <div name=Parent>
                <table id = demo_1 width="100%" class="menubutton1" border="0" cellspacing="0" cellpadding="0">
                    <tr> <td style="padding-top: 3px;" align="center"> Demo二级菜单一 </td> </tr>
                </table>
            </div>
        </td>
    </tr>
    <tr> <td height='10px'></td> </tr>
    <tr>
        <td>
            <div id = demo_1 name='Child' style='display:none'>
                <table width=100% border=0 align="left" cellpadding=2 cellspacing=0 bordercolor=#ffffff class='memufont' style='border-collapse:collapse'>
                    <tr><td class=lefticon></td><td align="left"><a href="demo_1_1.html" target="workspace" class="left1"> Demo三级菜单1 </a></td></tr>
                    <tr> <td class=lefticon></td><td align="left"><a href="demo_1_2.html" target="workspace" class="left1"> Demo三级菜单2 </a></td></tr>
                    </table>
            </div>
        </td>
    </tr>

    <tr class='Item' >
        <td align="center">
            <div name=Parent>
                <table id = demo_2 width="100%"  class="menubutton1" border="0" cellspacing="0" cellpadding="0">
                    <tr> <td style="padding-top: 3px;" align="center"> Demo二级菜单二 </td> </tr>
                </table>
        </div>
    </td>
    </tr>
    <tr> <td height='10px'></td> </tr>
    <tr>
        <td>
            <div id = 'demo_2' name='Child' style='display:none'>
                <table width=100% border=0 align="left" cellpadding=2 cellspacing=0 bordercolor=#ffffff class='memufont' style='border-collapse:collapse'>
                <tr> <td class=lefticon></td> <td align="left"><a href="demo_2_1.html" target="workspace" class="left1"> Demo三级菜单1 </a></td> </tr>
                <tr> <td class=lefticon></td> <td align="left"><a href="demo_2_2.html" target="workspace" class="left1"> Demo三级菜单2 </a></td> </tr>
                </table>
            </div>
        </td>
    </tr>
</table>
</div>

</body>
</html>
