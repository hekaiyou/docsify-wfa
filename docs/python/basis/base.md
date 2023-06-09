# Python 基础 {docsify-ignore}

## copy.copy()

仅拷贝父对象，不会拷贝对象内部的子对象（浅拷贝）的方式创建新对象。

```python
copy.copy(s)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| s | 对象 |

#### **返回值**

一个仅拷贝了父对象的一个新对象。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
from copy import copy
a = {1: [1, 2, 3]}
b = copy(a)
a[1].append(5)
print('原对象:', a)
print('浅拷贝的新对象:', b)
print('原对象子对象的内存地址:', id(a[1]))
print('新对象子对象的内存地址:', id(b[1]))
```

#### **输出结果**

```powershell
原对象: {1: [1, 2, 3, 5]}
浅拷贝的新对象: {1: [1, 2, 3, 5]}
原对象子对象的内存地址: 1978859446848
新对象子对象的内存地址: 1978859446848
```

<!-- tabs:end -->

## copy.deepcopy()

使用开辟新内存空间，完全拷贝父对象及其子对象（深拷贝）的方式创建新对象。

```python
copy.deepcopy(s)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| s | 对象 |

#### **返回值**

一个完全拷贝了父对象及其子对象的一个全新对象。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
from copy import deepcopy
a = {1: [1, 2, 3]}
c = deepcopy(a)
a[1].append(5)
print('原对象:', a)
print('深拷贝的新对象:', c)
print('原对象子对象的内存地址:', id(a[1]))
print('新对象子对象的内存地址:', id(c[1]))
```

#### **输出结果**

```powershell
原对象: {1: [1, 2, 3, 5]}
深拷贝的新对象: {1: [1, 2, 3]}
原对象子对象的内存地址: 1978859469440
新对象子对象的内存地址: 1978859454016
```

<!-- tabs:end -->

## del

手动触发对象的 `__del__()` 方法执行，因为Python有GC机制，因此 `del` 删除的是变量，而不是数据。

```python
del s
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| s | 对象 |

#### **返回值**

无

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码-1**

```python
list1 = ['Google', 'You', 'Taobao', 'Baidu']
del list1[2]
print("更新后的列表: ", list1)
```

#### **输出结果-1**

```powershell
更新后的列表:  ['Google', 'You', 'Baidu']
```

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码-2**

```python
class Animal(object):
    def __init__(self, name):
        print('__init__方法被调用')
        self.__name = name
    def __del__(self):
        print('__del__方法被调用')
        print(f'{self.__name}对象马上被干掉了...')

dog = Animal('萨摩耶')
del dog
cat = Animal('梨花猫')
cat2 = cat
cat3 = cat
print('---删除cat对象')
del cat
print('---删除cat2对象 数据还在')
del cat2
print('---删除cat3对象 数据不再被变量变量 等待GC')
del cat3
```

#### **输出结果-2**

```powershell
__init__方法被调用
__del__方法被调用
萨摩耶对象马上被干掉了...
__init__方法被调用
---删除cat对象
---删除cat2对象 数据还在
---删除cat3对象 数据不再被变量变量 等待GC
__del__方法被调用
梨花猫对象马上被干掉了...
```

<!-- tabs:end -->

## enumerate()

将一个可遍历的数据对象（如列表、元组、字符串）组合为一个索引序列，同时列出数据和数据下标，一般用在 `for` 循环中。

```python
enumerate(sequence, [start=0])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| sequence | 一个序列、迭代器或其他支持迭代对象 |
| start | 下标起始位置的值 |

#### **返回值**

一个 `enumerate`（枚举）对象。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
seasons = ['Spring', 'Summer', 'Fall', 'Winter']
print(f'默认下标从 0 开始: {list(enumerate(seasons))}')
print(f'设置下标从 1 开始: {list(enumerate(seasons, start=1))}')
for i, element in enumerate(seasons):
    print(f'下标: {i}, 数据: {element}')
```

#### **输出结果**

```powershell
默认下标从 0 开始: [(0, 'Spring'), (1, 'Summer'), (2, 'Fall'), (3, 'Winter')]
设置下标从 1 开始: [(1, 'Spring'), (2, 'Summer'), (3, 'Fall'), (4, 'Winter')]
下标: 0, 数据: Spring
下标: 1, 数据: Summer
下标: 2, 数据: Fall
下标: 3, 数据: Winter
```

<!-- tabs:end -->

## isinstance()

判断一个对象是否是一个已知的类型，与 `type()` 的区别：

- `type()` 不会认为子类是一种父类类型，不考虑继承关系。
- `isinstance()` 会认为子类是一种父类类型，考虑继承关系。

如果要判断两个类型是否相同推荐使用 `isinstance()`。

```python
isinstance(object, classinfo)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| object | 实例对象 |
| classinfo | 可以是直接或间接类名、基本类型或者由它们组成的元组 |

#### **返回值**

如果对象的类型与 `classinfo` 的类型相同则返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
a = 2
isinstance(a, int)
isinstance(a, str)
isinstance(a, (str,int,list))
```

#### **输出结果**

```powershell
True
False
True
```

<!-- tabs:end -->

## len()

返回对象（字符、列表、元组等）长度或项目个数。

```python
len(s)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| s | 对象 |

#### **返回值**

对象长度。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str_1 = 'runoob'
print('字符串长度:', len(str_1))
list_1 = [1, 2, 3, 4, 5]
print('列表长度:', len(list_1))
```

#### **输出结果**

```powershell
字符串长度: 6
列表长度: 5
```

<!-- tabs:end -->

## map()

为参数 `iterable` 中的每一个元素调用 `function` 函数，返回由每次 `function` 函数返回值组成的新列表。

```python
map(function, iterable, ...)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| function | 函数 |
| iterable | 一个或多个序列 |

#### **返回值**

由每次 `function` 函数返回值组成的新列表。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
def square(x):
    return x ** 2  # 计算平方数

maped = map(square, [1, 2, 3, 4, 5])
print(f'返回一个对象: {maped}')
print(f'对象转换为列表: {list(maped)}')
maped2 = list(map(lambda x: x ** 2, [1, 2, 3, 4, 5]))
print(f'使用 lambda 匿名函数: {maped2}')
```

#### **输出结果**

```powershell
返回一个对象: <map object at 0x00000277194C5700>
对象转换为列表: [1, 4, 9, 16, 25]
使用 lambda 匿名函数: [1, 4, 9, 16, 25]
```

<!-- tabs:end -->

## slicing

利用索引对序列数据（列表、元组、字符串等）进行切片。

```python
object[start_index : stop_index : step]
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| start_index | 起始位置下标，空时默认为 0 |
| stop_index | 终点位置下标，空时默认为序列长度 |
| step | 步长，空时默认为 1，不能为 0 |

#### **返回值**

一个完成切片操作的序列数据。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
print('第0个元素为', a[0])
print('第-2个元素为', a[-2])
print('切片[:]序列为', a[:])
print('切片[2:8]序列为', a[2:8])
print('切片[-5:-2]序列为', a[-5:-2])
print('切片[2:-1]序列为', a[2:-1])
print('切片[::2]序列为', a[::2])
print('切片[::-1]序列为', a[::-1])
```

#### **输出结果**

```powershell
第0个元素为 0
第-2个元素为 8
切片[:]序列为 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
切片[2:8]序列为 [2, 3, 4, 5, 6, 7]
切片[-5:-2]序列为 [5, 6, 7]
切片[2:-1]序列为 [2, 3, 4, 5, 6, 7, 8]
切片[::2]序列为 [0, 2, 4, 6, 8]
切片[::-1]序列为 [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
```

<!-- tabs:end -->

## str()

将对象转化为适于人阅读的形式。

```python
str(object='')
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| object | 对象 |

#### **返回值**

一个对象的字符串格式。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str_1 = 'RUNOOB'
print(str(str_1))
dict_1 = {'runoob': 'runoob.com', 'google': 'google.com'}
print(str(dict_1))
```

#### **输出结果**

```powershell
RUNOOB
{'runoob': 'runoob.com', 'google': 'google.com'}
```

<!-- tabs:end -->

## type()

如果只有第一个参数返回对象的类型，三个参数则返回新的类型对象。

```python
type(object)
type(name, bases, dict)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| name | 类的名称 |
| bases | 基类的元组 |
| dict | 字典，类内定义的命名空间变量 |

#### **返回值**

一个参数返回对象类型, 三个参数，返回新的类型对象。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
print(type(1))
print(type('runoob'))
print(type([2]))
print(type({0: 'zero'}))
x = 1
print('x是否int类型:', type(x)==int)
Y = type('Y', (object,), dict(a=1))
print('产生一个新的类型Y:', Y)
```

#### **输出结果**

```powershell
<class 'int'>
<class 'str'>
<class 'list'>
<class 'dict'>
x是否int类型: True
产生一个新的类型Y: <class '__main__.Y'>
```

<!-- tabs:end -->

## with

用于异常处理，封装了 `try…except…finally` 编码范式，提高了易用性，使代码更清晰、更具可读性，简化了文件流等公共资源的管理。

```python
class A(object):
    def __enter__(self):
        print('第一步')
    def __exit__(self, exc_type, exc_val, exc_tb):
        print('第三步')
        print(f'异常类型: {exc_type}')
        print(f'异常值: {exc_val}')
        print(f'tracback信息: {exc_tb}')
with A() as f:
    print('第二步')
```

<!-- tabs:start -->

#### **定义**

| 函数 | 描述 |
| ---- | ---- |
| __enter__ | 返回上下文管理器对象本身，也可以是其他相关对象 |
| __exit__ | 带有三个参数，分别为：异常类型、异常值、tracback信息 |

#### **执行**

- 第一步存在异常: 不会调用 `__exit__` 方法，抛出异常
- 第二步存在异常: `__exit__` 方法参数非空
- 第二步无异常: `__exit__` 方法三个参数都为 `None`

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
file = open('test.txt', 'a', encoding='UTF-8')
file.write('不使用 with 也不使用 try…except…finally 写入\n')
file.close()

file = open('test.txt', 'a', encoding='UTF-8')
try:
    file.write('使用 try…except…finally 写入\n')
finally:
    file.close()

with open('test.txt', 'a', encoding='UTF-8') as f:
    f.write('使用 with 关键字写入\n')
```

#### **输出结果**

```powershell
36
25
14
```

<!-- tabs:end -->

## zip()

将可迭代对象中对应的元素打包成一个个元组，然后返回由这些元组组成的可迭代对象。

```python
zip([iterable, ...])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| iterable | 一个或多个迭代对象 |

#### **返回值**

由元组组成的可迭代对象，`zip(*)` 则相反，返回二维矩阵式。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
a = [1, 2, 3]
b = [4, 5, 6]
c = [4, 5, 6, 7, 8]
zipped = zip(a, b, c)
print(f'返回一个对象: {zipped}')
print(f'对象转换为列表: {list(zipped)}')
d = ['flower', 'flow', 'flight']
print(f'zip(*)返回二维矩阵式: {list(zip(*d))}')
```

#### **输出结果**

```powershell
返回一个对象: <zip object at 0x000002771973E040>
对象转换为列表: [(1, 4, 4), (2, 5, 5), (3, 6, 6)]
zip(*)返回二维矩阵式: [('f', 'f', 'f'), ('l', 'l', 'l'), ('o', 'o', 'i'), ('w', 'w', 'g')]
```

<!-- tabs:end -->
