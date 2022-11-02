use api;

-- 接口信息
create table if not exists api.`interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `name` varchar(256) not null comment '名称',
    `description` varchar(256) null comment '描述',
    `url` varchar(512) not null comment '接口地址',
    `requestHeader` text null comment '请求头',
    `responseHeader` text null comment '响应头',
    `status` int default 0 not null comment '接口状态(0-关闭，1-开启)',
    `method` varchar(256) not null comment '请求类型',
    `userId` bigint not null comment '创建人',
    `create_time` datetime not null comment '创建时间',
    `update_time` datetime not null comment '更新时间',
    `is_deleted` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)'
) comment '接口信息' character set utf8 ;

insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('s0', 'EN', 'www.gwenn-tillman.net', '谢鑫鹏', 'W5W', 0, 'MjMeP', 1626228971, '2022-03-04 06:44:29', '2022-12-31 10:57:39');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('Mv', 'GHW', 'www.drew-brown.net', '武鸿煊', 'n5E', 0, 'z8L7', 0, '2022-10-31 16:11:52', '2022-05-01 18:37:33');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('FW', '33', 'www.florencio-hintz.name', '马明哲', 'PdbT', 0, 'ui', 114812, '2022-09-26 10:53:09', '2022-08-21 07:34:09');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('b1jDW', '1Gz2l', 'www.rochell-schinner.name', '崔瑞霖', 'YGQ', 0, '4eL11', 871480, '2022-08-09 06:20:36', '2022-01-18 00:24:50');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('4D', 'Hg', 'www.clay-quigley.io', '卢烨华', 'SPp', 0, '3y0Y', 3263534492, '2022-07-03 03:57:07', '2022-04-26 10:00:42');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('AX', 'jW', 'www.adolph-medhurst.co', '杜黎昕', 'td', 0, 'Zz2', 4833310302, '2022-08-21 10:50:21', '2022-07-11 15:10:29');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('rv', 'ydhp', 'www.robin-waelchi.name', '田涛', 'zlda', 0, 'IhIZK', 793634, '2022-12-09 05:51:41', '2022-11-04 09:52:30');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('KGSf', 'xGi', 'www.tamera-deckow.net', '蔡炫明', 'zZa', 0, 'dTrR', 6337, '2022-05-10 03:21:01', '2022-08-31 12:53:46');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('MXbH', 'CV', 'www.marhta-hegmann.name', '钱果', 'sKpF', 0, '1QLJ', 687, '2022-11-08 08:49:50', '2022-11-22 20:50:53');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('UxLF', 'dRL71', 'www.mitchell-marquardt.io', '范鸿煊', 'CzGY', 0, 'lWO', 4, '2022-07-24 17:10:06', '2022-02-25 11:26:33');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('NF', 'hjEx', 'www.ellis-murray.info', '莫潇然', 'pOh', 0, 'rD', 10312, '2022-10-26 09:54:29', '2022-07-25 20:30:54');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('9Ihn', 'jRpn', 'www.dewitt-schultz.info', '严天翊', 'tglUt', 0, '3gi', 4, '2022-07-13 19:16:11', '2022-05-25 19:20:19');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('Ki', 'Ae6GG', 'www.darnell-mitchell.biz', '薛瑞霖', 'kvR5p', 0, '7a', 58514, '2022-03-09 00:35:19', '2022-01-20 19:03:01');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('s0f', 'Ugh', 'www.tamekia-kuhn.org', '范聪健', 'Uci1', 0, 'EVl', 60, '2022-09-10 09:32:01', '2022-03-18 02:49:20');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('vD', 'ATSNc', 'www.otha-boyle.org', '侯浩宇', 'NS', 0, 'rRurw', 486083798, '2022-02-17 19:21:52', '2022-11-03 06:31:06');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('c7z', 'KU', 'www.doris-sporer.name', '阎越彬', 'Lq', 0, 'VP5', 4165, '2022-04-16 02:15:58', '2022-04-14 05:39:04');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('Baz8q', '2B', 'www.roseann-blick.io', '石炫明', 'WM', 0, 'lt', 384329364, '2022-02-22 22:17:20', '2022-06-25 18:33:31');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('HCvJ', 'hdJ', 'www.signe-frami.net', '彭文博', '52Ws', 0, '6Y1', 13896730, '2022-07-12 02:12:48', '2022-12-04 02:05:09');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('2Zwd7', 'QjqW', 'www.garry-howe.net', '贾鹭洋', '4pay', 0, 'pI', 29556, '2022-04-26 18:01:10', '2022-07-01 03:27:39');
insert into api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`, `create_time`, `update_time`) values ('Pt6I', 'iwC', 'www.adelina-beer.net', '姚峻熙', 'aQl', 0, 'zh8KB', 993, '2022-06-12 03:42:15', '2022-04-22 23:13:36');