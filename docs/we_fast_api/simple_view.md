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

待完善

## 增删改操作

待完善
