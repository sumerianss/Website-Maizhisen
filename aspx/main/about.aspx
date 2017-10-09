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


	templateBuilder.Append("\r\n<div class=\"business_banner\">\r\n  <div class=\"business_about container_32\">\r\n    <p class=\"tit2\">睿智笃行</p>\r\n    <p> 重塑互联网影响力，建立一体化智能云平台， <br />\r\n      深入挖掘互联网推广、物联网、移动互联网潜力，以达到社会价值最大化。 </p>\r\n  </div>\r\n  <img src=\"/templates/main/images/about_banner.jpg\"> </div>\r\n<!--business_banner-->\r\n<section id=\"about_content\" class=\"container_32\">\r\n  <div class=\"about_left\">\r\n    <h3 class=\"block_h3 \">关于迈智森</h3>\r\n    <p>威海迈智森网络科技有限公司（简称“迈智森科技”）成立于2015年初，是一家技术驱动型互联网科技公司，公司拥有自主知识产权技术，在开发互联网应用、服务及其它技术方向，有着丰富的实战经验，在威海当地业界始终处于领先位置。公司以企业网站建设、企业商城建设、微网站建设、微信开发、B/S软件开发服务为核心业务，专注于技术研发、技术安全领域，为企业建立一体化智能云平台，深入挖掘互联网推广、物联网、移动互联网潜力，以达到企业价值最大化。</p>\r\n    <p>在互联网应用开发方面，公司拥有自主知识产权技术，先后推出了智网、智商城等产品。</p>\r\n    <p>迈智森科技以技术做驱动，有着超过12年的服务经验，服务过超200多家合作客户，使公司成为客户最值得信赖的合作伙伴，同时，迈智森科技与国内众多的IT企业建立了长期的战略合作关系，在业内树立了良好的公司信誉和品牌形象。</p>\r\n  </div>\r\n  <div class=\"about_right\">\r\n    <p>客户服务：0631-5206696</p>\r\n    <p>投诉建议：0631-5206696</p>\r\n    <p>E-MAIL：<a href=\"mailto://sumerianss@outlook.com\" target=\"_blank\"> sumerianss@outlook.com</a></p>\r\n    <p>联系地址：山东省威海市环翠区世昌大道3号海裕城E座306室</p>\r\n    <p>电子地图：<a href=\"");
	templateBuilder.Append(linkurl("map"));

	templateBuilder.Append("\">[查看地图]</a></p>\r\n    <p>公众号：<img src=\"/templates/main/images/qcode.png\" alt=\"迈智森公众号\" /></p>\r\n  </div>\r\n</section>\r\n<section id=\"about_origin\" class=\"container_32\">\r\n  <h3 class=\"block_h3\">迈智森的由来</h3>\r\n  <img src=\"/templates/main/images/about_logo.jpg\">\r\n  <p class=\"top\">迈智森名称源于英文单词“magician”的音译，寓意着开创性、无限性、传奇性。</p>\r\n  <p>中文汉字分别采用了“迈”、“智”，“森”这三个字作为名称，意即“迈向智慧领域的森林”，寄托着公司对未来科技的执着追求。</p>\r\n  <p>企业形象色采用了“橙色”，代表着阳光,活力,明亮、温暖。</p>\r\n</section>\r\n<section id=\"about_founder\" class=\"container_32\">\r\n  <h3 class=\"block_h3\">联合创始人</h3>\r\n  <ul>\r\n    <li class=\"n1\">\r\n      <p class=\"name\">时明明</p>\r\n      <p class=\"content\">2005年计算机系专业毕业，先后服务过多家互联网公司，拥有多年的技术研发与运营管理经验，现为多家企业技术顾问服务。</p>\r\n    </li>\r\n    <li class=\"n2\">\r\n      <p class=\"name\">邱波</p>\r\n      <p class=\"content\">互联网行业从业11年，服务企业近千家，积累了丰富的门户网站运营，新媒体运营，网站建设，网络推广等实战经验。</p>\r\n    </li>\r\n    <li class=\"n3\">\r\n      <p class=\"name\">隋丰竹</p>\r\n      <p class=\"content\">服务企业建站677家，曾服务过核电站、妇联、华菱光电、万丰、威海中粮等大型企业。坚信超前的网络技术加上舒适的客户体验才是一个好的项目。</p>\r\n    </li>\r\n  </ul>\r\n</section>\r\n<section id=\"about_alliance\" class=\"container_32\">\r\n  <h3 class=\"block_h3\">品牌联盟</h3>\r\n  <ul>\r\n    <li><img src=\"/templates/main/img/index_friends1.jpg\" alt=\"百度外卖（威海）\" ></li>\r\n    <li><img src=\"/templates/main/img/index_friends2.jpg\" alt=\"威海一米策划\" ></li>\r\n    <li><img src=\"/templates/main/img/index_friends3.jpg\" alt=\"威海零壹网络\" ></li>\r\n    <li><img src=\"/templates/main/img/index_friends6.jpg\" alt=\"方舟设计\" ></li>\r\n    <li><img src=\"/templates/main/img/index_friends4.jpg\" alt=\"济南标梵互动\" ></li>\r\n    <li><img src=\"/templates/main/img/index_friends5.jpg\" alt=\"淄博创联网络\" ></li>\r\n  </ul>\r\n</section>\r\n<section id=\"about_alliance\" class=\"container_32\">\r\n  <h3 class=\"block_h3\">合作客户</h3>\r\n  <ul>\r\n    ");
	DataTable newsList = get_article_list("case", 0, 11, "status=0 and is_red=1");

	int drlist__loop__id=0;
	foreach(DataRow drlist in newsList.Rows)
	{
		drlist__loop__id++;


	templateBuilder.Append("\r\n    <li><a href=\"");
	templateBuilder.Append(linkurl("case_show",Utils.ObjectToStr(drlist["id"])));

	templateBuilder.Append("\"><img src=\"" + Utils.ObjectToStr(drlist["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(drlist["title"]) + "\" ></a></li>\r\n     ");
	if (drlist__loop__id>=11)
	{

	templateBuilder.Append("\r\n    <li><span><img src=\"/templates/main/img/index_casex.jpg\" alt=\"\" ></span></li>\r\n    ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n  </ul>\r\n</section>\r\n");

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
