# 初识 WeFastAPI

> An awesome project.

## 快速开始💨

### 🎆 快速安装

#### 🔸 下载项目

```bash
git clone https://github.com/hekaiyou/we-fast-api.git
```

#### 🔸 安装依赖

```bash
pip install -r requirements.txt
```

#### 🔸 配置环境变量

在项目根目录下创建 **.env** 文件, 添加数据库的连接信息, 也可以选择直接设置系统环境变量:

```bash
MONGO_DB_HOST='127.0.0.1'
MONGO_DB_PORT=27017
MONGO_DB_NAME='test_database'
```

环境变量读取的优先级排序, 有同名环境变量时，取优先级高的变量值:

1. 系统环境变量
2. **.env** 文件
3. 环境变量默认值

*根据数据库是否开启权限管理, 选择性使用 `MONGO_DB_USERNAME` 和 `MONGO_DB_PASSWORD` 变量配置数据库认证信息.*

### 🎇 启动项目
