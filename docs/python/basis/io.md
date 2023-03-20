# Python 系统 {docsify-ignore}

## os.path.join()

把目录和文件名合成一个路径。

```python
os.path.join(path1[, path2[, ...]])
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| path1[, path2[, ...]] | 目录或文件名 |

#### **返回值**

符合当前系统要求的路径。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import os
print(os.path.join('root', 'test', 'runoob.txt'))
```

#### **输出结果**

```powershell
root\test\runoob.txt
```

<!-- tabs:end -->

## os.getcwd()

返回当前工作目录。

```python
os.getcwd()
```

<!-- tabs:start -->

#### **参数**

无

#### **返回值**

当前进程的工作目录。

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import os
print("当前工作目录 : %s" % os.getcwd())
```

#### **输出结果**

```powershell
当前工作目录 : C:\Users\hexiaoyou
```

<!-- tabs:end -->

## os.remove()

用于删除指定路径的文件如，果指定的路径是一个目录，将抛出 `OSError`。

```python
os.remove(path)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| path | 要移除的文件路径 |

#### **返回值**

无

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import os, sys

print("目录为: %s" %os.listdir(os.getcwd()))
os.remove("Test.txt")
print("移除后: %s" %os.listdir(os.getcwd()))
```

#### **输出结果**

```powershell
目录为: ['AirtestIDE.lnk', 'desktop.ini', 'PDMan.lnk', 'Postman.lnk', 'Test.txt']
移除后: ['AirtestIDE.lnk', 'desktop.ini', 'PDMan.lnk', 'Postman.lnk']
```

<!-- tabs:end -->

## os.rename()

用于命名文件或目录，从 `src` 到 `dst`,如果 `dst` 是一个存在的目录，将抛出 `OSError`。

```python
os.rename(src, dst)
```

<!-- tabs:start -->

#### **参数**

| 名称 | 描述 |
| ---- | ---- |
| src | 要修改的目录名 |
| dst | 修改后的目录名 |

#### **返回值**

无

<!-- tabs:end -->

<!-- tabs:start -->

#### **代码**

```python
import os, sys

print("目录为: %s"%os.listdir(os.getcwd()))
os.rename("Test","Test2")
print("重命名后: %s" %os.listdir(os.getcwd()))
```

#### **输出结果**

```powershell
目录为: ['AirtestIDE.lnk', 'desktop.ini', 'PDMan.lnk', 'Postman.lnk', 'Test']
重命名后: ['AirtestIDE.lnk', 'desktop.ini', 'PDMan.lnk', 'Postman.lnk', 'Test2']
```

<!-- tabs:end -->
