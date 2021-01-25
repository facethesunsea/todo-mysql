use mysql;
select host, user from user;
-- 因为 mysql 版本是5.7，因此新建用户为如下命令；
-- create user root identified by '123456';
-- 将 docker_mysql 数据库的权限授权给创建的 docker 用户，密码为 123456；
grant all on mytest.* to root@'%' identified by '123456';
-- 这条命令一定要有；
flush privileges;