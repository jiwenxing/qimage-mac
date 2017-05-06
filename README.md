# qiniu-image-tool-mac
**qiniu-image-tool**是一个提升markdown贴图体验的实用小工具，可以自定义快捷键，一键上传图片或截图至七牛云，获取图片的markdown引用至剪贴板，并自动粘贴到当前编辑器。目前支持mac及windows，其中mac版基于Alfred实现，windows版基于Autohotkey实现，两者都是通过基于七牛API服务的命令行工具qshell实现图片上传。

# Usage
详细的使用教程请参考：[使用alfred在markdown中愉快的贴图](http://jverson.com/2017/04/28/alfred-qiniu-upload/)     
windows版本请移步至：https://github.com/jiwenxing/qiniu-image-tool-win


## Features
- 支持jpg、png、bmp及gif等各种图片格式
- 支持截图及网络图片直接复制上传
- 支持各种其它格式本地文件上传，返回资源引用
- 上传失败或成功通知栏会有相应提示
- 使用简单，只需配置环境变量即可

## Requirements
**`Alfred with Powerpack`** **`qshell`** **`七牛账号`**

## Preview
1. 本地图片文件上传 <br/>
![](https://raw.githubusercontent.com/jiwenxing/qiniu-image-tool/master/res/local.gif)

2. 截图上传  <br/>
![](https://github.com/jiwenxing/qiniu-image-tool/blob/master/res/paste.gif?raw=true)

3. 其它文件上传  <br/>


> 演示gif使用macdown及licecap制作


# Changlog

## v1.0-beta: 2017/05/02
1. 添加样式分隔符和样式选择。
2. 支持使用前缀以区分不同上传源。

# License
MIT License.     
Copyright (c) 2017 Jverson






