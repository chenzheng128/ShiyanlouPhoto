<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.shiyanlou.photo.domain.Image,org.json.*, com.shiyanlou.photo.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
Image image  = new Image();
image.setId(1);
image.setName("a image");
image.setUrl("http://myimage.com/img.png");

%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${user.username}Photo</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="http://labfile.oss.aliyuncs.com/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://labfile.oss.aliyuncs.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<h1>这是一个 BuildJson 测试文件</h1>
	<%
		out.println("hello");
	
	// 将Javabean转换为Json数据（需要Map中转）
    JSONObject jo1 = OrgJsonHelper.toJSON(image);

    out.println("\n仅含Image对象的Json数据格式：");
    out.println(jo1.toString());
	%>
</body>
</html>