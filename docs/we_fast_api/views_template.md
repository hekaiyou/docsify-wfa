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
        view_navigation.py
        view_url.py
    __init__.py
    api_items.py
    routing.py
```

提前在 `views` 目录下创建好 `view_url.py` 和 `templates/my_module/items.html` 两个文件。

### 路由配置

编辑 `view_url.py` 文件, 这个文件是路由配置文件, 这里创建了路由函数 `page_my_module_items` 用于返回 `my_module/items.html` 模板文件:

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

函数 `page_my_module_items` 的参数 `request` 是一个字典, 包含 `Request` 类型的 `request` 键值与 `bases` 模块环境变量的 `settings` 键值。

### 模板内容

编辑 `templates/my_module/items.html` 文件, 这个文件是使用 [Jinja2](https://docs.jinkan.org/docs/jinja2/) 模板语言编写的模板页面, 以这个页面为例, 它可以访问函数 `page_my_module_items` 返回的 `{**request}` 字典内容:

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
<!-- JavaScript 脚本代码 -->
<script>
    console.log('第一个脚本');
</script>
{% endblock %}
```

打开浏览器访问 [http://127.0.0.1:8083/view/my_module/items/](http://127.0.0.1:8083/view/my_module/items/) 路径, 将会看到当前这个模板页面的显示效果:

![views_template_1.png](https://trilium.hekaiyou.top/static/image/views_template/views_template_1.png)

同时打开浏览器的控制台, 可以看到模板页面通过 **JavaScript** 脚本打印的字符串。

## 添加导航栏

编辑 `view_navigation.py` 文件, 这个文件用于控制导航栏的菜单项, 其中 `view_navigation_bar` 是一个固定参数名, 框架启动时会自动读取这个字典。

- `path`: 页面访问路径
- `permission`: 需要的权限列表, 空列表表示无权限, 只需登录即可访问
- `text`: 菜单项名称
- `weight`: 菜单项排序权重, 数值越大越靠前

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

打开浏览器访问 [http://127.0.0.1:8083/](http://127.0.0.1:8083/) 路径, 完成用户登录操作后进入首页, 就可以看到导航栏中出现上面配置的菜单项:

![views_template_2.png](https://trilium.hekaiyou.top/static/image/views_template/views_template_2.png)

每个模块的 `view_navigation.py` 文件单独维护, 框架会负责汇总全部模块的配置。

## 设置首页

## 资源文件
