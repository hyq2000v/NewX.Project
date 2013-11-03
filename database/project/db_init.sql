-- --------------------------------------------------------------------
-- 系统建表脚本 不可重复执行
-- --------------------------------------------------------------------
CREATE TABLE `sys_right` (
   `id` varchar(50) character set gbk NOT NULL COMMENT '权限ID',
   `rightname` varchar(100) character set gbk NOT NULL COMMENT '权限名称',
   `url` varchar(255) character set gbk NOT NULL COMMENT '链接地址',
   `rightsortno` varchar(8) character set gbk NOT NULL COMMENT '排序号',
   `parentid` varchar(50) character set gbk NOT NULL COMMENT '上级权限主键',
   `memo` varchar(255) character set gbk default NULL COMMENT '备注',
   PRIMARY KEY  (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
