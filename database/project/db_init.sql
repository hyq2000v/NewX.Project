-- --------------------------------------------------------------------
-- 系统建表脚本 不可重复执行
-- --------------------------------------------------------------------
drop TABLE sys_right;
CREATE TABLE IF NOT EXISTS `sys_right` (
  `id` varchar(50) NOT NULL COMMENT '权限ID',
  `rightname` varchar(100) NOT NULL COMMENT '权限名称',
  `url` varchar(100) NOT NULL COMMENT '链接地址',
  `rightsortno` varchar(20) NOT NULL COMMENT '排序号',
  `parentid` varchar(50) NOT NULL COMMENT '上级权限主键',
  `memo` varchar(255) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='菜单权限表';
