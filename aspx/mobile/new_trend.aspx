<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_list" ValidateRequest="false" %>
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
	const string channel = "trend";
	const int pagesize = 50;

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


	templateBuilder.Append(" \r\n  <div class=\"public_header_bottom1\"></div>\r\n  <div class=\"new_trend_b\">\r\n     <div class=\"public_title\">\r\n      <h3>新趋势</h3>\r\n      <h4>New trend</h4>\r\n    </div>\r\n    \r\n       ");
	DataTable newsList = get_article_list(channel, category_id, pagesize, page, "status=0", out totalcount, out pagelist, "new_trend", category_id, "__id__");

	templateBuilder.Append("<!--取得一个分页DataTable-->\r\n      ");
	foreach(DataRow dr in newsList.Rows)
	{

	templateBuilder.Append("\r\n    <div class=\"new_trend_group\">\r\n    <div class=\"new_trend_left\">\r\n      <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\">\r\n      <p>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(dr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("</p>\r\n    </div>\r\n    <div class=\"new_trend_right\">\r\n       <div class=\"netrri_gr\">\r\n         <div class=\"title\">");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(dr["title"]),20));

	templateBuilder.Append("</div>\r\n         <div>");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(dr["zhaiyao"]),50));

	templateBuilder.Append("  <a href=\"");
	templateBuilder.Append(linkurl("new_trend_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\"> 查看全文></a></div>\r\n       </div>\r\n    </div>\r\n    </div><!--new_trend_group-->\r\n     ");
	}	//end for if

	templateBuilder.Append("\r\n    \r\n  </div>\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
