# Python 集合 {docsify-ignore}

## add()

给集合添加元素，如果添加的元素在集合中已存在，则不执行任何操作。

```python
set.add(elmnt)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| elmnt | 必需，要添加的元素 |

#### **返回值**

无

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
fruits = {"apple", "banana", "cherry"}
fruits.add("orange") 
print(fruits)
fruits.add("apple")
print(fruits)
```

#### **输出结果**

```powershell
{'apple', 'orange', 'cherry', 'banana'}
{'apple', 'orange', 'cherry', 'banana'}
```

<!-- tabs:end -->

## clear()

移除集合中的所有元素。

```python
set.clear()
```

<!-- tabs:start -->

#### **代码**

```python
fruits = {"apple", "banana", "cherry"}
fruits.clear()
print(fruits)
```

#### **输出结果**

```powershell
set()
```

<!-- tabs:end -->

## clear()

拷贝一个集合。

```python
set.copy()
```

<!-- tabs:start -->

#### **代码**

```python
fruits = {"apple", "banana", "cherry"}
x = fruits.copy()
print(x)
```

#### **输出结果**

```powershell
{'apple', 'cherry', 'banana'}
```

<!-- tabs:end -->

## difference()

返回集合的差集，即返回的集合元素包含在第一个集合中，但不包含在第二个集合（方法的参数）中。

```python
set.difference(set)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| set | 必需，用于计算差集的集合 |

#### **返回值**

一个新的集合。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "apple"}
z = x.difference(y)
print(z)
```

#### **输出结果**

```powershell
{'banana', 'cherry'}
```

<!-- tabs:end -->

## difference_update()

移除两个集合中都存在的元素，与 `difference()` 方法的区别在于 `difference()` 方法返回一个移除相同元素的新集合，而 `difference_update()` 方法是直接在原来的集合中移除元素，没有返回值。

```python
set.difference_update(set)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| set | 必需，用于计算差集的集合 |

#### **返回值**

无

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "apple"}
x.difference_update(y)
print(x)
```

#### **输出结果**

```powershell
{'cherry', 'banana'}
```

<!-- tabs:end -->

## discard()

移除指定的集合元素，该方法不同于 `remove()` 方法，因为 `remove()` 方法在移除一个不存在的元素时会发生错误，而 `discard()` 方法不会。

```python
set.discard(value)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| value | 必需，要移除的元素 |

#### **返回值**

无

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
fruits = {"apple", "banana", "cherry"}
fruits.discard("banana")
print(fruits)
```

#### **输出结果**

```powershell
{'apple', 'cherry'}
```

<!-- tabs:end -->

## intersection()

返回两个或更多集合中都包含的元素，即交集。

```python
set.intersection(set1, set2 ... etc)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| set1 | 必需，要查找相同元素的集合 |
| set2 | 可选，其他要查找相同元素的集合，可以使用多个逗号隔开 |

#### **返回值**

一个新的集合。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
x = {"apple", "banana", "cherry"}
y = {"google", "w3xue", "apple"}
z = x.intersection(y)
print(z)
```

#### **输出结果**

```powershell
{'apple'}
```

<!-- tabs:end -->

## intersection_update()

获取两个或更多集合中都重叠的元素，即计算交集，该方法不同于 `intersection()` 方法，因为 `intersection()` 方法是返回一个新的集合，而 `intersection_update()` 方法是在原始的集合上移除不重叠的元素。

```python
set.intersection_update(set1, set2 ... etc)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| set1 | 必需，要查找相同元素的集合 |
| set2 | 可选，其他要查找相同元素的集合，可以多个，多个使用逗号, 隔开 |

#### **返回值**

无

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
x = {"apple", "banana", "cherry"}
y = {"google", "you", "apple"}
x.intersection_update(y)
print(x)
```

#### **输出结果**

```powershell
{'apple'}
```

<!-- tabs:end -->

## isdisjoint()

判断两个集合是否包含相同的元素，如果没有返回 `True`，否则返回 `False`。

```python
set.isdisjoint(set)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| set | 必需，要比较的集合 |

#### **返回值**

布尔值，如果不包含返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
x = {"apple", "banana", "cherry"}
y1 = {"google", "you", "facebook"}
y2 = {"google", "you", "apple"}
z = x.isdisjoint(y1) 
print(z)
z = x.isdisjoint(y2) 
print(z)
```

#### **输出结果**

```powershell
True
False
```

<!-- tabs:end -->

## issubset()

判断集合的所有元素是否都包含在指定集合中，如果是则返回 `True`，否则返回 `False`。

```python
set.issubset(set)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| set | 必需，要比查找的集合 |

#### **返回值**

布尔值，如果都包含返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
x = {"a", "b", "c"}
y1 = {"f", "e", "d", "c", "b", "a"}
y2 = {"f", "e", "d", "c", "b"}
z = x.issubset(y1)
print(z)
z = x.issubset(y2)
print(z)
```

#### **输出结果**

```powershell
True
False
```

<!-- tabs:end -->

## issuperset()

判断指定集合的所有元素是否都包含在原始的集合中，如果是则返回 `True`，否则返回 `False`。

```python
set.issuperset(set)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| set | 必需，要比查找的集合 |

#### **返回值**

布尔值，如果都包含返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
x = {"f", "e", "d", "c", "b", "a"}
y = {"a", "b", "c"}
z = x.issuperset(y)
print(z)
```

#### **输出结果**

```powershell
True
```

<!-- tabs:end -->

## pop()

随机移除一个元素。

```python
set.pop()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

移除的元素。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
fruits = {"apple", "banana", "cherry"}
x = fruits.pop()
print(fruits)
print(x)
```

#### **输出结果**

```powershell
{'banana', 'apple'}
cherry
```

<!-- tabs:end -->

## remove()

移除集合中的指定元素，该方法不同于 `discard()` 方法，因为 `remove()` 方法在移除一个不存在的元素时会发生错误，而 `discard()` 方法不会。

```python
set.remove(item)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| item | 要移除的元素 |

#### **返回值**

移除的元素。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
fruits = {"apple", "banana", "cherry"}
fruits.remove("banana")
print(fruits)
```

#### **输出结果**

```powershell
{'cherry', 'apple'}
```

<!-- tabs:end -->

## symmetric_difference()

返回两个集合中不重复的元素集合，即会移除两个集合中都存在的元素。

```python
set.symmetric_difference(set)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| set | 集合 |

#### **返回值**

一个新的集合。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
x = {"apple", "banana", "cherry"}
y = {"google", "you", "apple"}
z = x.symmetric_difference(y)
print(z)
```

#### **输出结果**

```powershell
{'google', 'banana', 'cherry', 'you'}
```

<!-- tabs:end -->

## symmetric_difference_update()

移除当前集合中在另外一个指定集合相同的元素，并将另外一个指定集合中不同的元素插入到当前集合中。

```python
set.symmetric_difference_update(set)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| set | 要检测的集合 |

#### **返回值**

无

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
x = {"apple", "banana", "cherry"}
y = {"google", "you", "apple"}
x.symmetric_difference_update(y)
print(x)
```

#### **输出结果**

```powershell
{'google', 'banana', 'cherry', 'you'}
```

<!-- tabs:end -->

## union()

返回两个集合的并集，即包含了所有集合的元素，重复的元素只会出现一次。

```python
set.union(set1, set2...)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| set1 | 必需，合并的目标集合 |
| set2 | 可选，其他要合并的集合，可以使用多个逗号隔开 |

#### **返回值**

一个新集合。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
x = {"apple", "banana", "cherry"}
y = {"google", "you", "apple"}
z = x.union(y)
print(z)
x = {"a", "b", "c"}
y = {"f", "d", "a"}
z = {"c", "d", "e"} 
result = x.union(y, z)
print(result)
```

#### **输出结果**

```powershell
{'cherry', 'google', 'banana', 'apple', 'you'}
{'c', 'a', 'd', 'e', 'b', 'f'}
```

<!-- tabs:end -->

## update()

修改当前集合，可以添加新的元素或集合到当前集合中，如果添加的元素在集合中已存在，则该元素只会出现一次，重复的会忽略。

```python
set.update(set)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| set | 必需，可以是元素或集合 |

#### **返回值**

无

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
x = {"apple", "banana", "cherry"}
y = {"google", "you", "apple"}
x.update(y)
print(x)
```

#### **输出结果**

```powershell
{'cherry', 'google', 'banana', 'apple', 'you'}
```

<!-- tabs:end -->
