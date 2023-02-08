# Python 字符串 {docsify-ignore}

## capitalize()

将字符串的第一个字母变成大写，其他字母变小写。

```python
str.capitalize()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

一个首字母大写的字符串。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "this is string example from you....wow!!!"
print("str.capitalize(): ", str.capitalize())
```

#### **输出结果**

```powershell
str.capitalize():  This is string example from you....wow!!!
```

<!-- tabs:end -->

## center()

一个指定的宽度 `width` 居中的字符串，`fillchar` 为填充的字符，默认为空格。

```python
str.center(width[, fillchar])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| width | 字符串的总宽度 |
| fillchar | 填充字符 |

#### **返回值**

一个指定的宽度 `width` 居中的字符串，如果 `width` 小于字符串宽度直接返回字符串，否则使用 `fillchar` 去填充。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "[www.you.com]"
print("str.center(40, '*'): ", str.center(40, '*'))
```

#### **输出结果**

```powershell
str.center(40, '*'):  ************[www.you.com]************
```

<!-- tabs:end -->

## count()

统计字符串里某个字符出现的次数，可选参数为在字符串搜索的开始与结束位置。

```python
str.count(sub, start=0, end=len(string))
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| sub | 搜索的子字符串 |
| start | 字符串开始搜索的位置，默认为第一个字符，第一个字符索引值为0 |
| end | 字符串中结束搜索的位置，字符中第一个字符的索引为0，默认为字符串的最后一个位置 |

#### **返回值**

子字符串在字符串中出现的次数。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str="www.you.com"
sub='x'
print ("str.count('x'): ", str.count(sub))
sub='w'
print ("str.count('w', 0, 10): ", str.count(sub, 0, 10))
```

#### **输出结果**

```powershell
str.count('y'):  1
str.count('w', 0, 10):  3
```

<!-- tabs:end -->

## bytes.decode()

以指定的编码格式解码 `bytes` 对象，默认编码为 `utf-8`。

```python
bytes.decode(encoding="utf-8", errors="strict")
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| encoding | 要使用的编码，如"UTF-8" |
| errors | 设置不同错误的处理方案，默认为'strict'，意为编码错误引起一个UnicodeError。其他可能的值有'ignore'、'replace'、'xmlcharrefreplace'、'backslashreplace'以及通过codecs.register_error()注册的任何值 |

#### **返回值**

解码后的字符串。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "you示例"
str_utf8 = str.encode("UTF-8")
str_gbk = str.encode("GBK")
print(str)
print("UTF-8 编码：", str_utf8)
print("GBK 编码：", str_gbk)
print("UTF-8 解码：", str_utf8.decode('UTF-8','strict'))
print("GBK 解码：", str_gbk.decode('GBK','strict'))
```

#### **输出结果**

```powershell
you示例
UTF-8 编码： b'you\xe7\xa4\xba\xe4\xbe\x8b'
GBK 编码： b'you\xca\xbe\xc0\xfd'
UTF-8 解码： you示例
GBK 解码： you示例
```

<!-- tabs:end -->

## encode()

以指定的编码格式编码字符串，`errors` 参数可以指定不同的错误处理方案。

```python
str.encode(encoding='UTF-8', errors='strict')
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| encoding | 要使用的编码，如: UTF-8 |
| errors | 设置不同错误的处理方案，默认为'strict'，意为编码错误引起一个UnicodeError。其他可能的值有'ignore'、'replace'、'xmlcharrefreplace'、'backslashreplace'以及通过codecs.register_error()注册的任何值 |

#### **返回值**

编码后的字符串，它是一个 `bytes` 对象。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "you示例"
str_utf8 = str.encode("UTF-8")
str_gbk = str.encode("GBK")
print(str)
print("UTF-8 编码：", str_utf8)
print("GBK 编码：", str_gbk)
print("UTF-8 解码：", str_utf8.decode('UTF-8','strict'))
print("GBK 解码：", str_gbk.decode('GBK','strict'))
```

#### **输出结果**

```powershell
you示例
UTF-8 编码： b'you\xe7\xa4\xba\xe4\xbe\x8b'
GBK 编码： b'you\xca\xbe\xc0\xfd'
UTF-8 解码： you示例
GBK 解码： you示例
```

<!-- tabs:end -->

## endswith()

判断字符串是否以指定后缀结尾，如果以指定后缀结尾返回 `True`，否则返回 `False`。可选参数 `start` 与 `end` 为检索字符串的开始与结束位置。

```python
str.endswith(suffix[, start[, end]])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| suffix | 该参数可以是一个字符串或者是一个元素 |
| start | 字符串中的开始位置 |
| end | 字符中结束位置 |

#### **返回值**

如果字符串含有指定的后缀返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
Str='you example....wow!!!'
suffix='!!'
print(Str.endswith(suffix))
print(Str.endswith(suffix,17))
suffix='run'
print(Str.endswith(suffix))
print(Str.endswith(suffix, 0, 16))
```

#### **输出结果**

```powershell
True
True
False
False
```

<!-- tabs:end -->

## expandtabs()

把字符串中的tab符号('\t')转为空格，tab符号('\t')默认的空格数是8。

```python
str.expandtabs(tabsize=8)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| tabsize | 指定转换字符串中的tab符号('\t')转为空格的字符数 |

#### **返回值**

字符串中的tab符号('\t')转为空格后生成的新字符串。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "this is\tstring example....wow!!!"
print("原始字符串: " + str)
print("替换 \\t 符号: " +  str.expandtabs())
print("使用16个空格替换 \\t 符号: " +  str.expandtabs(16))
```

#### **输出结果**

```powershell
原始字符串: this is     string example....wow!!!
替换 \t 符号: this is string example....wow!!!
使用16个空格替换 \t 符号: this is         string example....wow!!!
```

<!-- tabs:end -->

## find()

检测字符串中是否包含子字符串 `str`，如果指定 `beg`（开始）和 `end`（结束）范围，则检查是否包含在指定范围内，如果包含子字符串返回开始的索引值，否则返回-1。

```python
str.find(str, beg=0, end=len(string))
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| str | 指定检索的字符串 |
| beg | 开始索引，默认为0 |
| end | 结束索引，默认为字符串的长度 |

#### **返回值**

如果包含子字符串返回开始的索引值，否则返回-1。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str1 = "you example....wow!!!"
str2 = "exam"
print(str1.find(str2))
print(str1.find(str2, 3))
print(str1.find(str2, 7))
```

#### **输出结果**

```powershell
4
4
-1
```

<!-- tabs:end -->

## index()

检测字符串中是否包含子字符串 `str`，如果指定 `beg`（开始）和 `end`（结束）范围，则检查是否包含在指定范围内，该方法与 `find()` 方法一样，只不过如果 `str` 不在 `string` 中会报一个异常。

```python
str.index(str, beg=0, end=len(string))
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| str | 指定检索的字符串 |
| beg | 开始索引，默认为0 |
| end | 结束索引，默认为字符串的长度 |

#### **返回值**

如果包含子字符串返回开始的索引值，否则抛出异常。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str1 = "you example....wow!!!"
str2 = "exam"
print(str1.index(str2))
print(str1.index(str2, 3))
print(str1.index(str2, 7))
```

#### **输出结果**

```powershell
4
4
Traceback (most recent call last):
  File "test.py", line 5, in <module>
    print (str1.index(str2, 7))
ValueError: substring not found
```

<!-- tabs:end -->

## isalnum()

检测字符串是否由字母和数字组成。

```python
str.isalnum()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

如果 `string` 至少有一个字符并且所有字符都是字母或数字则返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "you2020"
print(str.isalnum())
str = "www.you.com"
print(str.isalnum())
```

#### **输出结果**

```powershell
True
False
```

<!-- tabs:end -->

## isalpha()

检测字符串是否只由字母组成。

```python
str.isalpha()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

如果字符串至少有一个字符并且所有字符都是字母则返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "example"
print(str.isalpha())
str = "you example....wow!!!"
print(str.isalpha())
```

#### **输出结果**

```powershell
True
False
```

<!-- tabs:end -->

## isdigit()

检测字符串是否只由数字组成。

```python
str.isdigit()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

如果字符串只包含数字则返回 `True` 否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "123456"; 
print(str.isdigit())
str = "you example....wow!!!"
print(str.isdigit())
```

#### **输出结果**

```powershell
True
False
```

<!-- tabs:end -->

## islower()

检测字符串是否由小写字母组成。

```python
str.islower()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

如果字符串中包含至少一个区分大小写的字符，并且所有这些（区分大小写的）字符都是小写，则返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "You example....wow!!!"
print(str.islower())
str = "you example....wow!!!"
print(str.islower())
```

#### **输出结果**

```powershell
False
True
```

<!-- tabs:end -->

## isnumeric()

检测字符串是否只由数字组成，这种方法是只针对 `unicode` 对象。

```python
str.isnumeric()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

如果字符串中只包含数字字符，则返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "you2020"  
print(str.isnumeric())
str = "23443434"
print(str.isnumeric())
```

#### **输出结果**

```powershell
False
True
```

<!-- tabs:end -->

## isspace()

检测字符串是否只由空格组成。

```python
str.isspace()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

如果字符串中只包含空格，则返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "       " 
print(str.isspace())
str = "you example....wow!!!"
print(str.isspace())
```

#### **输出结果**

```powershell
True
False
```

<!-- tabs:end -->

## istitle()

检测字符串中所有的单词拼写首字母是否为大写，且其他字母为小写。

```python
str.istitle()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

如果字符串中所有的单词拼写首字母是否为大写，且其他字母为小写则返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "This Is String Example...Wow!!!"
print(str.istitle())
str = "This is string example....wow!!!"
print(str.istitle())
```

#### **输出结果**

```powershell
True
False
```

<!-- tabs:end -->

## isupper()

检测字符串中所有的字母是否都为大写。

```python
str.isupper()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

如果字符串中包含至少一个区分大小写的字符，并且所有这些(区分大小写的)字符都是大写，则返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "THIS IS STRING EXAMPLE....WOW!!!"
print(str.isupper())
str = "THIS is string example....wow!!!"
print(str.isupper())
```

#### **输出结果**

```powershell
True
False
```

<!-- tabs:end -->

## join()

将序列中的元素以指定的字符连接生成一个新的字符串。

```python
str.join(sequence)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| sequence | 要连接的元素序列 |

#### **返回值**

通过指定字符连接序列中元素后生成的新字符串。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
s1 = "-"
s2 = ""
seq = ("Y", "o", "u", "2", "3")
print(s1.join(seq))
print(s2.join(seq))
```

#### **输出结果**

```powershell
Y-o-u-2-3
You23
```

<!-- tabs:end -->

## ljust()

返回一个原字符串左对齐，并使用空格填充至指定长度的新字符串，如果指定的长度小于原字符串的长度则返回原字符串。

```python
str.ljust(width[, fillchar])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| width | 指定字符串长度 |
| fillchar | 填充字符，默认为空格 |

#### **返回值**

一个原字符串左对齐，并使用空格填充至指定长度的新字符串，如果指定的长度小于原字符串的长度则返回原字符串。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "You example....wow!!!"
print(str.ljust(50, '*'))
```

#### **输出结果**

```powershell
You example....wow!!!*****************************
```

<!-- tabs:end -->

## lower()

转换字符串中所有大写字符为小写。

```python
str.lower()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

将字符串中所有大写字符转换为小写后生成的字符串。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "You EXAMPLE....WOW!!!"
print(str.lower())
```

#### **输出结果**

```powershell
you example....wow!!!
```

<!-- tabs:end -->

## lstrip()

截掉字符串左边的空格或指定字符。

```python
str.lstrip([chars])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| chars | 指定截取的字符 |

#### **返回值**

截掉字符串左边的空格或指定字符后生成的新字符串。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "     this is string example....wow!!!     "
print(str.lstrip())
str = "88888888this is string example....wow!!!8888888"
print(str.lstrip('8'))
```

#### **输出结果**

```powershell
this is string example....wow!!!
this is string example....wow!!!8888888
```

<!-- tabs:end -->

## maketrans()

创建字符映射的转换表，对于接受两个参数的最简单的调用方式，第一个参数是字符串，表示需要转换的字符，第二个参数也是字符串表示转换的目标。（注：两个字符串的长度必须相同，为一一对应的关系。）

```python
str.maketrans(intab, outtab)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| intab | 字符串中要替代的字符组成的字符串 |
| outtab | 相应的映射字符的字符串 |

#### **返回值**

字符串转换后生成的新字符串。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
intab = "aeiou"
outtab = "12345"
trantab = str.maketrans(intab, outtab)
str = "this is string example....wow!!!"
print(str.translate(trantab))
```

#### **输出结果**

```powershell
th3s 3s str3ng 2x1mpl2....w4w!!!
```

<!-- tabs:end -->

## max()

返回字符串中最大的字母或数字。

```python
max(str)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| str | 字符串 |

#### **返回值**

字符串中最大的字母或数字。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "You233"
print("最大字符: " + max(str))
```

#### **输出结果**

```powershell
最大字符: u
```

<!-- tabs:end -->

## min()

返回字符串中最小的字母或数字。

```python
min(str)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| str | 字符串 |

#### **返回值**

字符串中最小的字母或数字。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "You233"
print("最小字符: " + min(str))
```

#### **输出结果**

```powershell
最小字符: 2
```

<!-- tabs:end -->

## replace()

把字符串中的 `old`（旧字符串）替换成 `new`（新字符串），如果指定第三个参数 `max`，则替换不超过 `max` 次。

```python
str.replace(old, new[, max])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| old | 将被替换的子字符串 |
| new | 新字符串，用于替换old子字符串 |
| max | 可选字符串, 替换不超过max次 |

#### **返回值**

字符串中的 `old`（旧字符串）替换成 `new`（新字符串）后生成的新字符串，如果指定第三个参数 `max`，则替换不超过 `max` 次。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "www.you.com"
print("You新地址：", str)
print("You新地址：", str.replace("www", "new"))
str = "this is string example....wow!!!"
print(str.replace("is", "was", 3))
```

#### **输出结果**

```powershell
You新地址： www.you.com
You新地址： new.you.com
thwas was string example....wow!!!
```

<!-- tabs:end -->

## rfind()

返回字符串最后一次出现的位置，如果没有匹配项则返回-1。

```python
str.rfind(str, beg=0 end=len(string))
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| str | 查找的字符串 |
| beg | 开始查找的位置，默认为0 |
| end | 结束查找位置，默认为字符串的长度 |

#### **返回值**

字符串最后一次出现的位置，如果没有匹配项则返回-1。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str1 = "this is really a string example....wow!!!"
str2 = "is"
print(str1.rfind(str2))
print(str1.rfind(str2, 0, 10))
print(str1.rfind(str2, 10, 0))
print(str1.find(str2))
print(str1.find(str2, 0, 10))
print(str1.find(str2, 10, 0))
```

#### **输出结果**

```powershell
5
5
-1
2
2
-1
```

<!-- tabs:end -->

## rindex()

返回子字符串 `str` 在字符串中最后出现的位置，如果没有匹配的字符串会报异常，你可以指定可选参数 `[beg:end]` 设置查找的区间。

```python
str.rindex(str, beg=0, end=len(string))
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| str | 查找的字符串 |
| beg | 开始查找的位置，默认为0 |
| end | 结束查找位置，默认为字符串的长度 |

#### **返回值**

子字符串 `str` 在字符串中最后出现的位置，如果没有匹配的字符串会报异常。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str1 = "this is really a string example....wow!!!"
str2 = "is"
print(str1.rindex(str2))
print(str1.rindex(str2,10))
```

#### **输出结果**

```powershell
5
Traceback (most recent call last):
  File "test.py", line 4, in <module>
    print(str1.rindex(str2,10))
ValueError: substring not found
```

<!-- tabs:end -->

## rjust()

返回一个原字符串右对齐，并使用空格填充至长度 `width` 的新字符串，如果指定的长度小于字符串的长度则返回原字符串。

```python
str.rjust(width[, fillchar])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| width | 指定填充指定字符后中字符串的总长度 |
| fillchar | 填充的字符，默认为空格 |

#### **返回值**

一个原字符串右对齐，并使用空格填充至长度 `width` 的新字符串，如果指定的长度小于字符串的长度则返回原字符串。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "this is string example....wow!!!"
print(str.rjust(50, '*'))
```

#### **输出结果**

```powershell
*******************this is string example....wow!!!
```

<!-- tabs:end -->

## rstrip()

删除字符串末尾的指定字符（默认为空格）。

```python
str.rstrip([chars])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| chars | 指定删除的字符（默认为空格） |

#### **返回值**

删除字符串末尾的指定字符后生成的新字符串。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "     this is string example....wow!!!     "
print(str.rstrip())
str = "*****this is string example....wow!!!*****"
print(str.rstrip('*'))
```

#### **输出结果**

```powershell
     this is string example....wow!!!
*****this is string example....wow!!!
```

<!-- tabs:end -->

## split()

通过指定分隔符对字符串进行切片，如果参数 `num` 有指定值，则仅分隔 `num` 个子字符串。

```python
str.split(str="", num=string.count(str))
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| str | 分隔符，默认为所有的空字符，包括空格、换行(\n)、制表符(\t)等 |
| num | 分割次数 |

#### **返回值**

分割后的字符串列表。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "this is string example....wow!!!"
print(str.split( ))
print(str.split('i',1))
print(str.split('w'))
```

#### **输出结果**

```powershell
['this', 'is', 'string', 'example....wow!!!']
['th', 's is string example....wow!!!']
['this is string example....', 'o', '!!!']
```

<!-- tabs:end -->

## splitlines()

按照行分隔，返回一个包含各行作为元素的列表，如果 `num` 指定则仅切片 `num` 个行。

```python
str.split(str="", num=string.count(str))
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| num | 分割行的次数 |

#### **返回值**

一个包含各行作为元素的列表。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "this is \nstring example....\nwow!!!"
print(str.splitlines( ))
```

#### **输出结果**

```powershell
['this is ', 'string example....', 'wow!!!']
```

<!-- tabs:end -->

## startswith()

检查字符串是否是以指定子字符串开头，如果是则返回 `True`，否则返回 `False`。如果参数 `beg` 和 `end` 指定值，则在指定范围内检查。

```python
str.startswith(str, beg=0, end=len(string))
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| str | 检测的字符串 |
| strbeg | 可选参数用于设置字符串检测的起始位置 |
| strend | 可选参数用于设置字符串检测的结束位置 |

#### **返回值**

如果检测到字符串则返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "this is string example....wow!!!"
print(str.startswith('this'))
print(str.startswith('string', 8))
print(str.startswith('this', 2, 4))
```

#### **输出结果**

```powershell
True
True
False
```

<!-- tabs:end -->

## strip()

移除字符串头尾指定的字符（默认为空格）。

```python
str.strip([chars])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| chars | 移除字符串头尾指定的字符 |

#### **返回值**

移除字符串头尾指定的字符生成的新字符串。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "*****this is string example....wow!!!*****"
print(str.strip( '*' ))
```

#### **输出结果**

```powershell
this is string example....wow!!!
```

<!-- tabs:end -->

## swapcase()

对字符串的大小写字母进行转换。

```python
str.swapcase()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

大小写字母转换后生成的新字符串。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "this is You string example....wow!!!"
print(str.swapcase())
str = "This Is you.com String Example....WOW!!!"
print(str.swapcase())
```

#### **输出结果**

```powershell
THIS IS yOU STRING EXAMPLE....WOW!!!
tHIS iS YOU.COM sTRING eXAMPLE....wow!!!
```

<!-- tabs:end -->

## title()

返回“标题化”的字符串，就是说所有单词都是以大写开始，其余字母均为小写（见 `istitle()`）。

```python
str.title()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

“标题化”的字符串，就是说所有单词都是以大写开始。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "this is string example from You....wow!!!"
print(str.title())
```

#### **输出结果**

```powershell
This Is String Example From You....Wow!!!
```

<!-- tabs:end -->

## translate()

根据参数 `table` 给出的表（包含256个字符）转换字符串的字符，要过滤掉的字符放到 `deletechars` 参数中。

```python
str.translate(table[, deletechars])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| table | 翻译表，翻译表是通过maketrans方法转换而来 |
| deletechars | 字符串中要过滤的字符列表 |

#### **返回值**

翻译后的字符串。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
intab = "aeiou"
outtab = "12345"
trantab = str.maketrans(intab, outtab)
str = "this is string example....wow!!!"
print(str.translate(trantab))
```

#### **输出结果**

```powershell
th3s 3s str3ng 2x1mpl2....w4w!!!
```

<!-- tabs:end -->

## upper()

将字符串中的小写字母转为大写字母。

```python
str.upper()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

小写字母转为大写字母的字符串。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "this is string example from You....wow!!!";
print("str.upper(): ", str.upper())
```

#### **输出结果**

```powershell
str.upper():  THIS IS STRING EXAMPLE FROM YOU....WOW!!!
```

<!-- tabs:end -->

## zfill()

返回指定长度的字符串，原字符串右对齐，前面填充0。

```python
str.zfill(width)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| width | 指定字符串的长度。原字符串右对齐，前面填充0 |

#### **返回值**

指定长度的字符串。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "this is string example from You....wow!!!"
print("str.zfill: ",str.zfill(40))
print("str.zfill: ",str.zfill(50))
```

#### **输出结果**

```powershell
str.zfill:  this is string example from You....wow!!!
str.zfill:  000000000this is string example from You....wow!!!
```

<!-- tabs:end -->

## isdecimal()

检查字符串是否只包含十进制字符，这种方法只存在于 `unicode` 对象。（注意：定义一个十进制字符串，只需要在字符串前添加 `u` 前缀即可。）

```python
str.isdecimal()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

如果字符串是否只包含十进制字符返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
str = "You2016"
print(str.isdecimal())
str = "23443434"
print(str.isdecimal())
```

#### **输出结果**

```powershell
False
True
```

<!-- tabs:end -->

## char in str

字符串 `in` 操作符用于判断字符是否存在于字符串中，如果字符在字符串 `str` 里返回 `True`，否则返回 `False`。而 `not in` 操作符刚好相反，如果字符在字符串 `str` 里返回 `False`，否则返回 `True`。

```python
char in str
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| char | 查找的字符 |

#### **返回值**

如果字符在字符串里返回 `True`，否则返回 `False`。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
a = 'abcd'
if 'abc' in a:
    print('字符 abc 存在')
else:
    print('字符 abc 不存在')
if 'defg' not in a:
    print('字符 defg 不存在')
else:
	  print('字符 defg 存在')
```

#### **输出结果**

```powershell
字符 abc 存在
字符 defg 不存在
```

<!-- tabs:end -->
