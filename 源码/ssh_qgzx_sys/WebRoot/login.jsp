<%@include file="/common/sub_header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		<title>九江学院勤工助学管理系统</title>
		<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow: hidden;
}

.STYLE3 {
	font-size: 12px;
	color: #adc9d9;
}
-->
</style>
	</head>
	<body>
		<form name="form1" action="loginuser!logon.action" method="post">
			<input type="hidden" id="messageInfo"
				value="${requestScope.messageInfo}" />

			<table width="100%" height="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td bgcolor="#1075b1">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="608" background="images/login_03.gif">
						<table width="847" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr>
								<td height="318" background="images/login_04.gif">
									&nbsp;
								</td>
							</tr>
							<tr>
								<td height="84">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="381" height="84" background="images/login_06.gif">
												&nbsp;
											</td>
											<td width="162" valign="middle"
												background="images/login_07.gif">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0">
													<tr>
														<td width="44" height="24" valign="bottom">
															<div align="right">
																<span class="STYLE3">用户</span>
															</div>
														</td>
														<td width="10" valign="bottom">
															&nbsp;
														</td>
														<td height="24" colspan="2" valign="bottom">
															<div align="left">
																<input type="text" name="loginuser.name" tabindex="1" id="name"
																	style="width: 100px; height: 17px; background-color: #87adbf; border: solid 1px #153966; font-size: 12px; color: #283439;">

															</div>
														</td>
													</tr>
													<tr>
														<td height="24" valign="bottom">
															<div align="right">
																<span class="STYLE3">密码</span>
															</div>
														</td>
														<td width="10" valign="bottom">
															&nbsp;
														</td>
														<td height="24" colspan="2" valign="bottom">
															<input name="loginuser.password" tabindex="2"
																type="password" id="password"
																style="width: 100px; height: 17px; background-color: #87adbf; border: solid 1px #153966; font-size: 12px; color: #283439;"
																maxlength="18">
														</td>
													</tr>

													<tr></tr>
												</table>
											</td>
											<td width="26">
												<img src="images/login_08.gif" width="26" height="84">
											</td>
											<td width="67" background="images/login_09.gif">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0">
													<tr>
														<td height="25">
															<div align="center">
																<img src="images/dl.gif" width="57" height="20"
																	onclick="logon();">
															</div>
														</td>
													</tr>
													<tr>
														<td height="25">
															<div align="center">
																
															</div>
														</td>
													</tr>
												</table>
											</td>
											<td width="211" background="images/login_10.gif">
												&nbsp;
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="206" background="images/login_11.gif">
									&nbsp;
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td bgcolor="#152753">
						&nbsp;
					</td>
				</tr>
			</table>















		</form>
	</body>

</html>

<script>

 
function logon(){
       if($("#name").val() == ""){
          $.messager.alert('警告','请输入用户名！','warning');
          return;
     }
      if($("#password").val() == ""){
          $.messager.alert('警告','请输入密码！','warning');
          return;
     }
 	 document.forms[0].action= "<%=path%>/loginuser!logon.action";
	 document.forms[0].submit();
	 
	 
}


$(document).ready(function(){
	 var $messageInfo = $("#messageInfo").val();
	 if($messageInfo != null && $messageInfo != ""){
		 $.messager.show({
			title:'提示',
			msg:$messageInfo,
			timeout:2000,
			showType:'slide'
		 });
		 $("#messageInfo").val("");
	 }
  });
  
  
</script>