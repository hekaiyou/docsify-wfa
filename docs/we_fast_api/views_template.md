# WeFastAPI 视图模板 {docsify-ignore}

在 [we-fast-api](https://github.com/hekaiyou/we-fast-api) 项目中, 基于以下内容封装了一种方便使用的视图模板方案:

- [FastAPI 静态文件](https://fastapi.tiangolo.com/zh/tutorial/static-files/)
- [FastAPI 模板](https://fastapi.tiangolo.com/zh/advanced/templates/)
- [Pico.css 纯 CSS 框架](https://picocss.com/)

这个方案结合了 API 的权限管理, 可以根据用户角色所拥有的权限, 以达到控制用户能看到哪些页面的效果。

## 基础页面

在 [we-fast-api](https://github.com/hekaiyou/we-fast-api) 项目下的 `apis/my_module` 模块中, 创建一个 `views` 目录:

```bash
my_module/
    views/
        templates/
            my_module/
                items.html
        view_url.py
    __init__.py
    api_items.py
    routing.py
```

提前在 `views` 目录下创建好 `view_url.py` 和 `templates/my_module/items.html` 两个文件。

### 路由配置

`view_url.py`

```python
from apis.templating import templates
from fastapi import APIRouter, Depends
from fastapi.responses import HTMLResponse
from core.dependencies import get_view_request

router = APIRouter(prefix='/my_module', )

@router.get('/items/', response_class=HTMLResponse, include_in_schema=False)
async def page_my_module_items(request: dict = Depends(get_view_request)):
    return templates.TemplateResponse('my_module/items.html', {**request})
```

### 模板内容

`templates/my_module/items.html`

```html
{% extends 'core/navigation.html' %}

{% block title %}
第一个页面
{% endblock %}

{% block custom_head %}
<!-- JavaScript 和 CSS 文件 -->
{% endblock %}

{% block main %}
<!-- 页面主体 -->
<p>第一个段落</p>
{% endblock %}

{% block operate_bottom %}
<!-- 底部悬浮操作区 -->
{% endblock %}

{% block javascript %}
<!-- Javascript 脚本代码 -->
<script>
    console.log('第一个脚本');
</script>
{% endblock %}
```

## 添加导航栏

`view_navigation.py`

```bash
my_module/
    views/
        templates/
            my_module/
                items.html
        view_navigation.py
        view_url.py
    __init__.py
    api_items.py
    routing.py
```

```python
view_navigation_bar = [
    {
        'path': '/view/my_module/items/',
        'permission': [],
        'text': '第一个页面',
        'weight': 1,
    },
]
```

## 设置首页

## 资源文件
