<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/merchantcenter/gamemanager/login1/css/main.css" rel="stylesheet" />  
<link href="/merchantcenter/gamemanager/login1/login.css" rel="stylesheet" type="text/css" />	
    <title>注册页面</title>
<script type="text/javascript" src="/jquery/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="/jquery/jquery-ui-1.8.14.custom.min.js"></script>
<script type="text/javascript" src="/js/common.js"></script>
<script type="text/javascript" src="/merchantcenter/gamemanager/manager.js"></script>
<script type="text/javascript"> 

jQuery(function($)
{
    changeBank($("#idBank").val());
     
    $("#idAdd").click(function()
	{
	    if(!chkUser())
		{
			return;
		}
	    
		var vercode=$("#idVercode").val();
		if(vercode=="")
		{
		    alert("请输入验证码");
		    $("#idVercode").focus();
		    return;
		}
		
		$.ajax
	    ({
			type:"post",
			url:"/gamemanager/checkSameName.html",
			data:"userName="+$("#idUserName").val(),
			success:function(re)
			{
			    var result=eval("("+re+")");
			    if(result.info=="fail")
			    {
					alert("该商户名称已被注册");
					$("#idUserName").select();
					return;
			    }
			    else
			    {
					document.addUserForm.submit();
			    }
			}
	    });
	});
    
    $("#idBank").change(function()
	{
	    changeBank($(this).val());
	});
});
	function checkSendButton()
	{
	    if(second>0){
	      $("#sendCode").val(second+"秒后可发送");
		  second=second-1;
		  $("#sendCode").attr({"disabled":"disabled"});
		  setTimeout("checkSendButton()",1000); 
		}else{
		  $("#sendCode").val("发送短信验证码");
		  $("#sendCode").removeAttr("disabled");
		  second=59;
		} 
	}
function changeBank(bank)
{
   if(bank=="财付通")
	{
		$("#div_openingBank").css("display","none");
		$("#info_openingBank").css("display","none");
		$("#li_bankUser").html("收款姓名：");
		$("#li_bankAccount").html("ＱＱ账号：");
	}
	else if(bank=="支付宝")
	{
		$("#div_openingBank").css("display","none");
		$("#info_openingBank").css("display","none");
		$("#li_bankUser").html("收款姓名：");
		$("#li_bankAccount").html("支付账号：");
	}
	else
	{
		$("#div_openingBank").css("display","block");
		$("#info_openingBank").css("display","block");
		$("#li_bankUser").html("开户姓名：");
		$("#li_bankAccount").html("银行账号：");
	}
}
	function refresh(){
	   document.getElementById("authImg").src='*.images?now='+new Date();
    }
</script>
</head>
<body>
   <div id="top">
		<div class="w">
			<div class="fl">
				<a href=""><img src="/merchantcenter/gamemanager/login1/Logo/logo.jpg"/></a>
			</div>
			<div class="fr">
			  <ul class="nav f16 tc">
                <li class="now"><a href="/">网站首页</a></li>
			    <li  ><a href="/merchantcenter/gamemanager/login1/fee.htm"><span>手续费率</span></a></li>
			    <li><a href="/merchantcenter/gamemanager/login1/about.htm">关于我们</a></li>
			    <li><a href="/merchantcenter/gamemanager/login1/contact.htm">联系我们</a></li>
		      </ul>
			</div>
		</div>
	</div>
	
	<div class="w">
		<div id="content">
			<div class="header">
				<img src="/merchantcenter/gamemanager/login1/images/content-1.jpg"/>
				<div>
					<p style="width: 300px;float:left;margin-left:87px;text-align: center;">填写账户注册信息</p>
					<p style="width: 280px;float:left;text-align: center;">注册成功</p>
				</div>
			</div>
			<div class="neirong">
				<h3 class="n"><img src="/merchantcenter/gamemanager/login1/images/content-2.jpg" alt="" />商户注册<img class="pa sanjiao" src="/merchantcenter/gamemanager/login1/images/content-5.png" alt="" /></h3>
				<div class="tishi">
					<img src="/merchantcenter/gamemanager/login1/images/content-3.jpg"/><b>提示</b>如果您已经注册了商户账户，请<a href="">直接登录</a>
				</div>
				<form action="/gm/userReg.html" method="post" name="addUserForm">
					<h4>欢迎您即将成为XXXX合作商户，请详细填写以下资料：（标识*为必填项，请认真填写）</h4>
					<ul class="oz">
						<li><span><cite class="cr">*</cite>用户名:</span><input type="text" name="gameManager.userName" id="idUserName" onKeyUp="value=inputGraphemeAndNum(value);" maxlength="50" /><cite>用户名长度为2-20，必须以字母开头！</cite></li>
						<li><span><cite class="cr">*</cite>密码:</span><input name="gameManager.userPwd" id="idPwd" maxlength="30"  type="password" /><cite>为了您的账户安全，请输入6位以上密码！</cite></li>
						<li><span><cite class="cr">*</cite>确认密码:</span><input name="confirmPwd" id="idAgainPwd" maxlength="30"  type="password"   /><cite>请再次输入密码！</cite></li>
					</ul>
					
					<h4>联系方式（我们与您取得联系的方式，也是取回密码的重要依据）</h4>
					<ul class="oz">
						<li><span><cite class="cr">*</cite>腾讯QQ:</span><input  name="gameManager.qq" id="idQq" onblur="value=inputNumByRE(value)" onkeyup="value=inputNumByRE(value)" maxlength="20"  /><cite>用于找回密码、接受校验消息等操作</cite></li>
						<li><span><cite class="cr">*</cite>手机号码:</span><input type="text" name="gameManager.phone" id="idPhone" onblur="value=inputNumByRE(value)" onkeyup="value=inputNumByRE(value)" maxlength="20" /><cite>必填，我们与您的重要联系方式。</cite></li>
					</ul>
					
					<h4>提现信息（用于商户收款、提现，请务必仔细填写）</h4>
					<strong  class="n">注意：1-3分钟内全国到账！</strong>
					<ul class="oz">
					
					    <li><span><cite class="cr">*</cite>运营游戏：</span><s:select cssClass="register2_select" list="gameList" listKey="gameId" listValue="allName" name="gameId" id="idGameId"></s:select><cite>请选择您的默认的运营游戏</cite></li>
					
						<li><span><cite class="cr">*</cite>所属银行:</span><s:select cssClass="inp2032" list="bankList" listKey="name" listValue="name" id="idBank" name="gameManager.bank"></s:select><cite>注册后不可修改</cite></li>
						
<li>
<div id="div_openingBank" style="text-align:left;">
<span>*开户银行： </span><input type="text" class="register2_input" name="gameManager.openingBank" id="idOpeningBank" maxlength="50" /> <cite>请输入您的开户银行的详细地址，如***支行</cite>
</div>
</li>

<li><span  id="li_bankUser"></span><input type="text" class="register2_input" name="gameManager.bankUser" id="idBankUser" maxlength="50" /><cite >请正确输入您的付款姓名</cite>
</li>

<li><span  id="li_bankAccount"></span><input type="text" class="register2_input" name="gameManager.bankAccount" id="idBankAccount" maxlength="50" /><cite >请正确输入您的账号信息</cite>
</li>
						
						<li><span><cite class="cr">*</cite>验证码:</span> <input type="text" style="width: 94px;"   name="vercode" maxlength="4" id="idVercode" />  &nbsp; <img src="*.images" id="authImg" onclick="refresh()" style="margin-left: -12px;margin-right: 29px;"/><cite>如果看不清请点击图片重新生成</cite></li>
					
					</ul>
					<div  class="checkbox c6">
						<input type="checkbox" value="1" checked="checked"/> <span>我同意并承诺遵守<a href="" class="c6">“xxxx”（www.xxxxxx.com）条款</a></span>
					</div>
					<div class="register1_btn" style="padding-left:80px"><input type="button" id="idAdd" /> </div>
					
				</form>
			</div>
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
