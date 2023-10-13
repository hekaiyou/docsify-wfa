# WeFastAPI 简单视图 {docsify-ignore}

如果按照前面的教程, 我们已经在 `my_module` 模块实现了增加、删除、修改、查询和分页的接口, 现在我们可以为这些接口添加简单的视图, 需要创建两个新的模板页面, 当前 `my_module` 模块的目录结构应该如下所示：

```bash
my_module/
    views/
        static/
            css/
            image/
            js/
        templates/
            my_module/
                items.html
                drawing-prompt.html
                drawing-prompt-edit.html
        view_navigation.py
        view_url.py
    __init__.py
    api_drawing_prompt.py
    api_items.py
    models.py
    routing.py
    validate.py
```

提前在模块目录下创建好 `templates/my_module/drawing-prompt.html` 和 `templates/my_module/drawing-prompt-edit.html` 两个文件。

## 分页查询

编辑 `templates/my_module/drawing-prompt.html` 文件, 我们将通过这个文件为 *读取绘图提示 (分页)* 接口开发一个分页查询页面, 前端代码如下：

```html
{% extends 'core/navigation.html' %}

{% block title %}
绘图提示
{% endblock %}

{% block main %}
<form>
    <label>
        <select id="category" placeholder="提示类别">
            <option value="" selected>全部类别</option>
            <option value="风格">风格</option>
            <option value="反向提示">反向提示</option>
            <option value="背景">背景</option>
        </select>
    </label>
</form>
<div id="details-content">
</div>
{% endblock %}

{% block operate_bottom %}
<suspended-right>
    <button id="newItem">创建</button>
</suspended-right>
{% endblock %}

{% block javascript %}
<script>
    var loadSwitch = false;
    var loadSkip = 0;
    var loadMark = true;
    var searchCategory = '{{ category }}';
    function loadData() {
        if (!loadMark) {
            return;
        }
        loadMark = false;
        let searchData = { 'limit': 20, 'skip': loadSkip };
        if (searchCategory) {
            searchData['category'] = searchCategory
        }
        utilAjax(
            type = 'GET',
            url = '/api/my_module/drawing_prompt/',
            data = searchData,
            data_format = 'query',
            check = {},
            success = function (data, textStatus) {
                if (data['items'].length == 20) {
                    loadSwitch = true;
                } else {
                    loadSwitch = false;
                }
                loadSkip += data['items'].length;
                data['items'].forEach(function (value, index) {
                    $('#details-content').append('<details class="itemDetails" onclick="event.preventDefault()" id="' + value.id + '"><summary>' + value.describe + ' <sup>' + value.prompt + '</sup></summary></details>');
                });
                $('.itemDetails').click(function () {
                    window.location.href = '/view/my_module/drawing_prompt/update/' + $(this).attr('id') + '/?category=' + $('#category').val();
                });
            },
            complete = function (request, textStatus) {
                loadMark = true;
            },
            success_reminder = false,
            not_close = false,
        );
    }
    function searchChange() {
        loadSwitch = false;
        loadSkip = 0;
        loadMark = true;
        $('#details-content').empty();
        loadData();
    }
    $(document).ready(function () {
        $('#category').val('{{ category }}');
        loadData();
        $('#newItem').click(function () {
            window.location.href = '/view/my_module/drawing_prompt/create/?category=' + $('#category').val();
        });
        $('#category').change(function (value) {
            searchCategory = $('#category').val();
            searchChange();
        });
    });
    $(window).scroll(function () {
        if (loadSwitch) {
            var w_h = parseFloat($(window).height());
            var doc_h = $(document).height();
            totalheight = w_h + parseFloat($(window).scrollTop()) + 2;
            if (totalheight >= doc_h) {
                loadData();
            }
        }
    });
</script>
{% endblock %}
```

### 添加分页查询路由

编辑 `view_url.py` 文件, 添加一个路由函数 `page_my_module_drawing_prompt` 用于返回 `my_module/drawing-prompt.html` 模板文件：

```python
from fastapi.responses import HTMLResponse
from core.dependencies import get_view_request
from fastapi import APIRouter, Depends
from apis.templating import templates
from ..validate import DrawingPromptObjIdParams

router = APIRouter(prefix='/my_module', )

......

@router.get(
    '/drawing_prompt/',
    response_class=HTMLResponse,
    include_in_schema=False,
)
async def page_my_module_drawing_prompt(
        category: str = '',
        request: dict = Depends(get_view_request),
):
    return templates.TemplateResponse(
        'my_module/drawing-prompt.html',
        {
            'category': category,
            **request
        },
    )
```

## 增删改操作

编辑 `templates/my_module/drawing-prompt-edit.html` 文件, 我们将通过这个文件为 *创建绘图提示*、*删除绘图提示*、*更新绘图提示* 和 *读取绘图提示* 接口开发一个增删改操作页面, 前端代码如下：

```html
{% extends 'core/navigation.html' %}

{% block title %}
{% if id %}
更新绘图提示
{% else %}
创建绘图提示
{% endif %}
{% endblock %}

{% block operate_left %}
<a href="/view/my_module/drawing_prompt/?category={{ category }}">
    <img src="/static/bases/material-icons/arrow_back_ios_new_fill.svg" />
</a>
{% endblock %}

{% block operate_right_top %}
{% if id %}
<a id="updateAndCreateItem" role="button" href="javascript:void(0);">更新</a>
{% else %}
<a id="updateAndCreateItem" role="button" href="javascript:void(0);">创建</a>
{% endif %}
{% endblock %}

{% block main %}
<form id="form-content">
    <label>
        提示类别
        <select id="category" placeholder="提示类别">
            <option value="风格">风格</option>
            <option value="反向提示">反向提示</option>
            <option value="背景">背景</option>
        </select>
    </label>
    <div class="grid">
        <label>
            提示
            <input type="text" id="prompt" placeholder="提示" required>
        </label>
        <label>
            描述
            <input type="text" id="describe" placeholder="描述" required>
        </label>
    </div>
</form>
{% endblock %}

{% block operate_bottom %}
{% if id %}
<suspended-right>
    <button id="deleteItem" class="contrast">删除</button>
</suspended-right>
{% endif %}
{% endblock %}

{% block javascript %}
<script>
    //{% if id %}
    $(document).ready(function () {
        utilAjax(
            type = 'GET',
            url = '/api/my_module/drawing_prompt/{{ id }}/',
            data = {},
            data_format = 'query',
            check = {},
            success = function (data, textStatus) {
                $('#category').val(data.category);
                $('#prompt').val(data.prompt);
                $('#describe').val(data.describe);
            },
            complete = function (request, textStatus) { },
            success_reminder = false,
            not_close = false,
        );
        $('#updateAndCreateItem').click(function () {
            utilAjax(
                type = 'PUT',
                url = '/api/my_module/drawing_prompt/{{ id }}/',
                data = {
                    'category': $('#category').val(),
                    'prompt': $('#prompt').val(),
                    'describe': $('#describe').val(),
                },
                data_format = 'json',
                check = {
                    'prompt': [/^[^\s]+(\s+[^\s]+)*$/, '提示不能为空'],
                    'describe': [/^[^\s]+(\s+[^\s]+)*$/, '描述不能为空'],
                },
                success = function (data, textStatus) {
                    $('#category').val(data.category);
                    $('#prompt').val(data.prompt);
                    $('#describe').val(data.describe);
                },
                complete = function (request, textStatus) { },
                success_reminder = true,
                not_close = false,
            );
        });
        $('#deleteItem').click(function () {
            swal({
                title: '你正在删除绘图提示',
                icon: 'warning',
                buttons: ['取消', '确认删除'],
                dangerMode: true,
            }).then((willDelete) => {
                if (willDelete) {
                    utilAjax(
                        type = 'DELETE',
                        url = '/api/my_module/drawing_prompt/{{ id }}/',
                        data = {},
                        data_format = 'json',
                        check = {},
                        success = function (data, textStatus) {
                            window.location.href = '/view/my_module/drawing_prompt/?category={{ category }}';
                        },
                        complete = function (request, textStatus) { },
                        success_reminder = false,
                        not_close = false,
                    );
                }
            });
        });
    });
    //{% else %}
    $(document).ready(function () {
        $('#updateAndCreateItem').click(function () {
            utilAjax(
                type = 'POST',
                url = '/api/my_module/drawing_prompt/',
                data = {
                    'category': $('#category').val(),
                    'prompt': $('#prompt').val(),
                    'describe': $('#describe').val(),
                },
                data_format = 'json',
                check = {
                    'prompt': [/^[^\s]+(\s+[^\s]+)*$/, '提示不能为空'],
                    'describe': [/^[^\s]+(\s+[^\s]+)*$/, '描述不能为空'],
                },
                success = function (data, textStatus) {
                    window.location.href = '/view/my_module/drawing_prompt/update/' + data._id + '/?category={{ category }}';
                },
                complete = function (request, textStatus) { },
                success_reminder = false,
                not_close = false,
            );
        });
    });
    //{% endif %}
</script>
{% endblock %}
```

### 添加增删改操作路由

编辑 `view_url.py` 文件, 添加两个路由函数 `page_my_module_drawing_prompt_create` 和 `page_my_module_drawing_prompt_update` 用于返回 `my_module/drawing-prompt-edit.html` 模板文件的创建和更新部分：

```python
from fastapi.responses import HTMLResponse
from core.dependencies import get_view_request
from fastapi import APIRouter, Depends
from apis.templating import templates
from ..validate import DrawingPromptObjIdParams

router = APIRouter(prefix='/my_module', )

......

@router.get(
    '/drawing_prompt/create/',
    response_class=HTMLResponse,
    include_in_schema=False,
)
async def page_my_module_drawing_prompt_create(
        category: str = '',
        request: dict = Depends(get_view_request),
):
    return templates.TemplateResponse(
        'my_module/drawing-prompt-edit.html',
        {
            'category': category,
            **request
        },
    )

@router.get(
    '/drawing_prompt/update/{id}/',
    response_class=HTMLResponse,
    include_in_schema=False,
)
async def page_my_module_drawing_prompt_update(
        id: DrawingPromptObjIdParams,
        category: str = '',
        request: dict = Depends(get_view_request),
):
    return templates.TemplateResponse(
        'my_module/drawing-prompt-edit.html',
        {
            'id': str(id),
            'category': category,
            **request
        },
    )
```

## 导航和权限

编辑 `view_navigation.py` 文件, 将分页查询页面添加到导航栏的菜单项中, 并设置分页查询页面的菜单项显示条件, 即用户必须的权限列表：

```python
view_navigation_bar = [
    {
        'path': '/view/my_module/items/',
        'permission': [],
        'text': '第一个页面',
        'weight': 1,
    },
    {
        'path': '/view/my_module/drawing_prompt/',
        'permission': [
            'create_drawing_prompt',
            'delete_drawing_prompt',
            'update_drawing_prompt',
            'read_drawing_prompt',
            'read_drawing_prompt_page',
        ],
        'text': '绘图提示',
        'weight': 1,
    },
]
```
