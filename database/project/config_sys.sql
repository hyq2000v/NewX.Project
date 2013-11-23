delete from sys_right where id in ('demo', 'demo_1', 'demo_demo1_menu1', 'demo_demo1_menu2', 'demo_2', 'demo_demo2_menu1', 'demo_demo2_menu2');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demo', ' Demo ', 'href="javascript:ShowHide(''demo'','' Demo '',''./blank.jsp'')"', '99', '0', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demo_1', ' Demo二级菜单一 ', 'href="javascript:ShowHide(''demo_1'','' Demo二级菜单 '',''./blank.jsp'')"', '1', 'demo', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demo_demo1_menu1', ' Demo三级菜单1 ', 'href="rootdir/action/MainAction?menuid=demo_demo1_menu1&actionType=demo_demo1_menu1" target="workspace"', '1', 'demo_1', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demo_demo1_menu2', ' Demo三级菜单2 ', 'href="rootdir/action/MainAction?menuid=demo_demo1_menu2&actionType=demo_demo1_menu2" target="workspace"', '2', 'demo_1', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demo_2', ' Demo二级菜单二 ', 'href="javascript:ShowHide(''demo_2'','' Demo二级菜单二 '',''./blank.jsp'')"', '2', 'demo', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demo_demo2_menu1', ' Demo三级菜单1 ', 'href="rootdir/action/MainAction?menuid=demo_demo2_menu1&actionType=demo_demo2_menu1" target="workspace"', '1', 'demo_2', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demo_demo2_menu2', ' Demo三级菜单2 ', 'href="rootdir/action/MainAction?menuid=demo_demo2_menu2&actionType=demo_demo2_menu2" target="workspace"', '2', 'demo_2', '菜单权限');


delete from sys_right where id in ('demoo', 'demoo_1', 'demoo_1_2', 'demoo_1_3');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demoo', ' demoo ', 'href="javascript:ShowHide(''demoo'','' demoo '',''./blank.jsp'')"', '99', '0', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demoo_1', ' demoo二级菜单 ', 'href="javascript:ShowHide(''demoo_1'','' demoo二级菜单 '',''./blank.jsp'')"', '1', 'demoo', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demoo_1_2', ' demoo三级菜单1 ', 'href="rootdir/action/MainAction?menuid=demoo_1_2&actionType=demoo_1_2" target="workspace"', '1', 'demoo_1', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demoo_1_3', ' demoo三级菜单2 ', 'href="rootdir/action/MainAction?menuid=demoo_1_3&actionType=demoo_1_3" target="workspace"', '1', 'demoo_1', '菜单权限');
