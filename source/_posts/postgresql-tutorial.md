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


## 基本命令 ##

首先要进入postgres的用户来管理数据库。

```bash
$ sudo su postgres
```

这时候可能会遇到 `FATAL: role “postgres” does not exist`，输入以下命令解决：

```sql
$ CREATE USER postgres SUPERUSER;
```

然后是常用的一些命令集合：

```sql
// List of databases
\l

// 创建表
craete table posts (title varchar(64), content text);

// List of relations, 就是列出表
\dt

```