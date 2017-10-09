<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.index" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2017-8-10 11:25:52.
		本页面代码由DTcms模板引擎生成于 2017-8-10 11:25:52. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!doctype html>\r\n<html>\r\n\r\n<head>\r\n  <meta charset=\"utf-8\">\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <title>迈智森网络科技</title>\r\n  <meta name=\"viewport\" content=\"initial-scale=1, maximum-scale=1\">\r\n  <link rel=\"shortcut icon\" href=\"/favicon.ico\">\r\n  <meta name=\"author\" content=\"迈智森网络科技\">\r\n  <meta name=\"apple-mobile-web-app-capable\" content=\"yes\">\r\n  <meta name=\"apple-mobile-web-app-status-bar-style\" content=\"black\">\r\n");

	templateBuilder.Append("<link href=\"");
	templateBuilder.Append("/templates/mobile");
	templateBuilder.Append("/css/page.css\" rel=\"stylesheet\" type=\"text/css\">\r\n<script src=\"");
	templateBuilder.Append("/templates/mobile");
	templateBuilder.Append("/js/jquery-1.12.2.min.js\"></");
	templateBuilder.Append("script>\r\n<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append("/templates/mobile");
	templateBuilder.Append("/css/cooker.css\">\r\n<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append("/templates/mobile");
	templateBuilder.Append("/css/docs.css\">\r\n<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append("/templates/mobile");
	templateBuilder.Append("/css/drawer.min.css\">");


	templateBuilder.Append(" \r\n</head>\r\n<body class=\"drawer drawer-right\">\r\n");

	templateBuilder.Append("  <div class=\"in_header\">\r\n    <h1><a href=\"/\"><img src=\"/templates/mobile/images/logo.png\" /></a></h1>\r\n    <div class=\"drawer-toggle drawer-hamberger\"><span></span></div>\r\n  </div>  \r\n  <!--in_header-->");



	templateBuilder.Append("<!-- 代码 开始 -->\r\n<div class=\"drawer-main drawer-default\">\r\n  <nav class=\"drawer-nav\" role=\"navigation\">\r\n    <div class=\"drawer-brand\">\r\n    </div>\r\n    <p class=\"drawer-nav-title\">菜单</p>\r\n    <ul class=\"drawer-nav-list\">\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("my_service","service1"));

	templateBuilder.Append("\">服务项目</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("my_case"));

	templateBuilder.Append("\">我们的客户</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("new_trend",52));

	templateBuilder.Append("\">新趋势</a></li>\r\n    </ul>\r\n  </nav>\r\n</div>\r\n<script src=\"");
	templateBuilder.Append("/templates/mobile");
	templateBuilder.Append("/js/iscroll.js\"></");
	templateBuilder.Append("script>\r\n<script src=\"");
	templateBuilder.Append("/templates/mobile");
	templateBuilder.Append("/js/jquery.drawer.min.js\"></");
	templateBuilder.Append("script>\r\n<script>\r\n	$(document).ready(function(){\r\n	$('.drawer').drawer();\r\n	$('.js-trigger').click(function(){\r\n	  $('.drawer').drawer(\"open\");\r\n	});\r\n	});\r\n</");
	templateBuilder.Append("script> \r\n<!--此代码是手机端代码与PC站不是一个\r\n--><script>\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement(\"script\");\r\n  hm.src = \"https://hm.baidu.com/hm.js?17c88a4bd1dfd46788df644659a345b2\";\r\n  var s = document.getElementsByTagName(\"script\")[0]; \r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append(" \r\n<div class=\"in_bann\" id=\"banner\">\r\n<section class=\"banner_body\">\r\n<div class=\"banner_h2 line_font\">睿智笃行</div>\r\n<h3 class=\"banner_h3\">拥有自主知识产权技术<br />创造客户可持续价值</h3>\r\n<div class=\"blank_b\"></div>\r\n</section>\r\n</div><!--in_bann-->\r\n<div class=\"in_service\">\r\n    <div class=\"in_title\">\r\n      <h3>服务项目</h3>\r\n      <h4>Service project</h4>\r\n    </div>\r\n <div class=\"in_service_pr u-1of4\">\r\n      <div class=\"insepr\"><a href=\"");
	templateBuilder.Append(linkurl("my_service","service1"));

	templateBuilder.Append("\">企业网站</a></div>\r\n      <div class=\"insepr\"><a href=\"");
	templateBuilder.Append(linkurl("my_service","service2"));

	templateBuilder.Append("\">微网站</a></div>\r\n      <div class=\"insepr\"><a href=\"");
	templateBuilder.Append(linkurl("my_service","service3"));

	templateBuilder.Append("\">企业商城</a></div>\r\n      <div class=\"insepr\"><a href=\"");
	templateBuilder.Append(linkurl("my_service","service4"));

	templateBuilder.Append("\">微信开发</a></div>\r\n    </div>\r\n    <div class=\"in_service_pr2 u-1of3\">\r\n      <div class=\"insepr2\"><a href=\"");
	templateBuilder.Append(linkurl("my_service","service5"));

	templateBuilder.Append("\">APP开发</a></div>\r\n      <div class=\"insepr2\"><a href=\"");
	templateBuilder.Append(linkurl("my_service","service6"));

	templateBuilder.Append("\">微信小程序开发</a></div>\r\n    </div>\r\n    <div class=\"in_service_pr2\">\r\n      <div class=\"insepr3\"><a href=\"");
	templateBuilder.Append(linkurl("my_service","service7"));

	templateBuilder.Append("\">B/S软件定制开发</a></div>\r\n    </div>\r\n</div>\r\n<div class=\"in_case\">\r\n   <div class=\"in_title\">\r\n      <h3>服务客户</h3>\r\n      <h4>Customer service </h4>\r\n    </div>\r\n    <div class=\"in_case_list\">\r\n       <div class=\"incali\"><img src=\"/templates/mobile/img/index_case1.jpg\"></div>\r\n       <div class=\"incali\"><img src=\"/templates/mobile/img/index_case2.jpg\"></div>\r\n       <div class=\"incali\"><img src=\"/templates/mobile/img/index_case25.jpg\"></div>\r\n       <div class=\"incali\"><img src=\"/templates/mobile/img/index_case4.jpg\"></div>\r\n       <div class=\"incali\"><img src=\"/templates/mobile/img/index_case5.jpg\"></div>\r\n       <div class=\"incali\"><img src=\"/templates/mobile/img/index_case6.jpg\"></div>\r\n       <div class=\"incali\"><img src=\"/templates/mobile/img/index_case14.jpg\"></div>\r\n       <div class=\"incali\"><img src=\"/templates/mobile/img/index_case21.jpg\"></div>\r\n       <div class=\"incali\"><img src=\"/templates/mobile/img/index_case22.jpg\"></div>\r\n       <div class=\"incali\"><img src=\"/templates/mobile/img/index_case23.jpg\"></div>\r\n       <div class=\"incali\"><img src=\"/templates/mobile/img/index_case24.jpg\"></div>\r\n       <div class=\"incali\"><img src=\"/templates/mobile/img/index_case8.jpg\"></div>\r\n    </div>\r\n</div>\r\n<script type='text/javascript' src='/templates/mobile/js/jquery.particleground.min.js'></");
	templateBuilder.Append("script> \r\n<script type=\"text/javascript\">\r\n$(document).ready(function() {\r\n  $('#banner').particleground({\r\n    dotColor: '#ff762a',\r\n    lineColor: '#ff762a',\r\n	density:7000\r\n  });\r\n});\r\n</");
	templateBuilder.Append("script>\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
