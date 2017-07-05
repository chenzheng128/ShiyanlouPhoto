package com.shiyanlou.photo.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.shiyanlou.photo.util.JsonReader;

/**
 * Servlet implementation class SimpleJsonWriter
 */
@WebServlet("/JsonDoubanAction")
public class JsonDoubanAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JsonDoubanAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// in_theaters
		//JSONObject json = JsonReader.readJsonFromUrl("http://api.douban.com/v2/movie/in_theaters");
		// top250
		JSONObject json = JsonReader.readJsonFromUrl("http://api.douban.com/v2/movie/top250");
		
		//放开限制避免 No 'Access-Control-Allow-Origin' header is present 错误
		response.addHeader("Access-Control-Allow-Origin", "*");
		
		response.setCharacterEncoding("Utf-8");
        response.setContentType("text/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.print(json.get("subjects"));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
