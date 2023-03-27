# 初识 WeFastAPI

> 一个基于 [FastAPI](https://fastapi.tiangolo.com/) 的前/后端服务快速启动框架项目.

## 快速开始💨

### 🎆 快速安装

#### 🔸 前置依赖

- Language: Python >= 3.7
- DB: MongoDB >= 4.0

#### 🔸 下载项目

```bash
git clone https://github.com/hekaiyou/we-fast-api.git
```

#### 🔸 开发环境

创建 Python3 版本的虚拟环境:

```bash
cd we-fast-api
python -m venv venv
source venv/bin/activate
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

* 使用默认的地址和端口启动项目

```bash
python main.py
```

* 访问以下文档和服务地址

  - 通过 http://127.0.0.1:8083/ 访问基础 Web 站点.
  - 通过 http://127.0.0.1:8083/docs/ 访问由 [Swagger UI](https://github.com/swagger-api/swagger-ui) API 文档.
  - 通过 http://127.0.0.1:8083/redoc/ 访问由 [ReDoc](https://github.com/Rebilly/ReDoc) API 文档.
