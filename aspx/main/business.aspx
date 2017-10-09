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


	templateBuilder.Append("\r\n</head>\r\n<body class=\"business\">\r\n");

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


	templateBuilder.Append("\r\n<div class=\"business_banner\">\r\n  <div class=\"business_about container_32\">\r\n    <p class=\"tit\">一体化多终端</p>\r\n    <p>PC端、平板电脑、移动终端无障碍网站体验 </p>\r\n  </div>\r\n  <img src=\"/templates/main/images/business_banner.png\"> </div>\r\n<!--business_banner-->\r\n<section id=\"busi_server\" class=\"container_32\">\r\n  <h3 class=\"busi_block_h3 \">服务客户</h3>\r\n  <ul class=\"busi_server_ul\">\r\n    ");
	DataTable newsList = get_article_list("case", 57, 7, "status=0");

	int drlist__loop__id=0;
	foreach(DataRow drlist in newsList.Rows)
	{
		drlist__loop__id++;


	templateBuilder.Append("\r\n    <li><span><a href=\"");
	templateBuilder.Append(linkurl("case_show",Utils.ObjectToStr(drlist["id"])));

	templateBuilder.Append("\"><img src=\"" + Utils.ObjectToStr(drlist["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(drlist["title"]) + "\" ></a></span></li>\r\n    ");
	if (drlist__loop__id>=7)
	{

	templateBuilder.Append("\r\n    <li><span><img src=\"/templates/main/img/index_casex.jpg\" alt=\"\" ></span></li>\r\n    ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n  </ul>\r\n</section>\r\n<section id=\"busi_service\" class=\"container_32\">\r\n  <h3 class=\"block_h3 \">我们的服务</h3>\r\n  <div class=\"busi_ourservice\">\r\n    <p>积累超过12年的实践经验，使我们更加重视网站本身的内容和技术框架规划，</p>\r\n    <p>打造电脑PC网站、平板电脑自适应网站、手机网站、微信公众平台一体化，无障碍式浏览方案。</p>\r\n  </div >\r\n</section>\r\n<div class=\"bg_white\">\r\n  <div id=\"busi_title\" class=\"container_32\">\r\n    <h3 class=\"block_h3 \">一、网站建设内容</h3>\r\n    <ul>\r\n      <li> <i class=\"iconfont color_orange\">&#xe623;</i>\r\n        <h3>品牌企业网站</h3>\r\n        <p>采用国际主流网站设计风格并结合企业的VI形象来确定网站的样式，达到优秀的网站视觉效果、顺畅的用户体验及信息传达的准确性。</p>\r\n      </li>\r\n      <li> <i class=\"iconfont color_banana\">&#xe624;</i>\r\n        <h3>H5响应式网站</h3>\r\n        <p>实现PC端、Pad端横坚版、手机端、微信端等多终端的无障碍浏览并保持风格的一致性，更新数据可同步至多个平台，高效快捷。</p>\r\n      </li>\r\n      <li> <i class=\"iconfont color_pitaya\">&#xe625;</i>\r\n        <h3>移动手机网站+微网站</h3>\r\n        <p>手机微网站是基于微信内的手机网站，绑定微信菜单实现访问，用于企业品牌形象展示、订单信息获取、电话留言与定位等其他功能。</p>\r\n      </li>\r\n    </ul>\r\n  </div>\r\n</div>\r\n<section id=\"busi_process\" class=\"container_32 blue\">\r\n  <h3 class=\"block_h3 \">二、网站建设流程</h3>\r\n  <ul>\r\n    <li><i class=\"iconfont\">&#xe660;</i>\r\n      <h5>前期沟通</h5>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe606;</i>\r\n      <h5>UED设计</h5>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe604;</i>\r\n      <h5>前端制作</h5>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe602;</i>\r\n      <h5>后端开发</h5>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe609;</i>\r\n      <h5>资料上传</h5>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe601;</i>\r\n      <h5>发布上线</h5>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe603;</i>\r\n      <h5>运营维护</h5>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe60a;</i>\r\n      <h5>数据备份</h5>\r\n    </li>\r\n  </ul>\r\n</section>\r\n<section id=\"busi_advantage\" class=\"container_32 blue\">\r\n  <h3 class=\"block_h3 \">三、网站建设优势</h3>\r\n  <div class=\"block_slogan2\">\r\n    <h2>超过12年实践经验，拥有自主知识产权技术，无需考虑版权问题与系统升级问题。</h2>\r\n  </div>\r\n  <ul>\r\n    <li ><i class=\"iconfont\">&#xe6a1;</i>\r\n      <h5>”F”型设计思路</h5>\r\n      <p>采用符合用户浏览习惯的”F”型设计思路和“引导式”设计思路</p>\r\n    </li>\r\n    <li ><i class=\"iconfont\">&#xe62a;</i>\r\n      <h5>视觉焦点</h5>\r\n      <p>网站整体页面设计以“视觉焦点”方式进行规划布局。</p>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe629;</i>\r\n      <h5>首屏理论</h5>\r\n      <p>网站整体以“首屏理论”作为依托进行页面设计。</p>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe605;</i>\r\n      <h5>html5+css3+js</h5>\r\n      <p>前端整体采用html5+css3+js驱动，兼容多终端设备。</p>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe628;</i>\r\n      <h5>图片精灵</h5>\r\n      <p>图片采用“图片精灵”技术减少HTTP请求数，让网页打开速度更快</p>\r\n    </li>\r\n    <li ><i class=\"iconfont\">&#xe646;</i>\r\n      <h5>深度压缩</h5>\r\n      <p>代码经过深度压缩技术，减少页面被访问时的加载量。</p>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe69c;</i>\r\n      <h5>预加载&amp;延迟加载</h5>\r\n      <p>页面代码采用预加载和延迟加载相关技术，使页面访问更流畅。</p>\r\n    </li>\r\n    <li ><i class=\"iconfont\">&#xe6b5;</i>\r\n      <h5>关键词密度</h5>\r\n      <p>代码上合理分布网站的关键词数量，使关键词密度符合标准规范。</p>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe669;</i>\r\n      <h5>H1~H6</h5>\r\n      <p>前端代码上合理利用H1~H6相关标签设置相关的关键词。</p>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe641;</i>\r\n      <h5>静态化</h5>\r\n      <p>网站地址采用“静态化”技术，使网站页面更易被收录。</p>\r\n    </li>\r\n    <li ><i class=\"iconfont\">&#xe667;</i>\r\n      <h5>网站地图</h5>\r\n      <p>为网站增加易于百度、谷歌等搜索引擎抓取的网站地图技术。</p>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe622;</i>\r\n      <h5>ASP.NET+MSSQL</h5>\r\n      <p>整体架构采用ASP.NET MVC + MSSQL 微软系企业级架构方案。</p>\r\n    </li>\r\n    <li ><i class=\"iconfont\">&#xe611;</i>\r\n      <h5>强加密技术</h5>\r\n      <p>网站整体架构的加密技术采用SHA256 强加密技术。</p>\r\n    </li>\r\n    <li><i class=\"iconfont\">&#xe72e;</i>\r\n      <h5>URL重写</h5>\r\n      <p>网站地址采用”URL重写“技术，使页面更易于被收录。</p>\r\n    </li>\r\n  </ul>\r\n</section>\r\n<div class=\"border_top\">\r\n  <section id=\"busi_advantage\" class=\"container_32 blue\">\r\n    <h3 class=\"block_h3 \">四、售后服务及保障</h3>\r\n    <div class=\"summary\">\r\n      <p>技术为本，服务先行</p>\r\n    </div>\r\n    <ul>\r\n      <li><i class=\"iconfont\">&#xe617;</i>\r\n        <h5>免费系统升级</h5>\r\n        <p>企业网站不定期进行功能与性能升级更新，保证系统的先进性。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe610;</i>\r\n        <h5>页面打开速度检测</h5>\r\n        <p>定期性的对网站打开速度进行检查，保证了网站的体验与安全。</p>\r\n      </li>\r\n      <li> <i class=\"iconfont\">&#xe60b;</i>\r\n        <h5> CDN加速 </h5>\r\n        <p>为客户提供免费CDN加速等服务，保障网站的打开速度。 </p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe60a;</i>\r\n        <h5>数据定期备份</h5>\r\n        <p>定期性的对网站数据进行备份，保证了数据的完整与安全性。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe60e;</i>\r\n        <h5>行业网站定期更新</h5>\r\n        <p>不定期向行业网站更新信息，保证网站的搜索引擎优化。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe611;</i>\r\n        <h5>网站安全检查</h5>\r\n        <p>定期性的对网站进行安全检查，防止网站被黑客利用。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe614;</i>\r\n        <h5>网站后台培训</h5>\r\n        <p>为客户定制培训服务，提高产品使用能力，提升客户互联网水平。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe618;</i>\r\n        <h5>域名服务</h5>\r\n        <p>为客户提供域名解析、转让、过户等操作，保障域名管理安全。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe612;</i>\r\n        <h5>空间服务</h5>\r\n        <p>企业网站系统平台不定期会进行相应的功能与性能进行升级更新，保证系统永远先进。</p>\r\n      </li>\r\n      <li ><i class=\"iconfont\">&#xe616;</i>\r\n        <h5>备案服务</h5>\r\n        <p>企业网站系统平台不定期会进行相应的功能与性能进行升级更新，保证系统永远先进。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe61a;</i>\r\n        <h5>资料更新</h5>\r\n        <p>企业网站系统平台不定期会进行相应的功能与性能进行升级更新，保证系统永远先进。</p>\r\n      </li>\r\n      <li ><i class=\"iconfont\">&#xe613;</i>\r\n        <h5>技术支持</h5>\r\n        <p>企业网站系统平台不定期会进行相应的功能与性能进行升级更新，保证系统永远先进。</p>\r\n      </li>\r\n      <li><i class=\"iconfont\">&#xe60f;</i>\r\n        <h5> 7x12小时客服热线 </h5>\r\n        <p>为客户提供一对一的7x12小时客服咨询与培训服务。</p>\r\n      </li>\r\n    </ul>\r\n  </section>\r\n</div>\r\n");

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
