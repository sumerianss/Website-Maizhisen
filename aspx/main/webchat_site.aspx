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

	templateBuilder.Append("<!doctype html>\r\n<html lang=\"zh-CN\">\r\n<head>\r\n<meta charset=\"utf-8\">\r\n<link rel=\"icon\" href=\"favicon.ico\">\r\n<meta name=\"author\" content=\"威海迈智森网络科技有限公司\">\r\n<meta content=\"微网站建设,微网站托管,威海迈智森网络\" name=\"keywords\">\r\n<meta content=\"服务内容：微信基础功能、微信推广营销功能、微信电商功能等，以技术作为驱动的我们，更加注重系统安全、稳定、易升级扩展的重要性，我们坚信为客户打造高质量产品能为客户在市场中赢得更高的价值。\" name=\"description\">\r\n<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\r\n<title>微网站建设- 威海迈智森网络科技有限公司</title>\r\n");

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


	templateBuilder.Append("\r\n</head>\r\n\r\n<body class=\"webchat\">\r\n");

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


	templateBuilder.Append("\r\n<div class=\"business_banner\">\r\n  <div class=\"business_about container_32\">\r\n    <p class=\"tit\">微信+网站+营销=微网站</p>\r\n    <p> 我们坚信为客户打造高质量产品 <br />\r\n      为客户在市场中赢得更高的价值 </p>\r\n  </div>\r\n  <img src=\"/templates/main/images/webchat_banner.jpg\"> </div>\r\n<!--business_banner-->\r\n<div id=\"busi_server\">\r\n  <section class=\"container_32\">\r\n    <h3 class=\"busi_block_h3\">服务客户</h3>\r\n    <ul class=\"busi_server_ul\">\r\n      ");
	DataTable newsList = get_article_list("case", 58, 7, "status=0");

	int drlist__loop__id=0;
	foreach(DataRow drlist in newsList.Rows)
	{
		drlist__loop__id++;


	templateBuilder.Append("\r\n      <li><span><a href=\"");
	templateBuilder.Append(linkurl("case_show",Utils.ObjectToStr(drlist["id"])));

	templateBuilder.Append("\"><img src=\"" + Utils.ObjectToStr(drlist["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(drlist["title"]) + "\" ></a></span></li>\r\n      ");
	if (drlist__loop__id>=7)
	{

	templateBuilder.Append("\r\n      <li><span><img src=\"/templates/main/img/index_casex.jpg\" alt=\"\" ></span></li>\r\n      ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n    </ul>\r\n  </section>\r\n</div>\r\n<section id=\"busi_service\" class=\"container_32\">\r\n  <h3 class=\"block_h3\">我们的服务</h3>\r\n  <div class=\"webchat_ourservice\">\r\n    <p>微网站是移动端营销网站，简单来说就是微信+网站+营销=微网站。</p>\r\n    <p>以技术作为驱动的我们，更加注重系统安全、稳定、易升级扩展的重要性，我们坚信为客户打造高质量产品能为客户在市场中赢得更高的价值。</p>\r\n  </div >\r\n</section>\r\n<div class=\"bg_white\">\r\n  <div id=\"webchat_title\" class=\"container_32\">\r\n    <h3 class=\"block_h3\">一、建设内容</h3>\r\n    <ul>\r\n      <li><i class=\"iconfont color_orange\">&#xe63e;</i>\r\n        <h3>微网站基础功能</h3>\r\n        <p>基础手机网站（信息展示&amp;产品展示&amp;信息反馈）和微信基础功能接入（关键词回复、自定义菜单、多客服、图文回复)</p>\r\n      </li>\r\n      <li><i class=\"iconfont color_banana\">&#xe626;</i>\r\n        <h3>微网站推广营销功能</h3>\r\n        <p>包含各种微信端小游戏，如：幸运大转盘、刮刮乐、微信红包、微信摇一摇、分享接力、砸金蛋等等相关小游戏，支持定制开发。</p>\r\n      </li>\r\n      <li><i class=\"iconfont color_pitaya\">&#xe627;</i>\r\n        <h3>微网站电商功能</h3>\r\n        <p>包含如商品中心、会员中心、订单中心、数据统计、支付管理、运费管理等相关电子商务相关功能。</p>\r\n      </li>\r\n    </ul>\r\n  </div>\r\n</div>\r\n<section id=\"webchat_process\" class=\"container_32 green\">\r\n  <h3 class=\"block_h3\">二、建设流程</h3>\r\n  <ul>\r\n    <li><i class=\"iconfont\">&#xe660;</i>\r\n      <h5>前期沟通</h5>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe606;</i>\r\n      <h5>UED设计</h5>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe604;</i>\r\n      <h5>前端制作</h5>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe602;</i>\r\n      <h5>后端开发</h5>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe609;</i>\r\n      <h5>资料上传</h5>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe601;</i>\r\n      <h5>发布上线</h5>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe603;</i>\r\n      <h5>运营维护</h5>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe60a;</i>\r\n      <h5>数据备份</h5>\r\n    </li>\r\n  </ul>\r\n</section>\r\n<h3 class=\"block_h3 container_32\">三、建站优势</h3>\r\n<section id=\"webchat_advantage\" class=\"container_32 green\">\r\n  <div class=\"webchat_process_left\">\r\n    <p>为您打造专业级的专属平台，无需要考虑系统升级和功能扩展问题，对程序与数据拥有安全的控制权。</p>\r\n  </div>\r\n  <ul>\r\n    <li class=\"we_lb\"><i class=\"iconfont\">&#xe645;</i>\r\n      <h5>高端定制开发</h5>\r\n      <p>搭建完全属于自己的微信网站平台，对程序和数据拥有完全的所有权。</p>\r\n    </li>\r\n    <li class=\"we_lb\"><i class=\"iconfont\">&#xe62b;</i>\r\n      <h5>丰富的微信研发经验</h5>\r\n      <p>超过12年的开发经验，5年以上的微信公众号开发经验，使我们更专业。</p>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe62f;</i>\r\n      <h5>标准的运营体系</h5>\r\n      <p>团队成员先后就职于多家互联网企业，拥有着丰富的运营服务经验。</p>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe635;</i>\r\n      <h5>优势的服务</h5>\r\n      <p>为客户提供一对一的7x12小时客服咨询与培训服务。</p>\r\n    </li>\r\n  </ul>\r\n</section>\r\n<div class=\"border_top\">\r\n  <section id=\"webchat_advantage2\" class=\"container_32 green\">\r\n    <h3 class=\"block_h3\">四、售后保障 <span>技术为本，服务先行</span></h3>\r\n    <ul>\r\n      <li><i class=\"iconfont\">&#xe63e;</i>\r\n        <h5>公众号管理维护</h5>\r\n        <p>为客户提供微信公众号基础服务，保障客户信息的安全性与统一性。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe62e;</i>\r\n        <h5>微信支付托管维护</h5>\r\n        <p>为客户微信支付托管服务，保障客户支付平台资金的安全性。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe630;</i>\r\n        <h5>微网站活动宣传页设计</h5>\r\n        <p>为客户定做活动宣传页设计、制作相关服务，满足客户个性化需求。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe60b;</i>\r\n        <h5>CDN加速</h5>\r\n        <p>为客户提供免费CDN加速等服务，保障网站的打开速度。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe617;</i>\r\n        <h5>免费系统升级</h5>\r\n        <p>企业网站不定期进行功能与性能升级更新，保证系统的先进性。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe610;</i>\r\n        <h5>页面打开速度检测</h5>\r\n        <p>定期性的对网站打开速度进行检查，保证了网站的体验与安全。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe60a;</i>\r\n        <h5>数据定期备份</h5>\r\n        <p>定期性的对网站数据进行备份，保证了数据的完整与安全性。</p>\r\n      </li>\r\n      <li ><i class=\"iconfont\">&#xe611;</i>\r\n        <h5>网站安全检查</h5>\r\n        <p>定期性的对网站进行安全检查，防止网站被黑客利用。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe618;</i>\r\n        <h5>域名服务</h5>\r\n        <p>为客户提供域名解析、转让、过户等操作，保障域名管理安全。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe612;</i>\r\n        <h5>空间服务</h5>\r\n        <p>企业网站系统平台不定期会进行相应的功能与性能进行升级更新，保证系统永远先进。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe616;</i>\r\n        <h5>备案服务</h5>\r\n        <p>企业网站系统平台不定期会进行相应的功能与性能进行升级更新，保证系统永远先进。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe61a;</i>\r\n        <h5>资料更新</h5>\r\n        <p>企业网站系统平台不定期会进行相应的功能与性能进行升级更新，保证系统永远先进。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe613;</i>\r\n        <h5>技术支持</h5>\r\n        <p>企业网站系统平台不定期会进行相应的功能与性能进行升级更新，保证系统永远先进。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe60f;</i>\r\n        <h5> 7x12小时客服热线 </h5>\r\n        <p>为客户提供一对一的7x12小时客服咨询与培训服务。</p>\r\n      </li>\r\n    </ul>\r\n  </section>\r\n</div>\r\n");

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
