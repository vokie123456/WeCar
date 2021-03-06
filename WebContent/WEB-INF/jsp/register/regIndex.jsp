
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<link href="css/valiform.css" rel="stylesheet" type="text/css" />
<link id="skin" rel="stylesheet" href="css/jbox.css" />
<style type="text/css" >

.Validform_wrong {
	 background: url(images/error.png) no-repeat left center; 
}

.Validform_right {
	
	 background: url(images/right.png) no-repeat left center;  
}
</style>
</head>
<body>
	<!--注册登录公共头部-->
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>地标金融</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<script type="text/javascript" language="javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" language="javascript" src="js/xuanxiang_duoge.js"></script>
<script type="text/javascript" language="javascript" src="js/navigation_cur.js"></script>
<script type="text/javascript" src="js/jquery.jBox-2.3.min.js"></script>
<script type="text/javascript" src="js/i18n/jquery.jBox-zh-CN.js"></script>
<script type="text/javascript" src="js/front/frontCommon.js"></script>
<link href="css/public.css" rel="stylesheet" type="text/css" />
<link href="css/member.css" rel="stylesheet" type="text/css" />
</head>

<body>
<!--返回顶部开始-->
<div class="ReturnTop">
<a href="javascript:void(0);" id="qq" title="在线客服"><img src="images/ReturnTop2.png" width="54" height="54" /></a>
<a href="javascript:void(0);" class="wechat" title="官方微信"><img src="images/ReturnTop1.png" width="54" height="54" /></a>

<a href="javascript:void(0);" id="ScrollUp" style="display:none;" title="返回顶部"><img src="images/ReturnTop4.png" width="54" height="54" /></a>
<img class="wechat_img" src="images/weixin.png">
</div>
<script type="text/javascript" language="javascript">
$(function(){
	 var $bottomTools = $('.ReturnTop');
	    var $qrTools = $('.wechat');
	    var qrImg = $('.wechat_img');
	    $(window).scroll(function() {
	        var scrollHeight = $(document).height();
	        var scrollTop = $(window).scrollTop();
	        var $windowHeight = $(window).innerHeight();
	        scrollTop > 100 ? $("#ScrollUp").fadeIn(200).css("display", "block") : $("#ScrollUp").fadeOut(200);
	        $bottomTools.css("bottom", scrollHeight - scrollTop > $windowHeight ? 54 : $windowHeight + scrollTop + 54 - scrollHeight);
	    });
	    $('#ScrollUp').click(function(e) {
	        e.preventDefault();
	        $('html,body').animate({scrollTop: 0});
	    });
	    $qrTools.hover(function() {
	        qrImg.fadeIn();
	    }, function() {
	        qrImg.fadeOut();
	    });
$("#qq").click(function(){
	window.open("http://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzkzODAzOTA2NF84MDg1Nl80MDA2OTk4NjY2XzJf");
});
});
function load(){
	$.post("home.html");
	$.post("helpIndex.html");
}
function loginBBS(){
	window.open("loginBBS.do","_blank");				 
}
</script>
<!--返回顶部结束-->

<!--头部开始-->
<div class="login_registration_head">
<div class="container">
<div class="logo"><a href="/" title="地标金融"><img src="images/logo.png" title="地标金融" alt="地标金融" /></a></div>
<div class="clear"></div>
</div>
</div>
<!--头部结束-->
</body>
</html>
<!--中部开始-->
<div class="wrapper">
	<div class="registration_wrapper">
		<div class="container">
			<div class="registration margin_top">
				<div class="registration_process">
					<img src="images/registration_01.jpg" width="900" height="56" />
				</div>
				<div class="registration_form">
				<form:form action="regStep2.do" id="registerForm" commandName="registerForm" method="post" style="background:url(images/registration_08.jpg) no-repeat right 10px;">
						<!-- <input type="hidden" name="paramMap.coop" value=""/> -->
						<ul>
							<li>

								<div class="li_left">
									<table border="0" cellspacing="0" cellpadding="0" height="40"
										align="right">
										<tr>
											<td class="required">*</td>
											<td>用户名：</td>
										</tr>
									</table>
								</div>
								<div class="li_center" style="width:780px;">
									<table border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td><form:input path="user_name" cssClass="input_text input_text_288 l_bg_a" maxlength="18"/>
											<form:errors path="user_name" cssStyle="color:red;font-weight: bold;" />
											</td>
											<td id="clickMsg_1" style="display:none; padding-left:8px;">
											<table border="0" cellspacing="0" cellpadding="0" width="250">
											<tr>
												<td><span style="color: red">用户名必须是6-18位英文、数字、特殊字符@._组成，注册完成后不可修改。</span></td>
											</tr>
											</table>
											</td>
										</tr>
									</table>
								</div>
							
							</li>
							
							<li>

								<div class="li_left">
									<table border="0" cellspacing="0" cellpadding="0" height="40"
										align="right">
										<tr>
											<td class="required">*</td>
											<td>电子邮箱：</td>
										</tr>
									</table>
								</div>
								<div class="li_center" style="width:780px;">
									<table border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td><form:input path="email" cssClass="input_text input_text_288 l_bg_a" maxlength="100"/>
											<form:errors path="email" cssStyle="color:red;font-weight: bold;" />
											</td>
											<td id="clickMsg_2" style="display:none; padding-left:8px;">
											<table border="0" cellspacing="0" cellpadding="0" width="250">
											<tr>
												<td><span style="color: red">电子邮箱格式不对。</span></td>
											</tr>
											</table>
											</td>
										</tr>
									</table>
								</div>
							
							</li>

							<li>
								<div class="li_left">
									<table border="0" cellspacing="0" cellpadding="0" height="40"
										align="right">
										<tr>
											<td class="required">*</td>
											<td>密码：</td>
										</tr>
									</table>
								</div>
								<div class="li_center" style="width:780px;">
									<table border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td>
											<!-- <input type="hidden" name="paramMap.afterPwd" id="afterPwd" /> -->
											<form:password path="password" cssClass="input_text input_text_288" maxlength="20"/>
											<!-- <input name="paramMap.password" id="password"
												type="password" maxlength="20" datatype="s6-20" 
												 nullmsg="请输入用户密码" plugin="passwordStrength"
												errormsg="密码长度为6-20位" class="input_text input_text_288" /> --> 
												</td>
											<td>
												<!-- <div class="Validform_checktip" style="display: none;"></div>
												<div class="passwordStrength" style="display: none;">
												<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码强度：</b>
												<span>弱</span><span>中</span><span class="last">强</span>
												</div> -->
											</td>
											<td id="clickMsg_3" style="display: none;padding-left: 8px;">
											<table border="0" cellspacing="0" cellpadding="0" width="240" height="40">
												<tr>
												<td>
												
												<span style="color: red">密码须为6-20位英文字母、数字和符号，不包括空格</span>
												。</td>
												</tr>
											</table>
											</td>
											
										</tr>
									</table>
								</div>
							</li>

							<li>
								<div class="li_left">
									<table border="0" cellspacing="0" cellpadding="0" height="40"
										align="right">
										<tr>
											<td class="required">*</td>
											<td>确认密码：</td>
										</tr>
									</table>
								</div>
								<div class="li_center" style="width:780px;">
									<table border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td>
											<form:password path="confirmPsw" cssClass="input_text input_text_288" maxlength="20"/>
											<!-- <input type="hidden" name="paramMap.afterConPwd" id="afterConPwd" />
											<input name="paramMap.confirmPassword" id="confirmPassword" maxlength="20"
												type="password" datatype="*6-20" nullmsg="请输入确认密码"
												recheck="paramMap.password" errormsg="两次密码不一致"
												class="input_text input_text_288" />  -->
											</td>
											<td id="clickMsg_4" style="display: none;padding-left: 8px;">

											<table border="0" cellspacing="0" cellpadding="0" width="240" height="40">
												<tr>
												<td>
												<span style="color: red">两次密码不一致。</span></td>
												</tr>
											</table>
											</td>
										</tr>
									</table>
									</div>
								</li>

							<!-- <li>
								<div class="li_left">
									<table border="0" cellspacing="0" cellpadding="0" height="40"
										align="right">
										<tr>
											<td class="required">*</td>
											<td>验证码：</td>
										</tr>
									</table>
								</div>
								<div class="li_center" style="width:780px; position:relative;">
									<table border="0" cellspacing="0" cellpadding="0">
										<tr>
										<style type="text/css">
										.duigou .Validform_right { background:none;}
										.duigou .Validform_wrong { position:absolute; left:370px; top:0px;}
										</style>
										<td class="duigou">
											<input name="paramMap.code" id="code" type="text" style="width:150px;"
												class="input_text" maxlength="4"
												datatype="n4-4" nullmsg="请输入验证码" errormsg="验证码错误" />
											</td>
											<td>
											<input name="paramMap.pageId" type="hidden" value="userlogin" />
											<img id="codeNum" src="images/yanzhengma.png" height="30" style="float:left; padding-left:10px; margin-top:6px;" /><a href="javascript:switchCode();" title="换一个" class="blue_a" style="float:left; line-height:40px; padding-left:20px;">换一个</a></td>
											<td style="color:#F00; padding-left:20px;" id="errorInfo">&nbsp;</td>
											<td id="clickMsg_4" style="display: none;padding-left: 8px;">

<table border="0" cellspacing="0" cellpadding="0" width="240" height="40">
<tr>
<td>
</td>
</tr>
</table>
											</td>
											</tr>
									</table>
								</div></li> -->
<li>
	<div class="li_left">
		<table border="0" cellspacing="0" cellpadding="0" height="40" align="right">
			<tr>
				<td class="required"></td>
				<td>是否好友邀请：</td>
			</tr>
		</table>
	</div>
	<div class="li_center">
		<table border="0" cellspacing="0" cellpadding="0" height="40">
			<tr>
					<td class="padding_right_10">
						<input name="invitation" type="radio" value="no" checked="checked" ></td>
					<td class="padding_right">否</td>
					<td class="padding_right_10"><input name="invitation" type="radio" value="ok" > </td>
					<td>是</td>
				</tr>
				</table>
	</div>
</li>

<li id="isCode" style="display: none;">
<div class="li_left"></div>
<div class="li_center" style="width:780px;">
<table border="0" cellspacing="0" cellpadding="0">
	<tr>
				<td>
					<input name="paramMap.userTjCode" maxlength="18" class="input_text input_text_288" onfocus="if(this.value=='输入好友推荐码')value='';" value="" id="tjCode" datatype="*1-18" ignore="ignore" ajaxurl="ajaxCheckTjCode.do"/>
				</td>
				<td>&nbsp;</td>
			</tr>
		</table>
</div>
</li>							
<li>
								<div class="li_left"></div>
								<div class="li_center" style="width:780px;">
									<table border="0" cellspacing="0" cellpadding="0" height="40">
										<tr>
											<td class="padding_right_10"><input name=""
												type="checkbox" value="" id="isRead" />
											</td>
											<td>我已经阅读并同意<a href="javascript:void(0);" class="blue_a"
												onclick="useTerms()">《使用条款》</a>和<a
												href="javascript:void(0);" class="blue_a"
												onclick="ysTerms()">《隐私条款》</a>
											</td>
											<td>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<span style="color:red;display: none" id="msgInfo">请阅读并同意《使用条款》和《隐私条款》</span></td>
										</tr>
									</table>
								</div>
									</li>
									

							<li>
								<div class="li_left"></div>
								<div class="li_center">
									<table border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td><input id="btn_register" value="下一步"
												type="button" class="input_button input_button_180" />
											</td>
										</tr>
									</table>
								</div></li>

							<li>
								<div class="li_left"></div>
								<div class="li_center">
									<table border="0" cellspacing="0" cellpadding="0" height="40">
										<tr>
											<td>已有帐号，<a href="login.html" class="blue_a">立即登录>></a>
											</td>
										</tr>
									</table>
								</div></li>
						</ul>
					</form:form>
				</div>
			</div>
			<div class="clear"></div>

		</div>
	</div>
</div>
<!--中部结束-->
<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>
<script type="text/javascript" src="js/passwordStrength-min.js"></script>
<script type="text/javascript" src="js/front/frontCommon.js"></script>
<script type="text/javascript" src="js/jquery.md5.js"></script>
<script type="text/javascript">
//$(function(){
	
	//$(".Validform_right").css("background","url(/images/right.png) no-repeat left center");
	//});
/* function haveLogin(){
			$("#thirdForm").submit();
		} */

/* function switchCode() {//验证码
	var timenow = new Date();
	$("#codeNum").attr("src",
			"dibms/imageCode.do?pageId=userlogin&d=" + timenow);
} */
	$(function() {
		$("#btn_register").click(function(){
			$("#clickMsg_1").hide();
			$("#clickMsg_2").hide();
			$("#clickMsg_3").hide();
			$("#clickMsg_4").hide();
			$("#msgInfo").hide();
			var valid=true;
			var userName = $.trim($("#user_name").val());
			var userNameReg = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]|[@_]){5,17}$/;
			if (userName=="" || !userNameReg.test(userName)) {
				$("#clickMsg_1").show();
				valid=false;
			}
			
			var email = $.trim($("#email").val());
			var emailReg = /^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
			if (email==null || !emailReg.test(email)) {
				$("#clickMsg_2").show();
				valid=false;
			}
			
			var password = $.trim($("#password").val());
			var pswReg = 	/^[\w.]{6,20}$/;
			if (password=="" || !pswReg.test(password)) {
				$("#clickMsg_3").show();
				valid=false;
			}
			var confirmPsw = $.trim($("#confirmPsw").val());
			if (confirmPsw!=password) {
				$("#clickMsg_4").show();
				valid=false;
			}
			if (!$("#isRead").attr("checked")) {
				$("#msgInfo").show();
				valid=false;
			}
			if (valid) {
				$("#registerForm").submit();
			}
		});
		/* change();
		switchCode();
		if($("#tjCode").val() == ""){
			if(null != document.getElementsByName("invitation")[0]){		
				document.getElementsByName("invitation")[1].checked=false;
				document.getElementsByName("invitation")[0].checked=true;
				$("#isCode").css("display", "none");
			}
		}
		else{
			if(null != document.getElementsByName("invitation")[0]){
				document.getElementsByName("invitation")[0].checked=false;
				document.getElementsByName("invitation")[1].checked=true;				
				$("#isCode").css("display", "block");
			}
		}
		$('input:radio[name="invitation"]').click(function() {
			var check = $('input:radio[name="invitation"]:checked').val();
			if (check == 'ok') {//显示推荐码输入框
				$("#isCode").css("display", "block");
				$("#tjCode").val("输入好友推荐码");
			} else {//隐藏验证码输入框
				$("#isCode").css("display", "none");
				$("#tjCode").val("");//点击否的时候清空输入的推荐码
			}
		});

		
		
		function change() {
			var element = document.getElementById("password");
			if ("\v" == "v") {
				element.onpropertychange = getRechargeCost;
			} else {
				element.addEventListener("input", getRechargeCost, false);
			}
		}
		function getRechargeCost(){
				$("#clickMsg_2").css("display","none");
		}
		
		
		demo = $("#editForm").Validform({
			btnSubmit:"#btn_register",
			tiptype:4, 
			postonce:true,
			ajaxPost:true,
			showAllError:true,
			usePlugin:{
				passwordstrength:{
					minLen:6,//设置密码长度最小值，默认为0;
					maxLen:20,//设置密码长度最大值，默认为30;
					trigger:function(obj,error){
					//该表单元素的keyup和blur事件会触发该函数的执行;
					//obj:当前表单元素jquery对象;
					//error:所设密码是否符合验证要求，验证不能通过error为true，验证通过则为false;
					//console.log(error);
						if(error){
							obj.parent().next().find(".Validform_checktip").show();
							obj.parent().next().find(".passwordStrength").hide();
						}else{
							obj.parent().next().find(".Validform_checktip").hide();
							obj.parent().next().find(".passwordStrength").show();	
						}
					}
				}
			},
			beforeSubmit:function(curform){
				//在验证成功后，表单提交前执行的函数，curform参数是当前表单对象。
				if (!$("#isRead").attr("checked")) {
					//$.jBox.alert('请勾选我已阅读并同意《使用条款》和《隐私条款》', '温馨提示');
					$("#msgInfo").html("<img src='images/error.png'>&nbsp;请同意协议");
					return false;
				}
				else{
					$("#msgInfo").html("<img src='images/right.png'>");
				}
			},
			callback:function(data){
				//返回数据data是json对象，{"info":"demo info","status":"y"}
				if(data.status=='y'){
					window.location.href="toVerifyMobile.html?"+$("#editForm").serialize();
					switchCode();
				}else{
					$("#userName").focus(function(){
							$("#clickMsg_1").css("display","none");
						
					});
					$("#password").val(getRealPwd());						
					$("#confirmPassword").val(getRealConPwd());
						$("#errorInfo").html("<img src='images/error.png'>&nbsp;"+data.info);
					switchCode();
				}

			}
		});
		$.Tipmsg.r="";
		$("#userName").focus(function(){
			$("#clickMsg_1").css("display","block");
			if($("#userName").val()!=""){
				$("#clickMsg_1").css("display","none");
			}
			$("ul li .li_center .Validform_wrong").each(function(){
				if($(this).text()=="请输入用户名"){
					$(this).css("display","none");
				}
				else{
					$(this).css("display","block");
				}
			});
			
		});
		$("#userName").blur(function(){
			$("ul li .li_center .Validform_right").each(function(){
				$(this).css("display","block");
			});
			$("#clickMsg_1").css("display","none");
			$("ul li .li_center .Validform_wrong").each(function(){
				$(this).css("display","block");
			});
		});	
			
		$("#password").focus(function(){
			$("#clickMsg_2").css("display","block");
			if($("#password").val()!=""){
				$("#clickMsg_2").css("display","none");
			}
			$("ul li .li_center .Validform_wrong").each(function(){
				if($(this).text()=="请输入用户密码"){
					$(this).css("display","none");
				}else{
					$(this).css("display","block");
				}
			});
		});
		$("#password").blur(function(){
			$("#clickMsg_2").css("display","none");
			
			$("ul li .li_center .Validform_wrong").each(function(){
					$(this).css("display","block");
			});
			
		});	
		$("#confirmPassword").focus(function(){
			$("#clickMsg_3").css("display","block");
			if($("#confirmPassword").val()!=""){
				$("#clickMsg_3").css("display","none");
			}
			$("ul li .li_center .Validform_wrong").each(function(){
				if($(this).text()=="请输入确认密码"){
					$(this).css("display","none");
				}else{
					$(this).css("display","block");
				}
			});
		});
		$("#confirmPassword").blur(function(){
			$("#clickMsg_3").css("display","none");
			$("ul li .li_center .Validform_wrong").each(function(){
				$(this).css("display","block");
			});
		});	
		
		$("#code").focus(function(){
			$("#clickMsg_4").css("display","block");
			if($("#confirmPassword").val()!=""){
				$("#clickMsg_4").css("display","none");
			}
			$("ul li .li_center .Validform_wrong").each(function(){
				if($(this).text()=="请输入验证码"){
					$(this).css("display","none");
				}else{
					$(this).css("display","block");
				}
			});
		});
		$("#code").blur(function(){
			$("#clickMsg_4").css("display","none");
			$("ul li .li_center .Validform_wrong").each(function(){
				$(this).css("display","block");
		});
		}); */
	});
</script>

<script type="text/javascript" src="jBox/jquery.jBox-2.3.min.js"></script>
<script type="text/javascript" src="jBox/i18n/jquery.jBox-zh-CN.js"></script>
<script type="text/javascript">
	function useTerms() {
		$.jBox.open("post:queryUserTerms.html", "使用条款", 800, 400, {
			buttons : {
				'关闭' : true
			}
		});
	}
	function ysTerms() {
		$.jBox.open("post:queryPrivacy.html", "隐私条款", 800, 400, {
			buttons : {
				'关闭' : true
			}
		});
	}
</script>

<link href="style/member.css" rel="stylesheet" type="text/css" />
<html>
  <body>
 
<!--底部开始-->
<div class="login_foot">
<div class="container">
<table border="0" cellspacing="0" cellpadding="0" align="center">
<tr>
<td align="center">
<table border="0" cellspacing="0" cellpadding="5">
<tr>
<td><a href="aboutUs.html" title="关于我们">关于我们</a></td>
<td>|</td>
<td><a href="aboutUs.html#contactus" title="联系我们">联系我们</a></td>
<td>|</td>
<td><a href="security.html" title="安全保障">安全保障</a></td>
<td>|</td>
<td><a href="helpIndex.html" title="帮助中心">帮助中心</a></td>
<td>|</td>
<td><a href="sitemap.html" title="网站地图">网站地图</a></td>
</tr>
</table>
</td>
</tr>
<tr>
<td align="center">
<table border="0" cellspacing="0" cellpadding="5">
<tr>
<td>版权所有©XXXX金融服务有限公司　备案号：粤ICP备255448555号-1</td>
</tr>
</table>
</td>
</tr>
</table>
</div>
</div>
<!--底部结束-->
<script type="text/javascript">
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-54191212-1', 'auto');
  ga('send', 'pageview');
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F8283eaf12a90d07094bbd0a4a04652a9' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cspan id='cnzz_stat_icon_1253722559' style='display:none;' %3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/stat.php%3Fid%3D1253722559%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));
</script>
  </body>
</html>
</body>
</html>