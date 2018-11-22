<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%-- <%@ page import="com.hgd.ebp.domain.Orders" %>
<%@ page import="com.hgd.ebp.domain.OrderList" %> --%>
<%@ page import="com.hgd.ebp.domain.Ordertotal" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  
<html lang="en" dir="ltr">
	<head>
		<meta charset="utf-8">
		<title>订单管理</title>
		<link rel="SHORTCUT ICON" href="images/icon.ico" />
		<link rel="stylesheet" href="css/dingdan.css">
	</head>
		<body style="background-image:url(images/bg.jpg)">
			<!-- 项目顶部------------------------------------------------ -->
			<div class="top">
			  <p id="log"><a href="adminlog.html">退出</a></p>
			</div>
			<br>

			<div class="title">
			  <h1 vertical-align:bottom> <a href="index.html"><img  src="images/logo.png" width="78" height="78" align="center" /></a> 电子商务平台--管理平台</h1>
			  <input type="text" name="search" value="" id="tsearch">
			  <input type="submit" name="ssearch" value="搜索" id="ssearch">
			</div>
			<br><br>

			<header>
			  <nav>
				<div class="menu">
				  <ul>
					<li><a href="admin.html">主页</a></li>
					<li><a href="票项列表.html" >票项列表</a></li>
					<li><a href="用户管理.html"  >用户列表</a></li>
					<li><a href="订单管理.html" class="active">订单列表</a></li>
				  </ul>
				</div>
			  </nav>
			</header>
			<!-- 项目顶部------------------------------------------------ -->
			<hr size="10"  color="#FF1493"> </hl>
			&ensp;&ensp;&ensp;

			 <form align="center" action="./OrderServlet" method="post">
				起始日期
				<input  type="date" name="bdate"/>
				&ensp;&ensp;&ensp;
				终止日期
				<input  type="date" name="edate"/>
				&ensp;&ensp;&ensp;
				<input type="submit"  name="查询" value="查询" class="ann_1"/>
				<br>
				订单号
				<input type="text"  name="name" >
				&ensp;&ensp;&ensp;
				用户名/姓名
				<input type="text"  name="id" >
				&ensp;&ensp;&ensp;
				身份证号
				<input type="text"  name="tel" >
				&ensp;&ensp;&ensp;
				<input type="submit"  name="查询" value="查询" class="ann_1"/>

			</form>
			&ensp;&ensp;&ensp;
			<center>
				<table border="1"  width="1500" align="center"  >
					<tr>
						<th align="center" height="30" class="table_1">订单编号</th>
						<th align="center" class="table_1">订单项目号</th>
						<th align="center" class="table_1">订单内容</th>
						<th align="center" width="8%" class="table_1">成交时间</th>
						<th align="center" width="10%" class="table_1">价格</th>
						<th align="center" width="10%" class="table_1">用户编号</th>
						<th align="center" class="table_1">电话</th>
						
					</tr>
					<%
        				 List<Ordertotal> list = (List<Ordertotal>)request.getAttribute("OrderServlet");
 
		           		 for (Ordertotal o : list) {
		       		 %>
					<tr>
						<td align="center" height="30" class="table_2"><%= o.getOid() %></td>
						<td align="center" height="30" class="table_2"><%= o.getLid() %></td>
						<td align="center" height="30" class="table_2"><%= o.getDesc() %></td>
						<td align="center" height="30" class="table_2"><%= o.getCommitTime() %></td>
						<td align="center" height="30" class="table_2"><%= o.getAmount() %></td>
						<td align="center" height="30" class="table_2"><%= o.getUid() %></td>
						<td align="center" height="30" class="table_2"><%= o.getTelno() %></td>
						

					</tr>
					<%
						}
					 %>
					<!-- <tr>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						

					</tr>
					<tr>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						
					</tr>
					<tr>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						
					</tr>
					<tr>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						
					</tr>
					<tr>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						
					</tr>
					<tr>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						<td align="center" height="30" class="table_2"></td>
						
					</tr>
					<tr>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
						<td align="center" height="30" class="table_3"></td>
					
					</tr> -->
					
				</table>
			</center>






		</body>


</html>
