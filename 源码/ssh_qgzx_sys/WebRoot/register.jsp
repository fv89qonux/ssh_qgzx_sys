<%@include file="/common/sub_header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>注册页面</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	font-size: 12px;
	color: #000000;
}
.STYLE5 {font-size: 12}
.STYLE7 {font-size: 12px; color: #FFFFFF; }
-->
</style></head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="57" background="images/main_03.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="378" height="57" background="images/main_01.gif">&nbsp;</td>
        <td>&nbsp;</td>
        <td width="281" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="33" height="27"><img src="images/main_05.gif" width="33" height="27" /></td>
            <td width="248" background="images/main_06.gif"><table width="225" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
      
                <td><div align="right"></div></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="40" background="images/main_10.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="194" height="40" background="images/main_07.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            
           
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="248" background="images/main_11.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="16%"><span class="STYLE5"></span></td>
            <td width="75%"><div align="center"> </div></td>
            <td width="9%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  
</table>

<form name="form1" action="loginuser!addLoginuser.action" method="post">
	 
			<input type="hidden" id="messageInfo"
				value="${requestScope.messageInfo}" />
	<table cellspacing="1" cellpadding="0" width="98%" align="center"
		border="0" class="bgcolor2 margb5">
		<tr>
			<td colspan="4" align="left" class="bkuang zi13b bgcolor2 padl5">
				新用户注册
			</td>
		</tr>


		<tr class="bgcolor">
			<td width="15%" align="right" class="zi13">
				用户名：
			</td>
			<td width="85%" class="pad2 zi13">

				<input type="text" id="name" name="loginuser.name" maxlength="30" clazz="box1" />
&nbsp;<font color="red">*</font>

			</td>
			
		</tr>
		<tr class="bgcolor">
			<td width="15%" align="right" class="zi13">
				姓名：
			</td>
			<td width="85%" class="pad2 zi13">

				<input type="text" id="rname" name="loginuser.rname" maxlength="30" clazz="box1" />
&nbsp;<font color="red">*</font>

			</td>
			
		</tr>
		<tr class="bgcolor">
		  <td width="15%" align="right" class="zi13">
				密码：
			</td>
			<td width="85%" class="pad2 zi13">

				<input type="password" id="password" name="loginuser.password" maxlength="50"
					clazz="box1" />
&nbsp;<font color="red">*</font>

			</td>
		</tr>
		<tr class="bgcolor">
			<td width="15%" align="right" class="zi13">
				电话：
			</td>
			<td width="85%" class="pad2 zi13">

				<input type="text" name="loginuser.phone" maxlength="50" 
					clazz="box1" />


			</td>
		</tr>
         
	</table>

	<p>
	<p>
	<p>
	<table width="98%" align="center" border="0" cellspacing="0"
		cellpadding="0">
		<tr>
			<td align="center">
				<input type="button" class="buttonbg" onclick="save();" value="提交" />

				&nbsp;&nbsp;&nbsp;
				<input type="button" class="buttonbg" onclick="back();" value="返回" />
		</tr>
	</table>

</form>
</body>
</html>

<script>

 
 function save(){
 if($("#name").val() == ""){
          $.messager.alert('警告','用户名不能为空！','warning');
          return;
     }
      if($("#rname").val() == ""){
          $.messager.alert('警告','姓名不能为空！','warning');
          return;
     }
          if($("#password").val() == ""){
          $.messager.alert('警告','密码不能为空！','warning');
          return;
     }
		   	 document.forms[0].action= "<%=path%>/loginuser!registerUser.action";
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
