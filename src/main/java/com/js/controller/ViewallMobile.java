package com.js.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.MobileCRUD;
import com.js.dto.Mobile;



@WebServlet(value="/viewmob")
public class ViewallMobile extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
           ArrayList<Mobile> mobiles = MobileCRUD.getAllMobiles();
           
           if(mobiles.size()>0) {
       		RequestDispatcher rd = req.getRequestDispatcher("viewall.jsp");
       		req.setAttribute("data", mobiles);
       		rd.forward(req, resp);
       	}
       	
       	else {
       		RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
       		req.setAttribute("msg", "No MObile Available");
       		rd.forward(req, resp);
       	}
       	
       	
       	}
		
		
}
