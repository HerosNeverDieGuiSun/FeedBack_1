  <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head><%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>电子商务平台--管理平台</title>
    <link rel="SHORTCUT ICON" href="images/icon.ico" />
    <link rel="stylesheet" href="css/admin.css">
  </head>
  <body style="background-image:url(images/bg.jpg)">
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
            <li><a class="active" href="admin.html">主页</a></li>
            <li><a href="票项列表.html">票项列表</a></li>
            <li><a href="用户管理.html">用户列表</a></li>
            <li><a href="./OrderServlet">订单列表</a></li>
          </ul>
        </div>
      </nav>
    </header>
    <hr id="split">
    <div class="slideshow-container">
      <div class="mySlides">
        <a href="https://p.damai.cn/wow/pc/act/bushuqixunyan?spm=a2o6e.home.0.0.591b48d3e2Y0LT"><img src="https://pimg.dmcdn.cn/perform/damai/home/201806/20180606174416737.jpg" alt="bushuqi" width="1100px" height="400px"></a>
      </div>

      <div class="mySlides">
        <a href="https://piao.damai.cn/148660.html?spm=a2o6e.home.0.0.591b48d3e2Y0LT"><img src="https://pimg.dmcdn.cn/perform/damai/home/201806/2018060615195036.jpg" alt="wuyuetian" width="1100px" height="400px"> </a>
      </div>

      <div class="mySlides">
        <a href="https://piao.damai.cn/153001.html?spm=a2o6e.home.0.0.591b48d3UcfgR3"><img src="https://pimg.dmcdn.cn/perform/damai/home/201806/20180619104932874.jpg" alt="nvpai" width="1100px" height="400px"> </a>
      </div>

      <div class="mySlides">
        <a href="https://p.damai.cn/wow/act/act/csc?spm=a2o6e.home.0.0.591b48d3UcfgR3"><img src="https://pimg.dmcdn.cn/perform/damai/home/201806/20180619094844421.jpg" alt="zuqiu" width="1100px" height="400px"></a>
      </div>
    </div>
    <br>

    <script type="text/javascript">
      var slideIndex = 0;
      showSlides();

      function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {
          slideIndex = 1
        }

        slides[slideIndex - 1].style.display = "block";
        setTimeout(showSlides, 1500); // 切换时间为 2 秒
      }
    </script>

  </body>
</html>
    
