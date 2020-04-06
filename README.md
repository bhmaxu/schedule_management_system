# 日程管理系统

基于Ruby on Rails的简易日程管理系统。**项目已经部署到https://management-system-se.herokuapp.com/**。

## 环境说明

以下是在本地运行项目的说明。

### 操作系统

由于Rails对Windows的支持存在问题，建议使用Linux或者macOS。如果要用Windows的话请使用WSL（我的开发环境就是WSL）。

### Ruby环境

需要安装[Ruby](http://www.ruby-lang.org/zh_cn/)，具体请参考官网。安装完成后，命令行查看版本验证是否安装成功

```
ruby -v
```

我的开发环境的ruby版本为2.5.1。

### Rails环境

```
 gem install rails -v 5.1.4 
```

请使用上述命令和我安装相同的版本避免出现不一致的情况。

### JavaScript运行环境

如果项目运行时提示缺少JavaScript运行时，请安装[Node.js](https://nodejs.org/zh-cn/).

### Gems安装

请在项目目录下命令行执行：

```
bundle install
```

## 项目运行

```
rails s
```

然后在浏览器打开http://localhost:3000/

