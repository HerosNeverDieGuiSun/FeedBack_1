package com.hgd.ebp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hgd.ebp.domain.Ordertotal;
import com.hgd.ebp.service.ordertotal_servers;

public class OrderServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ordertotal_servers searchtime = ordertotal_servers.getInstance();
		
		String bdate = request.getParameter("bdate");
		String edate = request.getParameter("edate");
		try{
			if (request.getParameter("bdate") != null) {
			bdate += " 00:00:00";
			edate += " 23:59:59";
			System.out.println(2);
			List<Ordertotal> list = searchtime.SearchTime(bdate, edate);
			
			if (list == null) System.out.println(1);
			for (Ordertotal o : list) {
				System.out.println(o.getOid());
			}
			System.out.println("============="+list);
			request.setAttribute("OrderServlet", list);
			request.getRequestDispatcher("./order_admin.jsp").forward(request, response);
			} 			

			List<Ordertotal> list = searchtime.getAllOrders();
			request.setAttribute("OrderServlet", list);
			request.getRequestDispatcher("./order_admin.jsp").forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
	