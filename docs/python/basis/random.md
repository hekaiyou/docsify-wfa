# Python 随机数 {docsify-ignore}

## choice()

返回一个列表，元组或字符串的随机项。

```python
import random
random.choice(seq)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| seq | 可以是一个列表，元组或字符串 |

#### **返回值**

随机项。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import random
print("从 range(100) 返回一个随机数: ",random.choice(range(100)))
print("从列表中 [1, 2, 3, 5, 9]) 返回一个随机元素: ", random.choice([1, 2, 3, 5, 9]))
print("从字符串中 'You' 返回一个随机字符: ", random.choice('You'))
```

#### **输出结果**

```powershell
从 range(100) 返回一个随机数:  13
从列表中 [1, 2, 3, 5, 9]) 返回一个随机元素:  5
从字符串中 'You' 返回一个随机字符:  o
```

<!-- tabs:end -->

## randrange()

返回指定递增基数集合中的一个随机数，基数缺省值为1。

```python
import random
random.randrange ([start,] stop [,step])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| start | 指定范围内的开始值，包含在范围内 |
| stop | 指定范围内的结束值，不包含在范围内 |
| step | 指定递增基数 |

#### **返回值**

从给定的范围返回随机项。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import random
print ("从 1-100 中选取一个奇数: ", random.randrange(1, 100, 2))
print ("从 0-99 选取一个随机数: ", random.randrange(100))
```

#### **输出结果**

```powershell
从 1-100 中选取一个奇数:  59
从 0-99 选取一个随机数:  19
```

<!-- tabs:end -->

## random()

返回随机生成的一个实数，它在 [0,1) 范围内。

```python
import random
random.random()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

随机生成的一个实数，它在 [0,1) 范围内。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import random
print ("第一个随机数: ", random.random())
print ("第二个随机数: ", random.random())
```

#### **输出结果**

```powershell
第一个随机数:  0.4350627831356393
第二个随机数:  0.5733305427811686
```

<!-- tabs:end -->

## seed()

改变随机数生成器的种子，可以在调用其他随机模块函数之前调用此函数。

```python
import random
random.seed([x])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 改变随机数生成器的种子 `seed`。如果不了解其原理，不必特别去设定 `seed`，Python会自动选择 |

#### **返回值**

无

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import random
random.seed()
print("使用默认种子生成随机数：", random.random())
random.seed(10)
print("使用整数种子生成随机数：", random.random())
random.seed("hello", 2)
print("使用字符串种子生成随机数：", random.random())
```

#### **输出结果**

```powershell
使用默认种子生成随机数： 0.2103908617663729
使用整数种子生成随机数： 0.5714025946899135
使用字符串种子生成随机数： 0.3537754404730722
```

<!-- tabs:end -->

## shuffle()

将序列的所有元素随机排序。

```python
import random
random.shuffle(lst)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| lst | 可以是一个序列或者元组 |

#### **返回值**

随机排序后的序列。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import random
list1 = [20, 16, 10, 5]
random.shuffle(list1)
print("随机排序列表: ", list1)
random.shuffle(list1)
print("随机排序列表: ", list1)
```

#### **输出结果**

```powershell
随机排序列表:  [10, 16, 5, 20]
随机排序列表:  [20, 16, 5, 10]
```

<!-- tabs:end -->

## uniform()

将随机生成下一个实数，它在 [x, y] 范围内。

```python
import random
random.uniform(x, y)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 随机数的最小值 |
| y | 随机数的最大值 |

#### **返回值**

一个浮点数。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import random
print("uniform(5, 10) 的随机浮点数: ",  random.uniform(5, 10))
print("uniform(7, 14) 的随机浮点数: ",  random.uniform(7, 14))
```

#### **输出结果**

```powershell
uniform(5, 10) 的随机浮点数:  8.32548129941273
uniform(7, 14) 的随机浮点数:  11.50216637642797
```

<!-- tabs:end -->
