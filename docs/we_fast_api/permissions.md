# WeFastAPI 权限管理 {docsify-ignore}

在 [we-fast-api](https://github.com/hekaiyou/we-fast-api) 项目中, 包含三种接口权限管理模式和一个白名单机制:

- 开放式接口 *(直接访问)*
- 无权限接口 *(登录后可以访问)*
- 有权限接口 *(用户角色有对应权限才能访问)*
- 白名单机制 *(指定的IP或网段可以直接访问除核心接口外的其他接口)*

这些模式和机制不需要额外的开发, 只需要简单的配置就可以实现。

## 开放式接口

在模块接口文件 *(api_xxx.py)* 中, 为接口访问路径的最后添加一层 `open/` 路径, 就可以使接口不受任何限制的被请求:

```python
from fastapi import APIRouter

router = APIRouter(prefix='/items', )

@router.get('/open/', summary='第一个接口 (开放)', )
async def read_hello():
    return {'message': 'Hello World'}
```

访问接口路径, 将看到如下的 JSON 响应:

```json
{"message":"Hello World"}
```

## 无权限接口

在模块接口文件 *(api_xxx.py)* 中, 为接口访问路径的最后添加一层 `free/` 路径, 只要用户完成登录, 不需要额外分配角色权限, 就可以请求该接口:

```python
from fastapi import APIRouter, Depends
from apis.bases.models import UserGlobal
from apis.bases.api_me import read_me_info

router = APIRouter(prefix='/items', )

@router.get('/free/', summary='第一个接口 (无权限)', )
async def read_hello(user: UserGlobal = Depends(read_me_info)):
    return {'message': f'Hello {user.username}'}
```

访问接口路径, 将看到如下的 JSON 响应:

- 用户没有登录
   ```json
   {"detail": "未认证"}
   ```
- 用户已完成登录
   ```json
   {"message": "Hello admin"}
   ```

## 有权限接口

与前面两者不同, 常规的有权限接口不需要在访问路径上添加 *(但是应该避免使用 `open` 和 `free` 作为路径层级)* 内容:

```python
from fastapi import APIRouter, Depends
from apis.bases.models import UserGlobal
from apis.bases.api_me import read_me_info

router = APIRouter(prefix='/items', )

@router.get('/', summary='第一个接口', )
async def read_hello(user: UserGlobal = Depends(read_me_info)):
    return {'message': f'Hello {user.username}'}
```

而是通过访问 [轻前端站点](http://127.0.0.1:8083/) 创建角色、设置角色权限, 然后为用户分配角色:

访问接口路径, 将看到如下的 JSON 响应:

- 用户没有登录
   ```json
   {"detail": "未认证"}
   ```
- 用户已完成登录, 未分配角色及其权限
   ```json
   {"detail": "无 第一个接口 权限"}
   ```
- 用户已完成登录, 已分配角色及其权限
   ```json
   {"message": "Hello admin"}
   ```

## 白名单机制
