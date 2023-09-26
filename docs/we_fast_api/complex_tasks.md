# WeFastAPI 复杂任务 {docsify-ignore}

按照传统，首先要编写一个简单的 “Hello World” 程序，这里将编写一个最小的简易执行端。

## 创建项目

创建一个执行端项目的根目录，新建一个 **et_hello_world.py** 文件，并把下面这些代码输入进去：

```python
import time
import random
import requests
import argparse

execution_side_name = 'HelloWorld'
parser = argparse.ArgumentParser(
    description=f'ExecTasks {execution_side_name}')
parser.add_argument(
    '--service-host',
    dest='service_host',
    type=str,
    default='http://127.0.0.1:8083/',
    help='ServiceHost',
)
parser.add_argument(
    '--id',
    dest='id',
    type=int,
    default=0,
    help='ID',
)
args = parser.parse_args()
exec_id = f'ET-{execution_side_name}-{args.id}'

def service_request(method: str, path: str = 'api/', data=None, host: str = args.service_host, headers=None, is_repeat: bool = True, **kw):
    if headers is None:
        if method == 'GET':
            headers = {}
        else:
            headers = {'content-type': 'application/json'}
    if data is None:
        data = {}
    if '//' not in path:
        url = f'{host}{path}'
    else:
        url = path
    while True:
        err_str = ''
        res = None
        try:
            if method == 'POST':
                res = requests.post(url=url, json=data, headers=headers, **kw)
            elif method == 'DELETE':
                res = requests.delete(url=url, json=data,
                                      headers=headers, **kw)
            elif method == 'PUT':
                res = requests.put(url=url, json=data, headers=headers, **kw)
            else:
                res = requests.get(url=url, params=data, headers=headers, **kw)
            if res.status_code == 200:
                return res, err_str
            else:
                err_str = f'服务响应异常: {res.status_code} {res.reason} {res.text}'
        except requests.exceptions.ConnectTimeout:
            err_str = '服务请求异常: 连接超时或读取超时'
        except requests.exceptions.ConnectionError:
            err_str = '服务请求异常: 未知服务或网络异常'
        except Exception as err:
            err_str = f'服务请求异常: {err}'
        if is_repeat:
            print(err_str)
        else:
            return res, err_str
        time.sleep(60)

def log(level: str, message: str):
    """ 提交日志 level=debug|info|warning|error """
    print(f'[{level}] {exec_id}: {message}')
    service_request(method='POST', path='api/bases/logs/',
                    data={'level': level, 'message': f'{exec_id}: {message}'})

seconds = int(time.time())
public_ip = requests.get('http://ifconfig.me/ip', timeout=1).text.strip()
log('debug', f'已启动 {public_ip}')
while True:
    if int(time.time()) - seconds > random.randint(13, 23):
        try:
            print('Hello World')
            time.sleep(360)
        except Exception as e:
            log('error', str(e))
        seconds = int(time.time())
```

为了创建方便安装和管理依赖，请在项目的根目录里新建一个 **requirements.txt** 文件，输入如下代码：

```python
requests
pyinstaller
```

在已创建的开发环境下，输入以下命令：

```shell
pip install -r requirements.txt
```

## 调试执行端

现在确认一下执行端项目是否真的创建成功，如果当前目录不是项目的根目录的话，请切换到根目录，然后运行下面的命令：

```shell
python et_hello_world.py --service-host http://127.0.0.1:8083/ --id 0
```

*如果连接服务时出现 `服务响应异常: 401 Unauthorized {"detail":"未认证"}`，请将上一行打印的公网IP或主机地址添加到服务的 **令牌豁免 IP 网络列表** 或 **令牌豁免 IP 主机列表**（本地调试时可能是127.0.0.1）中*

执行端应该会看到如下输出：

```shell
[debug] ET-HelloWorld-0: 已启动 10.13.18.11
Hello World
```

而在服务端，会对应的显示以下输出：

```shell
2022-12-16 17:55:46.180 | DEBUG | apis.bases.api_logs:create_logs:87 - ET-HelloWorld-0: 已启动 10.13.18.11
```

## 打包发布

现在这个执行端项目已经完成，可以开始打包发布，运行这行命令来创建一个可执行应用：

```shell
pyinstaller -F et_hello_world.py -n et_hello_world
```

*如果需要连目录一同打包，可以在命令后面添加 `--add-data [源地址];[目标地址]` 以包含目录（例如：`--add-data C:/Users/admin/xxxx/abcd;abcd/`）*

这将会在根目录创建 **dist** 目录，并在下面生成一个 `et_hello_world.exe` 应用，通过以下命令验证应用是否正常工作：

```shell
./et_hello_world --service-host http://127.0.0.1:8083/ --id 0
```
