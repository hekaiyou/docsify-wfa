# Python 元组 {docsify-ignore}

## max()

返回元组中元素最大值。

```python
max(tuple)
```

<!-- tabs:start -->

#### **代码**

```python
tuple2 = ('5', '4', '8')
x = max(tuple2)
print(x)
```

#### **输出结果**

```powershell
8
```

<!-- tabs:end -->

## min()

返回元组中元素最小值。

```python
min(tuple)
```

<!-- tabs:start -->

#### **代码**

```python
tuple2 = ('5', '4', '8')
x = min(tuple2)
print(x)
```

#### **输出结果**

```powershell
4
```

<!-- tabs:end -->

## tuple()

将列表转换为元组。

```python
tuple(seq)
```

<!-- tabs:start -->

#### **代码**

```python
list1 = ['Google', 'Taobao', 'You', 'Baidu']
tuple1 = tuple(list1)
print(tuple1)
```

#### **输出结果**

```powershell
('Google', 'Taobao', 'You', 'Baidu')
```

<!-- tabs:end -->

## tuple.index()

从元组中找出某个对象第一个匹配项的索引位置，如果这个对象不在元组中会报一个异常。

```python
tuple.index(obj[,start=0[,end=len(tuple)]])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| obj | 指定检索的对象 |

#### **返回值**

无

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
T = ('Google', 'You', 'Taobao')
print(T.index('Taobao'))
print(T.index('Google', 1))
```

#### **输出结果**

```powershell
2
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ValueError: tuple.index(x): x not in tuple
```

<!-- tabs:end -->

## tuple.count()

统计某个元素在元组中出现的次数。

```python
tuple.count(obj)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| obj | 元组中统计的对象 |

#### **返回值**

无

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
T = (123, 'Google', 'You', 'Taobao', 123)
print("123 元素个数: ", T.count(123))
print("You 元素个数: ", T.count('You'))
```

#### **输出结果**

```powershell
123 元素个数:  2
You 元素个数:  1
```

<!-- tabs:end -->
