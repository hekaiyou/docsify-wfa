# Python 列表 {docsify-ignore}

## max()

返回列表元素中的最大值。

```python
max(list)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| list | 要返回最大值的列表 |

#### **返回值**

列表元素中的最大值。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
list1, list2 = ['Google', 'You', 'Taobao'], [456, 700, 200]
print("list1 最大元素值: ", max(list1))
print("list2 最大元素值: ", max(list2))
```

#### **输出结果**

```powershell
list1 最大元素值:  You
list2 最大元素值:  700
```

<!-- tabs:end -->

## min()

返回列表元素中的最小值。

```python
min(list)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| list | 要返回最小值的列表 |

#### **返回值**

列表元素中的最小值。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
list1, list2 = ['Google', 'You', 'Taobao'], [456, 700, 200]
print("list1 最小元素值: ", min(list1))
print("list2 最小元素值: ", min(list2))
```

#### **输出结果**

```powershell
list1 最小元素值:  Google
list2 最小元素值:  200
```

<!-- tabs:end -->

## list()

将元组转换为列表。（元组与列表是非常类似的，区别在于元组的元素值不能修改，元组是放在括号中，列表是放于方括号中。）

```python
list(seq)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| list | 要转换为列表的元组 |

#### **返回值**

列表。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
aTuple = (123, 'Google', 'You', 'Taobao')
list1 = list(aTuple)
print("列表元素: ", list1)
str = "Hello World"
list2 = list(str)
print("列表元素: ", list2)
```

#### **输出结果**

```powershell
列表元素:  [123, 'Google', 'You', 'Taobao']
列表元素:  ['H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd']
```

<!-- tabs:end -->

## list.append()

在列表末尾添加新的对象。

```python
list.append(obj)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| obj | 添加到列表末尾的对象 |

#### **返回值**

无返回值，但是会修改原来的列表。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
list1 = ['Google', 'You', 'Taobao']
list1.append('Baidu')
print("更新后的列表: ", list1)
```

#### **输出结果**

```powershell
更新后的列表:  ['Google', 'You', 'Taobao', 'Baidu']
```

<!-- tabs:end -->

## list.count()

统计某个元素在列表中出现的次数。

```python
list.count(obj)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| obj | 列表中统计的对象 |

#### **返回值**

元素在列表中出现的次数。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
aList = [123, 'Google', 'You', 'Taobao', 123]
print("123 元素个数: ", aList.count(123))
print("You 元素个数: ", aList.count('You'))
```

#### **输出结果**

```powershell
123 元素个数:  2
You 元素个数:  1
```

<!-- tabs:end -->

## list.extend()

在列表末尾一次性追加另一个序列中的多个值（用新列表扩展原来的列表）。

```python
list.extend(seq)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| seq | 元素列表 |

#### **返回值**

没有返回值，但会在已存在的列表中添加新的列表内容。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
list1 = ['Google', 'You', 'Taobao']
list2 = list(range(5))
list1.extend(list2)
print("扩展后的列表：", list1)
```

#### **输出结果**

```powershell
扩展后的列表： ['Google', 'You', 'Taobao', 0, 1, 2, 3, 4]
```

<!-- tabs:end -->

## list.index()

从列表中找出某个值第一个匹配项的索引位置。

```python
list.index(obj)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| obj | 查找的对象 |

#### **返回值**

查找对象的索引位置，如果没有找到对象则抛出异常。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
list1 = ['Google', 'You', 'Taobao']
print('You 索引值为', list1.index('You'))
print('Taobao 索引值为', list1.index('Taobao'))
```

#### **输出结果**

```powershell
You 索引值为 1
Taobao 索引值为 2
```

<!-- tabs:end -->

## list.insert()

将指定对象插入列表的指定位置。

```python
list.insert(index, obj)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| index | 对象obj需要插入的索引位置 |
| obj | 要插入列表中的对象 |

#### **返回值**

没有返回值，但会在列表指定位置插入对象。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
list1 = ['Google', 'You', 'Taobao']
list1.insert(1, 'Baidu')
print('列表插入元素后为: ', list1)
```

#### **输出结果**

```powershell
列表插入元素后为:  ['Google', 'Baidu', 'You', 'Taobao']
```

<!-- tabs:end -->

## list.pop()

移除列表中的一个元素（默认最后一个元素），并且返回该元素的值。

```python
list.pop(obj=list[-1])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| obj | 可选参数，要移除列表元素的对象 |

#### **返回值**

从列表中移除的元素对象。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
list1 = ['Google', 'You', 'Taobao']
list1.pop()
print("列表现在为: ", list1)
list1.pop(1)
print("列表现在为: ", list1)
```

#### **输出结果**

```powershell
列表现在为 :  ['Google', 'You']
列表现在为 :  ['Google']
```

<!-- tabs:end -->

## list.remove()

移除列表中某个值的第一个匹配项。

```python
list.remove(obj)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| obj | 列表中要移除的对象 |

#### **返回值**

没有返回值，但是会移除列表中的某个值的第一个匹配项。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
list1 = ['Google', 'You', 'Taobao', 'Baidu']
list1.remove('Taobao')
print("列表现在为: ", list1)
list1.remove('Baidu')
print("列表现在为: ", list1)
```

#### **输出结果**

```powershell
列表现在为 :  ['Google', 'You', 'Baidu']
列表现在为 :  ['Google', 'You']
```

<!-- tabs:end -->

## list.reverse()

反向列表中元素。

```python
list.reverse()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

没有返回值，但是会对列表的元素进行反向排序。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
list1 = ['Google', 'You', 'Taobao', 'Baidu']
list1.reverse()
print("列表反转后: ", list1)
```

#### **输出结果**

```powershell
列表反转后:  ['Baidu', 'Taobao', 'You', 'Google']
```

<!-- tabs:end -->

## list.sort()

对原列表进行排序，如果指定参数，则使用比较函数指定的比较函数。

```python
list.sort([func])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| func | 可选参数, 如果指定了该参数会使用该参数的方法进行排序 |

#### **返回值**

没有返回值，但是会对列表的对象进行排序。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
list1 = ['Google', 'You', 'Taobao', 'Baidu']
list1.sort()
print("列表排序后: ", list1)
```

#### **输出结果**

```powershell
列表排序后:  ['Baidu', 'Google', 'You', 'Taobao']
```

<!-- tabs:end -->

## list.clear()

清空列表，类似于 `del a[:]`。

```python
list.clear()
```

<!-- tabs:start -->

#### **代码**

```python
list1 = ['Google', 'You', 'Taobao', 'Baidu']
list1.clear()
print("列表清空后: ", list1)
```

#### **输出结果**

```powershell
列表清空后:  []
```

<!-- tabs:end -->

## list.copy()

复制列表，类似于 `a[:]`。

```python
list.copy()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

复制后的新列表。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
list1 = ['Google', 'You', 'Taobao', 'Baidu']
list2 = list1.copy()
print("list2 列表: ", list2)
```

#### **输出结果**

```powershell
list2 列表:  ['Google', 'You', 'Taobao', 'Baidu']
```

<!-- tabs:end -->

## obj in list

列表 `in` 操作符用于判断元素是否存在于列表中，如果元素在列表 `list` 里返回 `True`，否则返回 `False`。而 `not in` 操作符刚好相反，如果元素在列表 `list` 里返回 `False`，否则返回 `True`。

```python
obj in list
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| obj | 查找的对象 |

#### **返回值**

如果元素在列表里返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
list1 = ['You', 7, {'name': 'AC'}]
if 'You' in list1:
    print("元素 You 存在")
else:
	print("元素 You 不存在")
if {'name': 'ABCD'} not in list1:
    print("元素 name=ABCD 不存在")
else:
    print("元素 name=ABCD 存在")
```

#### **输出结果**

```powershell
元素 You 存在
元素 name=ABCD 不存在
```

<!-- tabs:end -->
