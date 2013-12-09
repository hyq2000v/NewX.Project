delete from sys_right where id in ('demo', 'demo_1', 'demo_demo1_menu1', 'demo_demo1_menu2', 'demo_2', 'demo_demo2_menu1', 'demo_demo2_menu2');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demo', '基本信息管理', 'rootdir/jsp/blank.jsp', '99', '0', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demo_1', 'Demo二级菜单一', 'rootdir/jsp/blank.jsp', '1', 'demo', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demo_demo1_menu1', 'Demo1三级菜单1', 'rootdir/action/MainAction?menuid=demo_demo1_menu1&actionType=demo_demo1_menu1', '1', 'demo_1', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demo_demo1_menu2', 'Demo1三级菜单2', 'rootdir/action/MainAction?menuid=demo_demo1_menu2&actionType=demo_demo1_menu2', '2', 'demo_1', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demo_2', 'Demo二级菜单二 ', 'rootdir/jsp/blank.jsp', '2', 'demo', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demo_demo2_menu1', 'Demo2三级菜单1', 'rootdir/action/MainAction?menuid="demo_demo2_menu1"&actionType=demo_demo2_menu1', '1', 'demo_2', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demo_demo2_menu2', 'Demo2三级菜单2', 'rootdir/action/MainAction?menuid=demo_demo2_menu2&actionType=demo_demo2_menu2', '2', 'demo_2', '菜单权限');


delete from sys_right where id in ('demoo', 'demoo_1', 'demoo_1_2', 'demoo_1_3');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demoo', '系统管理', 'rootdir/jsp/blank.jsp', '99', '0', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demoo_1', 'demoo二级菜单', 'rootdir/jsp/blank.jsp', '1', 'demoo', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demoo_1_2', 'demoo三级菜单1', 'rootdir/action/MainAction?menuid=demoo_1_2&actionType=demoo_1_2', '1', 'demoo_1', '菜单权限');
insert into sys_right (id, rightname, url, rightsortno, parentid, memo)
values ('demoo_1_3', 'demoo三级菜单2', 'rootdir/action/MainAction?menuid=demoo_1_3&actionType=demoo_1_3', '1', 'demoo_1', '菜单权限');
