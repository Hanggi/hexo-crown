---
title: postgreSQL-基本
date: 2018-04-24 13:21:51
tags:
---


PostgreSQL是自由的对象-关系型数据库服务器（数据库管理系统），在灵活的BSD风格许可证下发行。

<!-- more -->

## 安装 ##

macOS:

```bash
$ brew install postgresql
```

ubuntu:

```bash
$ sudo apt-get install postgresql
```


## 安装&报错 ##

首先要进入postgres的用户来管理数据库，并进入数据库。

```bash
$ sudo su postgres
$ psql
```

这时候可能会遇到 `FATAL: role “postgres” does not exist`，输入以下命令解决：

```sql
CREATE USER postgres SUPERUSER;
```

如果需要修改密码：

```sql
ALTER USER postgres WITH PASSWORD 'postgres';
```


## 基础命令 ##

创建数据库：
```sql
CREATE DATABASE database_name;
```

删除数据库：（谨慎）
```sql
DROP DATABASE database_name;
```

创建表：
```sql
CREATE TABLE table_name(
	id serial primary key,
	title text not null,
	name varchar(64),
	create_at timestamp default now()
);
```

删除表：
```sql
DROP TABLE table_name;
```

插入数据：
```sql
INSERT INTO table_name (column1, column2, ...) VALUES (value1, value2, ...);
```

查询数据：
```sql
SELECT * FROM table_name;
```

更新数据：
```sql
UPDATE table_name SET column1 = value, column2 = value2 WHERE [condition];
```

删除数据：
```sql
DELETE FROM table_name WHERE [condition];
```

排序&数量限制：
```sql
SELECT * FROM table_name WHERE [condition] ORDER BY column [ASC | DESC] LIMIT 10;
```



## 数据库命令行 ##

然后是常用的一些命令集合：

```c
// List of databases，列出数据库
\l

// 创建表
craete table posts (title varchar(64), content text);

// List of relations, 就是列出表
\dt

```