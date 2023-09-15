# WeFastAPI 模型设计 {docsify-ignore}

在 [we-fast-api](https://github.com/hekaiyou/we-fast-api) 项目中, 基本上以 [FastAPI 响应模型](https://fastapi.tiangolo.com/zh/tutorial/response-model/) 为主, 然后扩展了 [MongoDB](https://www.mongodb.com/zh-cn) 的支持, 可以方便的实现增、删、改、查、分页、数据校验等操作。

如果按照前面的教程创建文件, 当前 `my_module` 模块的目录结构应该如下所示：

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
        view_navigation.py
        view_url.py
    __init__.py
    api_drawing_prompt.py
    api_items.py
    models.py
    routing.py
    validate.py
```

提前在模块目录下创建好 `models.py`、`validate.py` 和 `api_drawing_prompt.py` 两个文件。

## 模型定义

编辑 `my_module/models.py` 文件, 这个文件是当前模块的模型定义文件, 下面是以 “AI绘图提示词” 为例, 创建一个基础模型 `DrawingPromptBase` 及其读取模型 `DrawingPromptRead`, 代码如下：

```python
from enum import Enum
from datetime import datetime
from core.validate import ObjId
from pydantic import BaseModel, Field

COL_DRAWING_PROMPT = 'drawing_prompt'

class DrawingPromptCategoryEnum(str, Enum):
    style = '风格'
    reverse = '反向提示'
    background = '背景'

class DrawingPromptBase(BaseModel):
    """ 绘图提示的基础模型 """
    category: DrawingPromptCategoryEnum = Field(title='类别', )
    prompt: str = Field(title='提示', )
    describe: str = Field(title='描述', )

class DrawingPromptRead(DrawingPromptBase):
    """ 绘图提示的读取模型 """
    id: ObjId = Field(alias='_id', title='ID')
    create_time: datetime = datetime.utcnow()
    update_time: datetime = datetime.utcnow()
```

上面代码中的 `from core.validate import ObjId` 引入了框架封装的 `ObjId` 类型, 该类型用于定义模型的 **MongoDB ObjectId** 数据。

## 数据校验

编辑 `my_module/validate.py` 文件, 这个文件是当前模块的数据校验文件, 下面创建了一个校验 “AI绘图提示词” 的 ID 请求参数有效性的 `DrawingPromptObjIdParams` 类, 代码如下：

```python
from core.database import doc_count
from core.validate import ObjIdParams
from .models import COL_DRAWING_PROMPT

class DrawingPromptObjIdParams(ObjIdParams):

    @classmethod
    def validate_doc(cls, oid):
        return doc_count(COL_DRAWING_PROMPT, {'_id': oid})
```

上面代码中的 `from core.database import doc_count` 引入了框架封装的 `doc_count` 方法, 该方法用于查询 **MongoDB** 中指定集合的符合查询条件的文档数量。

同时 `from core.validate import ObjIdParams` 引入框架封装的 `ObjIdParams` 类, 该类负责处理用户请求的 ID 字符串的基础校验, 并且通过重写 `validate_doc` 方法将 “AI绘图提示词” 的 ID 有效性校验代码写入。

## 应用模型

编辑 `my_module/api_drawing_prompt.py` 文件,

```python
from typing import Optional
from apis.bases.models import Paginate
from fastapi import APIRouter, Depends
from fastapi.encoders import jsonable_encoder
from .validate import DrawingPromptObjIdParams
from core.dependencies import get_paginate_parameters
from core.database import doc_create, doc_delete, doc_update, doc_read, paginate_find
from .models import COL_DRAWING_PROMPT, DrawingPromptBase, DrawingPromptRead, DrawingPromptCategoryEnum

router = APIRouter(prefix='/drawing_prompt', )

@router.post(
    '/',
    response_model=DrawingPromptRead,
    summary='创建绘图提示',
)
async def create_drawing_prompt(create_data: DrawingPromptBase, ):
    create_json = jsonable_encoder(create_data)
    doc_create(COL_DRAWING_PROMPT, create_json)
    return DrawingPromptRead(**create_json)

@router.delete(
    '/{id}/',
    summary='删除绘图提示',
)
async def delete_drawing_prompt(id: DrawingPromptObjIdParams, ):
    doc_delete(COL_DRAWING_PROMPT, {'_id': id})
    return {}

@router.put(
    '/{id}/',
    response_model=DrawingPromptBase,
    summary='更新绘图提示',
)
async def update_drawing_prompt(
    id: DrawingPromptObjIdParams,
    update_data: DrawingPromptBase,
):
    doc_before_update = doc_read(COL_DRAWING_PROMPT, {'_id': id})
    model_before_update = DrawingPromptBase(**doc_before_update)
    update_json = update_data.dict(exclude_unset=True)
    updated_model = model_before_update.copy(update=update_json)
    doc_update(
        COL_DRAWING_PROMPT,
        {'_id': id},
        jsonable_encoder(updated_model),
    )
    return updated_model

@router.get(
    '/{id}/',
    response_model=DrawingPromptRead,
    summary='读取绘图提示',
)
async def read_drawing_prompt(id: DrawingPromptObjIdParams, ):
    return DrawingPromptRead(**doc_read(COL_DRAWING_PROMPT, {'_id': id}))

@router.get(
    '/',
    response_model=Paginate,
    summary='读取绘图提示 (分页)',
)
async def read_drawing_prompt_page(
    paginate: dict = Depends(get_paginate_parameters),
    category: Optional[DrawingPromptCategoryEnum] = None,
):
    query_content = {}
    if category:
        query_content['category'] = category.value
    results = await paginate_find(
        collection=COL_DRAWING_PROMPT,
        paginate_parameters=paginate,
        query_content=query_content,
        item_model=DrawingPromptRead,
    )
    return results
```

## 配置路由

apis/my_module/routing.py

```python
from fastapi import APIRouter
from . import api_items, api_drawing_prompt

router = APIRouter(
    prefix='/my_module',
    tags=['my_module'],
)

router.include_router(api_items.router)
router.include_router(api_drawing_prompt.router)
```
