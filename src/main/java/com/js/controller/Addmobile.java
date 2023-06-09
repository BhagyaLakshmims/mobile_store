package com.js.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.MobileCRUD;
import com.js.dto.Mobile;


@WebServlet(value="/savemob")
public class Addmobile extends HttpServlet{
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String brand = req.getParameter("brand");
		Double price = Double.parseDouble(req.getParameter("price"));
		
		Mobile m = new Mobile();
		m.setId(id);
		m.setName(name);
		m.setBrand(brand);
		m.setPrice(price);
		

		int result = MobileCRUD.insertmobile(m);
		RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
		if(result==1) {
			req.setAttribute("msg", "MObile Inserted successfully");
			rd.forward(req, resp);
		}
		else {
			req.setAttribute("msg", "failed to insert mobile");
			rd.forward(req, resp);
		}

}
}