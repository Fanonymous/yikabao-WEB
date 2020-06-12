<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/merchantcenter/gamemanager/login1/css/main.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/merchantcenter/gamemanager/login1/Script/jq.js"></script>
    <script type="text/javascript" src="/merchantcenter/gamemanager/login1/Script/jquery.SuperSlide.2.1.1.js"></script>
	<script type="text/javascript" src="/merchantcenter/gamemanager/login1/Script/common.js"></script>
<title>${webInformation.webName}</title>

<script type="text/javascript">
if(window.location != window.top.location)
{
    window.top.location = window.location;
}
function refresh(){
	document.getElementById("authImg").src='*.images?now='+new Date();
}
</script>
</head>
<body>
	<div id="top">
		<div class="w">
			<div class="fl"><a href=""><img src="/merchantcenter/gamemanager/login1/Logo/logo.jpg"/></a></div>
			<div class="fr">
			  <ul class="nav f16 tc">
                <li class="now"><a href="/">网站首页</a></li>
			    <li ><a href="/merchantcenter/gamemanager/login1/fee.htm"><span>手续费率</span></a></li>
			    <li><a href="/merchantcenter/gamemanager/login1/about.htm">关于我们</a></li>
			    <li><a href="/merchantcenter/gamemanager/login1/contact.htm">联系我们</a></li>
		      </ul>
			</div>
		</div>
	</div>
	
	
	<div id="banner" class="pr">
		<div class="w100 oz">
			<div class="slider pr oz">
				<div class="bd">
					<ul>
						<li><a href="/"><img src="/merchantcenter/gamemanager/login1/images/tu.jpg" alt="" /></a></li>
						<li><a href="/"><img src="/merchantcenter/gamemanager/login1/images/tu.jpg" alt="" /></a></li>
						<li><a href="/"><img src="/merchantcenter/gamemanager/login1/images/tu.jpg" alt="" /></a></li>
					</ul>
				</div>
				<div class="hd pa">
					<ul>
						<li class="on"></li>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>	
		</div>
		<div class="login pa">
			<div class="login_cont f14">
				<form action="/gm/userNameLogin.html" method="post" name="loginForm" onsubmit="return subLogin()">
					<div class="oz k">
						<span class="fl">账户名：</span>
						<input type="text" name="userName" id="loginUserName" class="fl" onkeyup="value=inputGraphemeAndNum(value);" maxlength="50"/>
					</div>
					<div class="oz k">
						<span class="fl">登录密码：</span>
						<input type="password" name="userPwd" id="userPwd" class="fl" maxlength="25" />
					</div>
					<p class="tc"><a href="/gamemanager/toUserReg.html" class="cf">还没有商户账户？免费注册</a></p>
					
					<button type="submit" class="cf yh" id="subbtn" >登    录</button>
					
				</form>
			</div>	
		</div>
		
	</div>
	
	<div id="tx">
		<div class="w">
			<ul class="oz f14">
				<li>
					<div>
						<img src="/merchantcenter/gamemanager/login1/images/tx-1.jpg"/>
						<h1>贴心客服</h1>
					    <p>标准化的运营维护服务流程，不断细分市场，根据不同客户需求提供<span>差别化解决方案.</span></p>
				    </div>
				</li>
				<li>
					<div>
						<img src="/merchantcenter/gamemanager/login1/images/tx-2.jpg"/>
						<h1>安全稳定</h1>
					    <p>即充即结，资金零风险<br/><span>7-24小时</span>随时随地提现<br/><span>360度安全</span>保护您的财产</p>
				    </div>
				</li>
				<li>
					<div>
						<img src="/merchantcenter/gamemanager/login1/images/tx-3.jpg"/>
						<h1>快捷迅速</h1>
					    <p><span>互联网一线品牌的点卡渠道商</span><br/>拥有稳定销售渠道<br/>随时随地收付款</p>
				    </div>
				</li>
			</ul>
		</div>
	</div>
	
	<div id="footer">
		<div class="w">
			<div class="fl">
				<a href=""><img src="/merchantcenter/gamemanager/login1/Logo/foot-1.png" alt="" /></a>
			</div>
			<div class="fr c6">
				<p>Copyright 2013-2015 收卡宝多渠道卡类兑换平台 版权所有</p>
				<p>沪ICP备15005079号 |客服热线400-4000-400</p>
			</div>
		</div>
	</div>
</body>
</html>
