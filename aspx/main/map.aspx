<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2017-9-23 15:31:34.
		本页面代码由DTcms模板引擎生成于 2017-9-23 15:31:34. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "content";

	templateBuilder.Append("<!doctype html>\r\n<html lang=\"zh-CN\">\r\n<head>\r\n<meta charset=\"utf-8\">\r\n<link rel=\"icon\" href=\"favicon.ico\">\r\n<meta name=\"author\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("\">\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" name=\"keywords\">\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" name=\"description\">\r\n<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("</title>\r\n");

	templateBuilder.Append("<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/TFramework.min.css\" rel=\"stylesheet\" type=\"text/css\">\r\n<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/page.css\" rel=\"stylesheet\" type=\"text/css\">\r\n<script src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery-1.12.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/modernizr.custom.19007.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/pcor3g.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">uaredirect(\"http://m.maizhisen.com\");</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n</head>\r\n\r\n<body>\r\n");

	templateBuilder.Append("<header id=\"header\">\r\n    <div class=\"container_32\">\r\n        <div class=\"side_nav\"> <a href=\"/\" title=\"\" >客户入口</a>|<a href=\"/\" title=\"\" >服务支持</a> </div>\r\n        <h1 class=\"logo\"><a href=\"/\" title=\"\" >威海迈智森网络</a></h1>\r\n        <nav id=\"navigation\" class=\"global_navigation\"> <a href=\"");
	templateBuilder.Append(linkurl("business"));

	templateBuilder.Append("\" title=\"企业网站\" >企业网站</a> <a href=\"");
	templateBuilder.Append(linkurl("webchat_site"));

	templateBuilder.Append("\" title=\"微网站\" >微网站</a> <a href=\"");
	templateBuilder.Append(linkurl("e-commerce"));

	templateBuilder.Append("\" title=\"企业商城\" >企业商城</a> <a href=\"");
	templateBuilder.Append(linkurl("webchat_custom"));

	templateBuilder.Append("\" title=\"微信开发\" >微信开发</a> <a href=\"\" title=\"微信小程序开发\" >微信小程序开发</a> <a href=\"");
	templateBuilder.Append(linkurl("software_custom"));

	templateBuilder.Append("\" title=\"B/S软件定制开发\" >B/S软件定制开发</a> </nav>\r\n    </div>\r\n</header>");


	templateBuilder.Append("\r\n<!--引用百度地图API-->\r\n    <style type=\"text/css\">\r\n#index_link{ margin-top:0;}\r\n    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}\r\n    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}\r\n</style>\r\n    <script type=\"text/javascript\" src=\"http://api.map.baidu.com/api?key=GCeaUZqsceEpG6eUAic2uGTwpc2udlWy&v=1.1&services=true\"></");
	templateBuilder.Append("script> \r\n    <!--百度地图容器-->\r\n    <div style=\"width:100%;height:800px;margin:0 auto;\" id=\"dituContent\"></div>\r\n    <script type=\"text/javascript\">\r\n    //创建和初始化地图函数：\r\n    function initMap(){\r\n        createMap();//创建地图\r\n        setMapEvent();//设置地图事件\r\n        addMapControl();//向地图添加控件\r\n        addMarker();//向地图中添加marker\r\n		\r\n    }\r\n    \r\n    //创建地图函数：\r\n    function createMap(){\r\n        var map = new BMap.Map(\"dituContent\");//在百度地图容器中创建一个地图\r\n        var point = new BMap.Point(122.132228,37.504701);//定义一个中心点坐标\r\n        map.centerAndZoom(point,18);//设定地图的中心点和坐标并将地图显示在地图容器中\r\n        window.map = map;//将map变量存储在全局\r\n    }\r\n    \r\n    //地图事件设置函数：\r\n    function setMapEvent(){\r\n        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)\r\n        map.disableScrollWheelZoom();//禁用地图滚轮放大缩小，默认禁用(可不写)\r\n        map.disableDoubleClickZoom();//禁用鼠标双击放大\r\n        map.disableKeyboard();//禁用键盘上下左右键移动地图，默认禁用(可不写)\r\n    }\r\n    \r\n    //地图控件添加函数：\r\n    function addMapControl(){\r\n        //向地图中添加缩放控件\r\n	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});\r\n	map.addControl(ctrl_nav);\r\n        //向地图中添加缩略图控件\r\n	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:0});\r\n	map.addControl(ctrl_ove);\r\n        //向地图中添加比例尺控件\r\n	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});\r\n	map.addControl(ctrl_sca);\r\n    }\r\n    \r\n    //标注点数组\r\n    var markerArr = [{title:\"威海迈智森网络科技有限公司\",content:\"山东省威海市环翠区世昌大道3号海裕城E座306室 \",point:\"122.132228|37.504701\",isOpen:0,icon:{w:23,h:25,l:0,t:21,x:9,lb:12}}];\r\n    //创建marker\r\n    function addMarker(){\r\n        for(var i=0;i<markerArr.length;i++){\r\n            var json = markerArr[i];\r\n            var p0 = json.point.split(\"|\")[0];\r\n            var p1 = json.point.split(\"|\")[1];\r\n            var point = new BMap.Point(p0,p1);\r\n			var iconImg = createIcon(json.icon);\r\n            var marker = new BMap.Marker(point,{icon:iconImg});\r\n			var iw = createInfoWindow(i);\r\n			var label = new BMap.Label(json.title,{\"offset\":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});\r\n			marker.setLabel(label);\r\n            map.addOverlay(marker);\r\n            label.setStyle({\r\n                        borderColor:\"#808080\",\r\n                        color:\"#333\",\r\n                        cursor:\"pointer\"\r\n            });\r\n			\r\n			(function(){\r\n				var index = i;\r\n				var _iw = createInfoWindow(i);\r\n				var _marker = marker;\r\n				_marker.addEventListener(\"click\",function(){\r\n				    this.openInfoWindow(_iw);\r\n			    });\r\n			    _iw.addEventListener(\"open\",function(){\r\n				    _marker.getLabel().hide();\r\n			    })\r\n			    _iw.addEventListener(\"close\",function(){\r\n				    _marker.getLabel().show();\r\n			    })\r\n				label.addEventListener(\"click\",function(){\r\n				    _marker.openInfoWindow(_iw);\r\n			    })\r\n				if(!!json.isOpen){\r\n					label.hide();\r\n					_marker.openInfoWindow(_iw);\r\n				}\r\n			})()\r\n        }\r\n    }\r\n    //创建InfoWindow\r\n    function createInfoWindow(i){\r\n        var json = markerArr[i];\r\n        var iw = new BMap.InfoWindow(\"<b class='iw_poi_title' title='\" + json.title + \"'>\" + json.title + \"</b><div class='iw_poi_content'>\"+json.content+\"</div>\");\r\n        return iw;\r\n    }\r\n    //创建一个Icon\r\n    function createIcon(json){\r\n        var icon = new BMap.Icon(\"/templates/main/images/us_mk_icon.png\", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})\r\n        return icon;\r\n    }\r\n    \r\n    initMap();//创建和初始化地图\r\n</");
	templateBuilder.Append("script> \r\n");

	templateBuilder.Append("<div id=\"index_link\">\r\n    <div class=\"container_32\">\r\n        <div class=\"index_link_server\">\r\n            <div class=\"index_link_server_text\">12小时全国服务热线</div>\r\n            <div class=\"index_link_server_tel\">0631-5206696</div>\r\n            <span class=\"index_link_server_button\"><a target=\"_blank\" href=\"tencent://message/?uin=116094319&Site=www.maizhisen.com&Menu=yes\">12小时在线客服</a></span>\r\n        </div>\r\n        <div class=\"index_link_block\">\r\n            <h4>关于迈智森</h4>\r\n            <ul>\r\n                <li><a href=\"");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("\" title=\"\" >公司介绍</a></li>\r\n                <li><a href=\"");
	templateBuilder.Append(linkurl("news_list",56));

	templateBuilder.Append("\" title=\"\" >新闻公告</a></li>\r\n                <li><a href=\"");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("\" title=\"\" >服务客户</a></li>\r\n            </ul>\r\n        </div>\r\n        <div class=\"index_link_block\">\r\n            <h4>业务服务</h4>\r\n            <ul>\r\n                <li><a href=\"");
	templateBuilder.Append(linkurl("business"));

	templateBuilder.Append("\" title=\"\" >企业网站</a></li>\r\n                <li><a href=\"");
	templateBuilder.Append(linkurl("webchat_site"));

	templateBuilder.Append("\" title=\"\" >微网站</a></li>\r\n                <li><a href=\"");
	templateBuilder.Append(linkurl("e-commerce"));

	templateBuilder.Append("\" title=\"\" >企业商城</a></li>\r\n                <li><a href=\"");
	templateBuilder.Append(linkurl("software_custom"));

	templateBuilder.Append("\" title=\"\" >B/S软件定制开发</a></li>\r\n            </ul>\r\n        </div>\r\n        <div class=\"index_link_block\">\r\n            <h4>自主技术研发</h4>\r\n            <ul>\r\n                <li><a href=\"");
	templateBuilder.Append(linkurl("business"));

	templateBuilder.Append("\" title=\"\" >企业网站管理系统</a></li>\r\n                <li><a href=\"");
	templateBuilder.Append(linkurl("business"));

	templateBuilder.Append("\" title=\"\" >微网站管理系统</a></li>\r\n                <li><a href=\"");
	templateBuilder.Append(linkurl("business"));

	templateBuilder.Append("\" title=\"\" >企业商城管理系统</a></li>\r\n            </ul>\r\n        </div>\r\n        <!--<div class=\"index_link_block\">\r\n            <h4>联系我们</h4>\r\n            <ul>\r\n                <li><a href=\"/\" title=\"\" >联系方式</a></li>\r\n                <li><a href=\"/\" title=\"\" >在线地图</a></li>\r\n            </ul>\r\n        </div>-->\r\n    </div>\r\n</div>\r\n<footer id=\"footer\">\r\n    <div class=\"container_32\"> <span class=\"footer_side_nav\"><a href=\"");
	templateBuilder.Append(linkurl("law"));

	templateBuilder.Append("\" title=\"\" >法律声明</a>|<a href=\"");
	templateBuilder.Append(linkurl("privacy"));

	templateBuilder.Append("\" title=\"\" >隐私保护</a>|<a href=\"");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("\" title=\"\" >联系我们</a></span> <span>版权所有 © 威海迈智森网络科技有限公司 2014-2017 保留一切权利  鲁ICP备15027609号</span></div>\r\n</footer>\r\n<script>\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement(\"script\");\r\n  hm.src = \"https://hm.baidu.com/hm.js?cb84d62d88ebe184a35b3b3e4ee7da99\";\r\n  var s = document.getElementsByTagName(\"script\")[0]; \r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n</");
	templateBuilder.Append("script>\r\n<script>\r\n(function(){\r\n    var bp = document.createElement('script');\r\n    var curProtocol = window.location.protocol.split(':')[0];\r\n    if (curProtocol === 'https'){\r\n   bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';\r\n  }\r\n  else{\r\n  bp.src = 'http://push.zhanzhang.baidu.com/push.js';\r\n  }\r\n    var s = document.getElementsByTagName(\"script\")[0];\r\n    s.parentNode.insertBefore(bp, s);\r\n})();\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
