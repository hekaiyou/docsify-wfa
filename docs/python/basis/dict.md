# Python 字典 {docsify-ignore}

## clear()

删除字典内所有元素。

```python
dict.clear()
```

<!-- tabs:start -->

#### **代码**

```python
dict = {'Name': 'Zara', 'Age': 7}
print("字典长度: %d" %  len(dict))
dict.clear()
print("字典删除后长度: %d" %  len(dict))
```

#### **输出结果**

```powershell
字典长度: 2
字典删除后长度: 0
```

<!-- tabs:end -->

## copy()

返回一个字典的浅复制，即只复制指向字典对象的指针，而不复制对象本身，新旧对象还是共享同一块内存。

```python
dict.copy()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

一个字典的浅复制。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
dict1 = {'Name': 'You', 'Age': 7, 'Class': 'First'}
dict2 = dict1.copy()
print("新复制的字典为: ", dict2)
```

#### **输出结果**

```powershell
新复制的字典为:  {'Age': 7, 'Name': 'You', 'Class': 'First'}
```

<!-- tabs:end -->

## fromkeys()

创建一个新字典，以序列 `seq` 中元素做字典的键，`value` 为字典所有键对应的初始值。

```python
dict.fromkeys(seq[, value]))
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| seq | 字典键值列表 |
| value | 可选参数，设置键序列（seq）的值 |

#### **返回值**

一个新字典。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
tuple1 = ('name', 'age', 'sex')
dict1 = dict.fromkeys(tuple1)
print("新的字典为: %s" % str(dict1))
dict1 = dict.fromkeys(tuple1, 10)
print("新的字典为: %s" % str(dict1))
```

#### **输出结果**

```powershell
新的字典为: {'name': None, 'age': None, 'sex': None}
新的字典为: {'name': 10, 'age': 10, 'sex': 10}
```

<!-- tabs:end -->

## get()

返回指定键的值，如果值不在字典中则返回默认值。

```python
dict.get(key, default=None)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| key | 字典中要查找的键 |
| default | 如果指定键的值不存在时，返回该默认值值 |

#### **返回值**

指定键的值，如果值不在字典中则返回默认值 `None`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
dict1 = {'Name': 'You', 'Age': 27}
print("Age 值为: %s" % dict1.get('Age'))
print("Sex 值为: %s" % dict1.get('Sex', "NA"))
```

#### **输出结果**

```powershell
Age 值为: 27
Sex 值为: NA
```

<!-- tabs:end -->

## items()

以列表返回可遍历的键值对（`key`:`value`）元组数组。

```python
dict.items()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

可遍历的键值对（`key`:`value`）元组数组。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
dict1 = {'Name': 'You', 'Age': 7}
print("Value: %s" % dict1.items())
```

#### **输出结果**

```powershell
Value: dict_items([('Name', 'You'), ('Age', 7)])
```

<!-- tabs:end -->

## keys()

以列表返回一个字典所有的键。

```python
dict.keys()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

一个字典所有的键。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
dict = {'Name': 'You', 'Age': 7}
print("字典所有的键为: %s" % dict.keys())
```

#### **输出结果**

```powershell
字典所有的键为: dict_keys(['Name', 'Age'])
```

<!-- tabs:end -->

## setdefault()

和 `get()` 方法类似，如果键不已经存在于字典中，将会添加键并将值设为默认值。

```python
dict.setdefault(key, default=None)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| key | 查找的键值 |
| default | 键不存在时，设置的默认键值 |

#### **返回值**

无

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
dict = {'Name': 'You', 'Age': 7}
print("Age 键的值为: %s" %  dict.setdefault('Age', None))
print("Sex 键的值为: %s" %  dict.setdefault('Sex', None))
print("新字典为：", dict)
```

#### **输出结果**

```powershell
Age 键的值为: 7
Sex 键的值为: None
新字典为： {'Name': 'You', 'Age': 7, 'Sex': None}
```

<!-- tabs:end -->

## update()

把字典 `dict2` 的键/值对更新到 `dict` 里。

```python
dict.update(dict2)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| dict2 | 添加到指定字典dict里的字典 |

#### **返回值**

无

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
dict1 = {'Name': 'You', 'Age': 7}
dict2 = {'Sex': 'female'}
dict1.update(dict2)
print("更新字典 dict1: ", dict1)
```

#### **输出结果**

```powershell
更新字典 dict1:  {'Name': 'You', 'Age': 7, 'Sex': 'female'}
```

<!-- tabs:end -->

## values()

以列表返回字典中的所有值。

```python
dict.values()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

字典中的所有值。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
dict1 = {'Sex': 'female', 'Age': 7, 'Name': 'Zara'}
print("字典所有值为: ",  list(dict1.values()))
```

#### **输出结果**

```powershell
字典所有值为:  ['female', 7, 'Zara']
```

<!-- tabs:end -->

## pop()

删除字典给定键所对应的值，返回值为被删除的值。

```python
dict.pop(key[, default])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| key | 要删除的键 |
| default | 当键不存在时返回的值 |

#### **返回值**

- 如果键存在，返回删除字典中对应的元素
- 如果键不存在，返回设置指定的默认值 `default`
- 如果键不存在且默认值 `default` 没有指定，触发 `KeyError` 异常

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
dict1 = {'Name': 'You', 'Age': 7}
print('删除的元素为:', dict1.pop('Name'))
print('删除后字典为:', dict1)
```

#### **输出结果**

```powershell
删除的元素为: You
删除后字典为: {'Age': 7}
```

## key in dict

字典 `in` 操作符用于判断键是否存在于字典中，如果键在字典 `dict` 里返回 `True`，否则返回 `False`。而 `not in` 操作符刚好相反，如果键在字典 `dict` 里返回 `False`，否则返回 `True`。

```python
key in dict
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| key | 要在字典中查找的键 |

#### **返回值**

如果键在字典里返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
dict1 = {'Name': 'You', 'Age': 7}
if 'Age' in dict1:
    print("键 Age 存在")
else:
	print("键 Age 不存在")
if 'Age' not in dict1:
    print("键 Age 不存在")
else:
    print("键 Age 存在")
```

#### **输出结果**

```powershell
键 Age 存在
键 Age 存在
```

<!-- tabs:end -->
