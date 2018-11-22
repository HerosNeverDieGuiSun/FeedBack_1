package com.hgd.ebp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.hgd.ebp.domain.Ordertotal;

public class OrdertotalDAO {
	private static final String SELECT_ALL="select * from v_order;";
	
	private static OrdertotalDAO dao = new OrdertotalDAO();
	private DataSource ds;
	
	private OrdertotalDAO() {
		try {
			Context ctx = new InitialContext();   //1 获取JNDI
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/ebp");   //2 从JNDI中找DS
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public static OrdertotalDAO getInstance() {
		return dao;
	}
	
	
	public List<Ordertotal> queryAll() throws Exception {
		Connection connection = null;
        PreparedStatement stmt = null;
        ResultSet results = null;

        List<Ordertotal> list = new ArrayList<Ordertotal>();
        try {
            connection = ds.getConnection();   //step3 从连接池中取出连接            
            stmt = connection.prepareStatement(SELECT_ALL);           
            results = stmt.executeQuery();         
            
            while (results.next()) {
                int oid = results.getInt(1);
                int lid =results.getInt(2);
                String desc=results.getString(3);
                Timestamp commitTime = results.getTimestamp(4);
                double amount=results.getDouble(5);
                int uid = results.getInt(6);
                String telno=results.getString(7);
                Ordertotal ordertotal = new Ordertotal(oid,lid,desc,commitTime,amount,uid,telno);
                list.add(ordertotal);
               
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (results != null) {
                try { results.close(); } catch (SQLException e) {}
            }
            if (stmt != null) {
                try { stmt.close(); } catch (SQLException e) {}
            }
            if (connection != null) {
                try { connection.close(); } catch (SQLException e) {}  //step4 归还连接
            }
        }
       
        return list;
	}
	public List<Ordertotal> select_time(String bdate,String edate ) throws Exception{
		Connection connection = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
       
        List<Ordertotal> list = new ArrayList<Ordertotal>();
        
        try{
        	connection = ds.getConnection();   //step3 从连接池中取出连接            
            stmt = connection.prepareStatement(SELECT_ALL);           
            rs = stmt.executeQuery();    
            
            while (rs.next()) {
            	
            	Timestamp timestamp = rs.getTimestamp(4);
            	Timestamp btime = Timestamp.valueOf(bdate);
            	Timestamp etime = Timestamp.valueOf(edate);
            	
            	long bs = btime.getTime();
            	long es = etime.getTime();
            	long t = timestamp.getTime();
            	System.out.println("asdjkhdajkadsjkh");
            	if(t>=bs && t<=es){ 
            		int oid = rs.getInt(1);
                    int lid =rs.getInt(2);
                    String desc=rs.getString(3);
                    Timestamp commitTime = rs.getTimestamp(4);
                    double amount=rs.getDouble(5);
                    int uid = rs.getInt(6);
                    String telno=rs.getString(7);
            		
                    Ordertotal ordertotal = new Ordertotal(oid,lid,desc,commitTime,amount,uid,telno);
            		list.add(ordertotal);
            		System.out.println("======"+ordertotal.getOid());
            	}
            }

        }catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                try { rs.close(); } catch (SQLException e) {}
            }
            if (stmt != null) {
                try { stmt.close(); } catch (SQLException e) {}
            }
            if (connection != null) {
                try { connection.close(); } catch (SQLException e) {}  //step4 归还连接
            }
        }
       
        return list;
	}
}
