<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article" ValidateRequest="false" %>
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
	const string channel = "myproducts";

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


	templateBuilder.Append(" \r\n  <div class=\"public_header_bottom1\"></div>\r\n  <div class=\"my_service_b\">\r\n     <div class=\"public_title\">\r\n      <h3>我们的客户</h3>\r\n      <h4>Our customers</h4>\r\n    </div>\r\n    <div class=\"case_slogin\">\r\n      <span>为客户打造高质量产品<br />在市场中赢得更高的价值</span>\r\n    </div>\r\n    <div class=\"case_list\">\r\n\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case1x.jpg\" alt=\" 金猴\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case2x.jpg\" alt=\"威海卫\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case4x.jpg\" alt=\"望海集团\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case21x.jpg\" alt=\"鲁北集团\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case22x.jpg\" alt=\"外太空机器人\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case23x.jpg\" alt=\"海飞游艇\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case24x.jpg\" alt=\"威海扶贫办\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case25x.jpg\" alt=\"威海城投\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case5x.jpg\" alt=\"联桥国际\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case6x.jpg\" alt=\"城建集团\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case7x.jpg\" alt=\"盛世集团\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case8x.jpg\" alt=\"北大培文\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case9x.jpg\" alt=\"博锐化机\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case10x.jpg\" alt=\"山海礼品城\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case11x.jpg\" alt=\"美居装饰\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case12x.jpg\" alt=\"泰迪轮胎\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case13x.jpg\" alt=\"乐溯\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case14x.jpg\" alt=\"大健康中国\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case15x.jpg\" alt=\"铭实电商\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case16x.jpg\" alt=\"鼎盛红木\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case17x.jpg\" alt=\"晟唐奕丰\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case18x.jpg\" alt=\"金佰特\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case20x.jpg\" alt=\"才富人才服务\"></div>\r\n       <div class=\"cali\"><img src=\"/templates/mobile/img/index_case3x.jpg\" alt=\"青岛木材协会\"></div>\r\n    \r\n    </div>\r\n     <div class=\"calimore\">... ...</div>\r\n <div class=\"bottom3\"></div>\r\n  </div>\r\n\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
