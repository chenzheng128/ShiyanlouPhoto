# Java Web 开发示范项目

修改自实验楼 "结合七牛搭建个人相册" https://www.shiyanlou.com/courses/54

## 开发环境
* Java SE Development Kit 8 Downloads:   http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
* Java开发工具: 基于Eclipse 的 STS (自带 tomcat) 或者 NetBeans (自带 tomcat) https://spring.io/tools/sts
* 页面开发工具: Atom + LiveServer https://atom.io/
* 版本管理: Github Desktop https://desktop.github.com/
* (可选) tomcat8 https://tomcat.apache.org/download-80.cgi

## 相关修改
* 架构: 废弃七牛云部分(API可能过期, 认证调用无错误, 但实际未成功上传)
* Java `src/...`
  - `util/DButils.java` 定义数据库连接
  - `util/JsonReader.java` `action/JsonDoubanAction.java` 新增豆瓣java输出/Servlet类
* Web `WebContent`
  - `json1` 增加网易新闻json示例: http://localhost:8080/ShiyanlouPhoto/json1/
  - `json2` 增加豆瓣电影json示例: http://localhost:8080/ShiyanlouPhoto/json2/
