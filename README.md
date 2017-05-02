# qiniu-image-tool
**qiniu-image-tool**是一个提升markdown贴图体验的实用小工具，可以自定义快捷键，一键上传图片或截图至七牛云，获取图片的markdown引用至剪贴板，并自动粘贴到当前编辑器。
目前支持mac及windows，其中mac版基于Alfred实现，windows版基于Autohotkey实现，两者都是通过基于七牛API服务的命令行工具qshell实现图片上传。

# mac版
详细的使用教程请参考：[使用alfred在markdown中愉快的贴图](http://jverson.com/2017/04/28/alfred-qiniu-upload/)

## Changlog

### 2017/05/02: v1.1

1. 添加样式分隔符和样式选择。
2. 支持使用前缀以区分不同上传源。

## Features
- 支持jpg、png、bmp及gif等各种图片格式
- 图片大于指定size自动压缩（仅限png和jpg格式） in process
- 支持视频文件上传，直接返回视频引用
- 上传失败或成功通知栏会有相应提示
- 使用简单，只需配置环境变量即可，无需修改代码

## Requirements
1. **Alfred with Powerpack** <br/>
appstore及[官网](https://www.alfredapp.com)均可下载安装，workflow功能需要购买Powerpack，建议尽量使用正版，充分利用一定物超所值
2. **qshell** <br/>
请参考七牛[官方文档](https://developer.qiniu.com/kodo/tools/1302/qshell)下载及安装，*注意请将文件名`qshell_darwin_amd64`重命名为`qshell`*
3. **qiniu account** <br/>
注册[七牛](https://portal.qiniu.com/signup/choice)账号，实名认证后可以获得10G的免费空间

## Preview
1. 本地图片文件上传 <br/>
![](https://raw.githubusercontent.com/jiwenxing/qiniu-image-tool/master/res/local.gif
)

2. 截图上传  <br/>
![](https://github.com/jiwenxing/qiniu-image-tool/blob/master/res/paste.gif?raw=true)

3. 本地视频文件上传  <br/>
![](https://github.com/jiwenxing/qiniu-image-tool/blob/master/res/video.gif?raw=true)

> 演示gif使用macdown及licecap制作


# windows版
详细的使用教程请参考：[AutoHotkey&qshell 实现图片自动上传七牛并返回markdown引用](http://jverson.com/2016/08/30/autohotkey-markdown-uploadImage/)

## Features
- 支持各种图片格式上传
- 图片大于指定size自动压缩（仅限png和jpg格式） in process
- 支持视频文件上传，直接返回视频引用  in process
- AutoHotkey开放源码，完全免费

## Requirements
`qshell`   `AutoHotkey` `七牛账号`


## License
MIT License.     
Copyright (c) 2017 Jverson






