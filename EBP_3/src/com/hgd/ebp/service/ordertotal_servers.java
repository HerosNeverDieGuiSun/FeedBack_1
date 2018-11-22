package com.hgd.ebp.service;

import java.util.List;

import com.hgd.ebp.dao.OrdertotalDAO;
import com.hgd.ebp.domain.Ordertotal;

public class ordertotal_servers {
	private static ordertotal_servers ordertotalSvc = new ordertotal_servers();
	private OrdertotalDAO ordertotalDAO;
	
	private ordertotal_servers() {
		ordertotalDAO = OrdertotalDAO.getInstance();
	}
	
	public static ordertotal_servers getInstance() {
	     return ordertotalSvc;
	}
	
	public List<Ordertotal> getAllOrders() throws Exception {	
		List<Ordertotal> list = ordertotalDAO.queryAll();
        return list;
	}
	public  List<Ordertotal> SearchTime(String dtime ,String etime)throws Exception{
		
		System.out.println("sssssssss");
		List<Ordertotal> list = ordertotalDAO.select_time(dtime, etime);
		return list;
		//return OrdersDAO.select_time(dtime,etime);
	}
}
