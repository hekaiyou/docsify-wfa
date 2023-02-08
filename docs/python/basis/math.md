# Python 数学 {docsify-ignore}

## abs()

返回数字的绝对值。

```python
abs(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 数值表达式，可以是整数、浮点数、复数 |

#### **返回值**

数字 `x` 的绝对值，如果参数是一个复数，则返回它的大小。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
print("abs(-40): ", abs(-40))
print("abs(100.10): ", abs(100.10))
```

#### **输出结果**

```powershell
abs(-40):  40
abs(100.10):  100.1
```

<!-- tabs:end -->

## ceil()

返回一个大于或等于 `x` 的的最小整数。

```python
import math
math.ceil(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 数值表达式 |

#### **返回值**

一个大于或等于 `x` 的的最小整数。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("math.ceil(-45.17): ", math.ceil(-45.17))
print("math.ceil(100.12): ", math.ceil(100.12))
print("math.ceil(100.72): ", math.ceil(100.72))
print("math.ceil(math.pi): ", math.ceil(math.pi))
```

#### **输出结果**

```powershell
math.ceil(-45.17):  -45
math.ceil(100.12):  101
math.ceil(100.72):  101
math.ceil(math.pi):  4
```

<!-- tabs:end -->

## exp()

返回 `x` 的指数。

```python
import math
math.exp(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 数值表达式 |

#### **返回值**

数值 `x` 的指数。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("math.exp(-45.17): ", math.exp(-45.17))
print("math.exp(100.12): ", math.exp(100.12))
print("math.exp(100.72): ", math.exp(100.72))
print("math.exp(math.pi): ", math.exp(math.pi))
```

#### **输出结果**

```powershell
math.exp(-45.17):  2.4150062132629406e-20
math.exp(100.12):  3.0308436140742566e+43
math.exp(100.72):  5.522557130248187e+43
math.exp(math.pi):  23.140692632779267
```

<!-- tabs:end -->

## fabs()

返回数字的绝对值，类似于 `abs()` 函数，但是有两点区别：

- `abs()` 是内置函数，`fabs()` 函数在 `math` 模块中定义
- `fabs()` 函数只对浮点型跟整型数值有效，`abs()` 还可以运用在复数中。

```python
import math
math.fabs(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 数值表达式 |

#### **返回值**

数字的绝对值。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("math.fabs(-45.17): ", math.fabs(-45.17))
print("math.fabs(100.12): ", math.fabs(100.12))
print("math.fabs(100.72): ", math.fabs(100.72))
print("math.fabs(math.pi): ", math.fabs(math.pi))
```

#### **输出结果**

```powershell
math.fabs(-45.17):  45.17
math.fabs(100.12):  100.12
math.fabs(100.72):  100.72
math.fabs(math.pi):  3.141592653589793
```

<!-- tabs:end -->

## floor()

返回数字的下舍整数，小于或等于 `x`。

```python
import math
math.floor(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 数值表达式 |

#### **返回值**

小于或等于 `x` 的整数。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("math.floor(-45.17): ", math.floor(-45.17))
print("math.floor(100.12): ", math.floor(100.12))
print("math.floor(100.72): ", math.floor(100.72))
print("math.floor(math.pi): ", math.floor(math.pi))
```

#### **输出结果**

```powershell
math.floor(-45.17):  -46
math.floor(100.12):  100
math.floor(100.72):  100
math.floor(math.pi):  3
```

<!-- tabs:end -->

## log()

返回 `x` 的自然对数。

```python
import math
math.log(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 数值表达式 |

#### **返回值**

数值 `x` 的自然对数。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("math.log(100.12): ", math.log(100.12))
print("math.log(100.72): ", math.log(100.72))
print("math.log(math.pi): ", math.log(math.pi))
```

#### **输出结果**

```powershell
math.log(100.12):  4.6063694665635735
math.log(100.72):  4.612344389736092
math.log(math.pi):  1.1447298858494002
```

<!-- tabs:end -->

## log10()

返回以 10 为基数的 `x` 对数。

```python
import math
math.log10(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 数值表达式 |

#### **返回值**

以 10 为基数的 `x` 对数。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("math.log10(100.12): ", math.log10(100.12))
print("math.log10(100.72): ", math.log10(100.72))
print("math.log10(119): ", math.log10(119))
print("math.log10(math.pi): ", math.log10(math.pi))
```

#### **输出结果**

```powershell
math.log10(100.12):  2.0005208409361854
math.log10(100.72):  2.003115717099806
math.log10(119):  2.0755469613925306
math.log10(math.pi):  0.49714987269413385
```

<!-- tabs:end -->

## max()

返回给定参数的最大值，参数可以为序列。

```python
max(x, y, z, ....)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 数值表达式 |
| y | 数值表达式 |
| z | 数值表达式 |

#### **返回值**

给定参数的最大值。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
print("max(80, 100, 1000): ", max(80, 100, 1000))
print("max(-20, 100, 400): ", max(-20, 100, 400))
print("max(-80, -20, -10): ", max(-80, -20, -10))
print("max(0, 100, -400): ", max(0, 100, -400))
```

#### **输出结果**

```powershell
max(80, 100, 1000):  1000
max(-20, 100, 400):  400
max(-80, -20, -10):  -10
max(0, 100, -400):  100
```

<!-- tabs:end -->

## min()

返回给定参数的最小值，参数可以为序列。

```python
min(x, y, z, ....)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 数值表达式 |
| y | 数值表达式 |
| z | 数值表达式 |

#### **返回值**

给定参数的最小值。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
print("min(80, 100, 1000): ", min(80, 100, 1000))
print("min(-20, 100, 400): ", min(-20, 100, 400))
print("min(-80, -20, -10): ", min(-80, -20, -10))
print("min(0, 100, -400): ", min(0, 100, -400))
```

#### **输出结果**

```powershell
min(80, 100, 1000):  80
min(-20, 100, 400):  -20
min(-80, -20, -10):  -80
min(0, 100, -400):  -400
```

<!-- tabs:end -->

## modf()

返回 `x` 的整数部分与小数部分，两部分的数值符号与 `x` 相同，整数部分以浮点型表示。

```python
import math
math.modf(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 数值表达式 |

#### **返回值**

数值 `x` 的整数部分与小数部分。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("math.modf(100.12): ", math.modf(100.12))
print("math.modf(100.72): ", math.modf(100.72))
print("math.modf(119): ", math.modf(119))
print("math.modf(math.pi): ", math.modf(math.pi))
```

#### **输出结果**

```powershell
math.modf(100.12):  (0.12000000000000455, 100.0)
math.modf(100.72):  (0.7199999999999989, 100.0)
math.modf(119):  (0.0, 119.0)
math.modf(math.pi):  (0.14159265358979312, 3.0)
```

<!-- tabs:end -->

## pow()

计算 `x` 的 `y` 次方，如果 `z` 存在，则再对结果进行取模，其结果等效于 `pow(x,y)%z`。

```python
pow(x, y[, z])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 数值表达式 |
| y | 数值表达式 |
| z | 数值表达式 |

#### **返回值**

数值 `x` 的 `y` 次方的值，如果 `z` 存在，则再对结果进行取模。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
print("pow(100, 2): ", pow(100, 2))
```

#### **输出结果**

```powershell
pow(100, 2):  10000
```

<!-- tabs:end -->

## math.pow()

返回 `x` 的 `y` 次方的值，与内置的 `pow()` 方法不同的是，内置的 `pow()` 方法把参数作为整型，而 `math` 模块则会把参数转换为 `float`。

```python
import math
math.pow(x, y)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 数值表达式 |
| y | 数值表达式 |

#### **返回值**

数值 `x` 的 `y` 次方的值。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("math.pow(100, 2): ", math.pow(100, 2))
print("math.pow(100, -2): ", math.pow(100, -2))
print("math.pow(2, 4): ", math.pow(2, 4))
print("math.pow(3, 0): ", math.pow(3, 0))
```

#### **输出结果**

```powershell
math.pow(100, 2):  10000.0
math.pow(100, -2):  0.0001
math.pow(2, 4):  16.0
math.pow(3, 0):  1.0
```

<!-- tabs:end -->

## round()

返回浮点数 `x` 的四舍五入值。

```python
round(x[, n])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 数值表达式 |
| n | 数值表达式 |

#### **返回值**

浮点数 `x` 的四舍五入值。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
print("round(70.23456): ", round(70.23456))
print("round(56.659,1): ", round(56.659,1))
print("round(80.264, 2): ", round(80.264, 2))
print("round(100.000056, 3): ", round(100.000056, 3))
print("round(-100.000056, 3): ", round(-100.000056, 3))
```

#### **输出结果**

```powershell
round(70.23456):  70
round(56.659,1):  56.7
round(80.264, 2):  80.26
round(100.000056, 3):  100.0
round(-100.000056, 3):  -100.0
```

<!-- tabs:end -->

## sqrt()

返回数字 `x` 的平方根。

```python
import math
math.sqrt(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 数值表达式 |

#### **返回值**

数字 `x` 的平方根。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("math.sqrt(100): ", math.sqrt(100))
print("math.sqrt(7): ", math.sqrt(7))
print("math.sqrt(math.pi): ", math.sqrt(math.pi))
```

#### **输出结果**

```powershell
math.sqrt(100):  10.0
math.sqrt(7):  2.6457513110645907
math.sqrt(math.pi):  1.7724538509055159
```

<!-- tabs:end -->

## acos()

返回 `x` 的反余弦弧度值。

```python
import math
math.acos(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | -1到1之间的数值，如果x是大于1，会产生一个错误 |

#### **返回值**

数值 `x` 的反余弦弧度值。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("acos(0.64): ",  math.acos(0.64))
print("acos(0): ",  math.acos(0))
print("acos(-1): ",  math.acos(-1))
print("acos(1): ",  math.acos(1))
```

#### **输出结果**

```powershell
acos(0.64):  0.8762980611683406
acos(0):  1.5707963267948966
acos(-1):  3.141592653589793
acos(1):  0.0
```

<!-- tabs:end -->

## asin()

返回 `x` 的反正弦弧度值。

```python
import math
math.asin(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 1到1之间的数值，如果x是大于1，会产生一个错误 |

#### **返回值**

数值 `x` 的反正弦弧度值。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("asin(0.64): ",  math.asin(0.64))
print("asin(0): ",  math.asin(0))
print("asin(-1): ",  math.asin(-1))
print("asin(1): ",  math.asin(1))
```

#### **输出结果**

```powershell
asin(0.64):  0.694498265626556
asin(0):  0.0
asin(-1):  -1.5707963267948966
asin(1):  1.5707963267948966
```

<!-- tabs:end -->

## atan()

返回 `x` 的反正切弧度值。

```python
import math
math.atan(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 一个数值 |

#### **返回值**

数值 `x` 的反正切弧度值。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("atan(0.64): ",  math.atan(0.64))
print("atan(0): ",  math.atan(0))
print("atan(10): ",  math.atan(10))
print("atan(-1): ",  math.atan(-1))
print("atan(1): ",  math.atan(1))
```

#### **输出结果**

```powershell
atan(0.64):  0.5693131911006619
atan(0):  0.0
atan(10):  1.4711276743037347
atan(-1):  -0.7853981633974483
atan(1):  0.7853981633974483
```

<!-- tabs:end -->

## atan2()

返回给定的 `X` 及 `Y` 坐标值的反正切值。

```python
import math
math.atan2(y, x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 一个数值 |
| y | 一个数值 |

#### **返回值**

给定的 `X` 及 `Y` 坐标值的反正切值。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("atan2(-0.50,-0.50): ",  math.atan2(-0.50,-0.50))
print("atan2(0.50,0.50): ",  math.atan2(0.50,0.50))
print("atan2(5,5): ",  math.atan2(5,5))
print("atan2(-10,10): ",  math.atan2(-10,10))
print("atan2(10,20): ",  math.atan2(10,20))
```

#### **输出结果**

```powershell
atan2(-0.50,-0.50):  -2.356194490192345
atan2(0.50,0.50):  0.7853981633974483
atan2(5,5):  0.7853981633974483
atan2(-10,10):  -0.7853981633974483
atan2(10,20):  0.4636476090008061
```

<!-- tabs:end -->

## cos()

返回 `x` 的弧度的余弦值。

```python
import math
math.cos(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 一个数值 |

#### **返回值**

数值 `x` 的弧度的余弦值，-1 到 1 之间。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("cos(3): ",  math.cos(3))
print("cos(-3): ",  math.cos(-3))
print("cos(0): ",  math.cos(0))
print("cos(math.pi): ",  math.cos(math.pi))
print("cos(2*math.pi): ",  math.cos(2*math.pi))
```

#### **输出结果**

```powershell
cos(3):  -0.9899924966004454
cos(-3):  -0.9899924966004454
cos(0):  1.0
cos(math.pi):  -1.0
cos(2*math.pi):  1.0
```

<!-- tabs:end -->

## hypot()

返回欧几里德范数 `sqrt(x*x + y*y)`。

```python
import math
math.hypot(x, y)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 一个数值 |
| y | 一个数值 |

#### **返回值**

欧几里德范数 `sqrt(x*x + y*y)`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("hypot(3, 2): ",  math.hypot(3, 2))
print("hypot(-3, 3): ",  math.hypot(-3, 3))
print("hypot(0, 2): ",  math.hypot(0, 2))
```

#### **输出结果**

```powershell
hypot(3, 2):  3.6055512754639896
hypot(-3, 3):  4.242640687119286
hypot(0, 2):  2.0
```

<!-- tabs:end -->

## sin()

返回的 `x` 弧度的正弦值。

```python
import math
math.sin(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 一个数值 |

#### **返回值**

返回的 `x` 弧度的正弦值，数值在 -1 到 1 之间。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("sin(3): ",  math.sin(3))
print("sin(-3): ",  math.sin(-3))
print("sin(0): ",  math.sin(0))
print("sin(math.pi): ",  math.sin(math.pi))
print("sin(math.pi/2): ",  math.sin(math.pi/2))
```

#### **输出结果**

```powershell
sin(3):  0.1411200080598672
sin(-3):  -0.1411200080598672
sin(0):  0.0
sin(math.pi):  1.2246467991473532e-16
sin(math.pi/2):  1.0
```

<!-- tabs:end -->

## tan()

返回 `x` 弧度的正弦值。

```python
import math
math.tan(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 一个数值 |

#### **返回值**

数值 `x` 弧度的正弦值，数值在 -1 到 1 之间。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("tan(3): ",  math.tan(3))
print("tan(-3): ",  math.tan(-3))
print("tan(0): ",  math.tan(0))
print("tan(math.pi): ",  math.tan(math.pi))
print("tan(math.pi/2): ",  math.tan(math.pi/2))
print("tan(math.pi/4): ",  math.tan(math.pi/4))
```

#### **输出结果**

```powershell
tan(3):  -0.1425465430742778
tan(-3):  0.1425465430742778
tan(0):  0.0
tan(math.pi):  -1.2246467991473532e-16
tan(math.pi/2):  1.633123935319537e+16
tan(math.pi/4):  0.9999999999999999
```

<!-- tabs:end -->

## degrees()

将弧度转换为角度。

```python
import math
math.degrees(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 一个数值 |

#### **返回值**

一个角度值。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("degrees(3): ",  math.degrees(3))
print("degrees(-3): ",  math.degrees(-3))
print("degrees(0): ",  math.degrees(0))
print("degrees(math.pi): ",  math.degrees(math.pi))
print("degrees(math.pi/2): ",  math.degrees(math.pi/2))
print("degrees(math.pi/4): ",  math.degrees(math.pi/4))
```

#### **输出结果**

```powershell
degrees(3):  171.88733853924697
degrees(-3):  -171.88733853924697
degrees(0):  0.0
degrees(math.pi):  180.0
degrees(math.pi/2):  90.0
degrees(math.pi/4):  45.0
```

<!-- tabs:end -->

## radians()

将角度转换为弧度。

```python
import math
math.radians(x)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| x | 一个数值 |

#### **返回值**

一个角度的弧度值。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import math
print("radians(3): ",  math.radians(3))
print("radians(-3): ",  math.radians(-3))
print("radians(0): ",  math.radians(0))
print("radians(math.pi): ",  math.radians(math.pi))
print("radians(math.pi/2): ",  math.radians(math.pi/2))
print("radians(math.pi/4): ",  math.radians(math.pi/4))
```

#### **输出结果**

```powershell
radians(3):  0.05235987755982989
radians(-3):  -0.05235987755982989
radians(0):  0.0
radians(math.pi):  0.05483113556160755
radians(math.pi/2):  0.027415567780803774
radians(math.pi/4):  0.013707783890401887
```

<!-- tabs:end -->
