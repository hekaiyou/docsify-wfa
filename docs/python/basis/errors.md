# Python 异常 {docsify-ignore}

## assert

用于判断一个表达式，在表达式条件为 `false` 的时候触发异常。

```python
assert expression [, arguments]
```

等价于：

```python
if not expression:
    raise AssertionError(arguments)
```

<!-- tabs:start -->

#### **代码-1**

```python
assert True
assert False
assert 1==1
assert 1==2
assert 1==2, '1 不等于 2'
```

#### **输出结果-1**

```powershell
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AssertionError
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AssertionError
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AssertionError: 1 不等于 2
```

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码-2**

```python
import sys
assert ('linux' in sys.platform), '该代码只能在 Linux 下执行'
```

#### **输出结果-2**

```powershell
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AssertionError: 该代码只能在 Linux 下执行
```

<!-- tabs:end -->

## raise

抛出一个指定的异常。

```python
raise [Exception [, args [, traceback]]]
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| Exception | 触发异常的名称或描述 |
| args | 自已提供的异常参数，可以用字符串说明错误发生的原因，也可以用元组组成(错误原因,错误编号,错误函数地址,...)信息 |
| traceback | 实践中很少使用，用于跟踪错误记录的 `traceback` (回溯)对象 |

#### **返回值**

如果键在字典里返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码-1**

```python
x = 10
if x > 5:
    raise Exception(f'x不能大于5, x的值为: {x}')
```

#### **输出结果-1**

```powershell
Traceback (most recent call last):
  File "<stdin>", line 2, in <module>
Exception: x不能大于5, x的值为: 10
```

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码-2**

```python
class MyError(Exception):
    def __init__(self, value):
        self.value = value
    def __str__(self):
        return repr(self.value)

raise MyError(4)
```

#### **输出结果-2**

```powershell
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
__main__.MyError: 4
```

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码-3**

```python
raise Exception('异常名称', ('元组形式错误原因', 10101))
raise Exception('异常名称', '字符串形式错误原因')
```

#### **输出结果-3**

```powershell
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
Exception: ('异常名称', ('元组形式错误原因', 10101))
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
Exception: ('异常名称', '字符串形式错误原因')
```

<!-- tabs:end -->

## try/except

首先，执行 `try` 子句（在关键字 `try` 和关键字 `except` 之间的语句）。

- 如果没有异常发生，忽略 `except` 子句，`try` 子句执行后结束
- 如果在执行 `try` 子句的过程中发生了异常，那么 `try` 子句余下的部分将被忽略
  - 如果异常的类型和 `except` 之后的名称相符，那么对应的 `except` 子句将被执行
- 如果一个异常没有与任何的 `except` 匹配，那么这个异常将会传递给上层的 `try` 中

一个 `try` 语句可能包含多个 `except` 子句，分别来处理不同的特定的异常，但是只有一个分支会被执行。

<!-- tabs:start -->

#### **代码-1**

```python
try:
    x = int('3.141592654')
except Exception as e:
    print(f'捕获 {e} 原因抛出的异常')
```

#### **输出结果-1**

```powershell
捕获 invalid literal for int() with base 10: '3.141592654' 原因抛出的异常
```

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码-2**

```python
while True:
    try:
        x = int(input('请输入一个数字: '))
        break
    except ValueError:
        print('您输入的不是数字，请再次尝试输入！')
```

#### **输出结果-2**

```powershell
请输入一个数字: d
您输入的不是数字，请再次尝试输入！
请输入一个数字: 1
```

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码-3**

```python
import requests
try:
    res = requests.get(url='http://test.com/')
except (requests.exceptions.ConnectTimeout, requests.exceptions.ReadTimeout):
    print('服务请求异常: 连接超时或读取超时')
except requests.exceptions.ConnectionError:
    print('服务请求异常: 未知服务或网络异常')
except Exception as e:
    print(f'服务请求异常: {e}')
```

#### **输出结果-3**

```powershell
服务请求异常: 未知服务或网络异常
```

<!-- tabs:end -->

## try/except...else

上面的 `try/except` 语句还有一个可选的 `else` 子句，如果使用这个子句，那么必须放在所有的 `except` 子句之后，`else` 子句将在 `try` 子句没有发生任何异常的时候执行。

<!-- tabs:start -->

#### **代码**

```python
try:
    f = open('test.txt', 'r')
except IOError:
    print('无法打开文件')
else:
    print(f'文件有 {len(f.readlines())} 行')
    f.close()
```

#### **输出结果**

```powershell
文件有 3 行
```

<!-- tabs:end -->

## try-finally

无论是否发生异常都将执行最后的 `try-finally` 子句代码。

<!-- tabs:start -->

#### **代码**

```python
try:
    x = 3/0
except ZeroDivisionError as e:
    print(e)
else:
    print(x)
finally:
    print('这句话，无论异常是否发生都会执行。')
```

#### **输出结果**

```powershell
division by zero
这句话，无论异常是否发生都会执行。
```

<!-- tabs:end -->
