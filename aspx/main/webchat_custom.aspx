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


	templateBuilder.Append("\r\n</head>\r\n<body class=\"webchatcustom\">\r\n");

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


	templateBuilder.Append("\r\n<div class=\"business_banner\">\r\n    <div class=\"business_about container_32\">\r\n        <p class=\"tit\">移动互联网微时代</p>\r\n        <p> 帮助企业开发微信相关服务 <br />\r\n            协助企业进行微信营销 </p>\r\n    </div>\r\n    <img src=\"/templates/main/images/custom_banner.jpg\"> </div>\r\n<!--business_banner-->\r\n<div id=\"busi_server\">\r\n    <section class=\"container_32\">\r\n        <h3 class=\"busi_block_h3\">服务客户</h3>\r\n        <ul class=\"busi_server_ul\">\r\n           ");
	DataTable newsList = get_article_list("case", 60, 7, "status=0");

	int drlist__loop__id=0;
	foreach(DataRow drlist in newsList.Rows)
	{
		drlist__loop__id++;


	templateBuilder.Append("\r\n      <li><span><a href=\"");
	templateBuilder.Append(linkurl("case_show",Utils.ObjectToStr(drlist["id"])));

	templateBuilder.Append("\"><img src=\"" + Utils.ObjectToStr(drlist["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(drlist["title"]) + "\" ></a></span></li>\r\n      ");
	if (drlist__loop__id>=7)
	{

	templateBuilder.Append("\r\n    <li><span><img src=\"/templates/main/img/index_casex.jpg\" alt=\"\" ></span></li>\r\n    ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n    </section>\r\n</div>\r\n<section id=\"busi_service\" class=\"container_32\">\r\n    <h3 class=\"block_h3\">我们的服务</h3>\r\n    <div class=\"custom_ourservice\">\r\n        <p>从企业需求出发，帮助企业开发微信相关服务,</p>\r\n        <p>协助企业进行微信营销，推动企业迈进移动互联网时代。</p>\r\n    </div >\r\n</section>\r\n<div class=\"bg_white\">\r\n    <section id=\"custom_service\" class=\"container_32\">\r\n        <h3 class=\"block_h3\">一、微信开发服务类型</h3>\r\n        <ul>\r\n            <li> <span> <i class=\"iconfont color_orange\">&#xe6fc;</i>\r\n                <h3>微信官网定制开发</h3>\r\n                <p>微信官网结合移动互联网技术与企业信息化建设，实现企业品牌展现、互动营销、商业交易与服务功能。</p>\r\n                <p class=\"line\">功能模块：个性门户、幻灯片、分类管理、留言反馈、活动管理、系统设置。</p>\r\n                </span> </li>\r\n            <li><span><i class=\"iconfont color_banana\">&#xe639;</i>\r\n                <h3>微信餐饮定制开发</h3>\r\n                <p>微信餐饮简化了传统行业的点餐流程，实现了点餐的标准化、自动化。</p>\r\n                <p class=\"line\">功能模块：在线预订、在线支付、LBS智能定位、在线点菜、订单自动确认、菜品管理、订单管理。</p>\r\n                </span> </li>\r\n            <li><span><i class=\"iconfont color_pitaya\">&#xe63b;</i>\r\n                <h3>微信会员定制开发</h3>\r\n                <p>微信会员关系链是基于微信的熟人关系链，而微信作为一种私密的、熟人间沟通工具，其传播更加精准。</p>\r\n                <p class=\"line\">功能模块：会员卡设计、会员等级、自定义会员卡号、会员卡号二维码、积分制度、在线充值。</p>\r\n                </span> </li>\r\n            <li><span><i class=\"iconfont color_green\">&#xe63a;</i>\r\n                <h3>微信生活定制开发</h3>\r\n                <p>微信生活通过微信平台为用户提供全方位生活服务的移动网站，就能挑选到自己喜欢的产品和服务。</p>\r\n                <p class=\"line\">功能模块：酒店预订、在线点餐、话费充值、附近活动、运势占卜。</p>\r\n                </span> </li>\r\n            <li><span><i class=\"iconfont color_greenblue\">&#xe6fd;</i>\r\n                <h3>微信团购定制开发</h3>\r\n                <p>微信团购借助强大的微信平台的高定向性，让每一次团购都能精准的投放到用户手中，提高用户品牌。</p>\r\n                <p class=\"line\">功能模块：团购管理、订单管理、团购券管理、退款管理、订单管理。</p>\r\n                </span> </li>\r\n            <li><span><i class=\"iconfont color_blue\">&#xe63c;</i>\r\n                <h3>微信活动定制开发</h3>\r\n                <p>微信活动通过对互动流程、环节的设计，抓住了微信娱乐性强的本质，实现了对已有客户进行再营销。</p>\r\n                <p class=\"line\">功能模块：优惠券、刮刮乐、大转盘、砸金蛋、大转盘。</p>\r\n                </span> </li>\r\n        </ul>\r\n    </section>\r\n</div>\r\n<section id=\"custom_process\" class=\"container_32\">\r\n    <h3 class=\"block_h3\">二、微信开发流程</h3>\r\n    <ul>\r\n        <li><i class=\"iconfont\">&#xe660;</i>\r\n            <h5>前期沟通</h5>\r\n        </li>\r\n        <li><i class=\"iconfont\">&#xe67d;</i>\r\n            <h5>需求分析</h5>\r\n        </li>\r\n        <li><i class=\"iconfont\">&#xe638;</i>\r\n            <h5>技术方案</h5>\r\n        </li>\r\n        <li><i class=\"iconfont\">&#xe636;</i>\r\n            <h5>页面设计</h5>\r\n        </li>\r\n        <li ><i class=\"iconfont\">&#xe604;</i>\r\n            <h5>前端制作</h5>\r\n        </li>\r\n        <li><i class=\"iconfont\">&#xe602;</i>\r\n            <h5>后端开发</h5>\r\n        </li>\r\n        <li><i class=\"iconfont\">&#xe609;</i>\r\n            <h5>资料上传</h5>\r\n        </li>\r\n        <li><i class=\"iconfont\">&#xe637;</i>\r\n            <h5>软件测试</h5>\r\n        </li>\r\n        <li><i class=\"iconfont\">&#xe601;</i>\r\n            <h5>发布上线</h5>\r\n        </li>\r\n        <li><i class=\"iconfont\">&#xe603;</i>\r\n            <h5>运营维护</h5>\r\n        </li>\r\n        <li><i class=\"iconfont\">&#xe60a;</i>\r\n            <h5>数据备份</h5>\r\n        </li>\r\n    </ul>\r\n    <h3 class=\"block_h3\">三、微信开发使用技术</h3>\r\n    <ul>\r\n        <li><i class=\"iconfont\">&#xe622;</i>\r\n            <h5>.NET(C#)</h5>\r\n        </li>\r\n        <li><i class=\"iconfont\">&#xe60a;</i>\r\n            <h5>MSSQL</h5>\r\n        </li>\r\n        <li><i class=\"iconfont\">&#xe65b;</i>\r\n            <h5>SVN</h5>\r\n        </li>\r\n        <li><i class=\"iconfont\">&#xe605;</i>\r\n            <h5>HTML5</h5>\r\n        </li>\r\n        <li><i class=\"iconfont\">&#xe891;</i>\r\n            <h5>CSS3</h5>\r\n        </li>\r\n        <li><i class=\"iconfont\">&#xe913;</i>\r\n            <h5>javascript</h5>\r\n        </li>\r\n        <li><i class=\"iconfont\">&#xe63e;</i>\r\n            <h5>微信接口</h5>\r\n        </li>\r\n        <li><i class=\"iconfont\"></i>\r\n            <h5>…</h5>\r\n        </li>\r\n    </ul>\r\n</section>\r\n<div class=\"border_top\">\r\n    <section id=\"custom_guarantee\" class=\"container_32\">\r\n        <h3 class=\"block_h3\">四、售后保障</h3>\r\n        <ul>\r\n            <li><i class=\"iconfont\">&#xe63e;</i>\r\n                <h5>公众号管理维护</h5>\r\n                <p>为客户提供微信公众号基础服务，保障客户信息的安全性与统一性。</p>\r\n            </li>\r\n            <li><i class=\"iconfont\">&#xe62e;</i>\r\n                <h5>微信支付托管维护</h5>\r\n                <p>为客户微信支付托管服务，保障客户支付平台资金的安全性。</p>\r\n            </li>\r\n            <li><i class=\"iconfont\">&#xe630;</i>\r\n                <h5>活动宣传页/促销海报设计</h5>\r\n                <p>提供为客户定做活动宣传页设计、制作相关服务，满足客户个性化需求。</p>\r\n            </li>\r\n            <li><i class=\"iconfont\">&#xe610;</i>\r\n                <h5>页面打开速度检测</h5>\r\n                <p>定期性的对网站打开速度进行检查，保证了网站的体验与安全。</p>\r\n            </li>\r\n            <li><i class=\"iconfont\">&#xe60a;</i>\r\n                <h5>数据定期备份</h5>\r\n                <p>定期性的对网站数据进行备份，保证了数据的完整与安全性。</p>\r\n            </li>\r\n            <li><i class=\"iconfont\">&#xe611;</i>\r\n                <h5>网站安全检查</h5>\r\n                <p>定期性的对网站进行安全检查，防止网站被黑客利用。</p>\r\n            </li>\r\n            <li><i class=\"iconfont\">&#xe618;</i>\r\n                <h5>域名服务</h5>\r\n                <p>为客户提供域名解析、转让、过户等操作，保障域名管理安全。</p>\r\n            </li>\r\n            <li><i class=\"iconfont\">&#xe60b;</i>\r\n                <h5>CDN加速</h5>\r\n                <p>为客户提供免费CDN加速等服务，保障网站的打开速度。</p>\r\n            </li>\r\n            <li><i class=\"iconfont\">&#xe612;</i>\r\n                <h5>空间服务</h5>\r\n                <p>企业网站系统平台不定期会进行相应的功能与性能进行升级更新，保证系统永远先进。</p>\r\n            </li>\r\n            <li><i class=\"iconfont\">&#xe616;</i>\r\n                <h5>备案服务</h5>\r\n                <p>企业网站系统平台不定期会进行相应的功能与性能进行升级更新，保证系统永远先进。</p>\r\n            </li>\r\n            <li><i class=\"iconfont\">&#xe613;</i>\r\n                <h5>技术支持</h5>\r\n                <p>企业网站系统平台不定期会进行相应的功能与性能进行升级更新，保证系统永远先进。</p>\r\n            </li>\r\n            <li><i class=\"iconfont\">&#xe60f;</i>\r\n                <h5>7x12小时客服热线</h5>\r\n                <p>为客户提供一对一的7x12小时客服咨询与培训服务。</p>\r\n            </li>\r\n        </ul>\r\n    </section>\r\n</div>\r\n");

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
