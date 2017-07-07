<%@ page language="java" contentType="text/json; charset=UTF-8"
	pageEncoding="UTF-8" import="com.shiyanlou.photo.domain.Image,org.json.*, com.shiyanlou.photo.util.*"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%><%

// 这是一个API测试, 注意可以将 上面contentType 修改为contentType="text/json
// <!-- 请注意上面的 import 语句 , 用逗号分隔 -->

response.addHeader("Access-Control-Allow-Origin", "*");

// From OrgJsonTest.java BuildJson() 测试代码
Image image  = new Image();
image.setId(1);
image.setName("a image");
image.setUrl("http://myimage.com/img.png");

// 将Javabean转换为Json数据（需要Map中转）
JSONObject jo1 = OrgJsonHelper.toJSON(image);

// 获取远端的json数据
JSONObject json = JsonReader.readJsonFromUrl("http://api.douban.com/v2/movie/top250");

// 将douban top250 的 subjets 数组的第一个对象的 images 对象 放置在jo1中
jo1.put("top250_1_images", json.getJSONArray("subjects").getJSONObject(1).get("images"));

out.println(jo1.toString());
//System.out.println(jo1.toString());
%>
