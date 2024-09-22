	
<%@include file="/common/sub_header.jsp"%>	
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>	
<form name="form1" action="guanbi!editGuanbi.action" method="post">	
	<input type="hidden" name="guanbi.id" value="${guanbi.id}" />	
	<table cellspacing="0" cellpadding="0" width="98%" align="center"	
		border="0" class="margtb5">	
		<tr>	
			<td align="left" class="padl5 lan12">	
				<img src="<%=path%>/images/img-11.gif" width="12" height="12">	
				<span id="titleLabel"></span>	
			</td>	
		</tr>	
	</table>	
	
	<table cellspacing="1" cellpadding="0" width="98%" align="center"	
		border="0" class="bgcolor2 margb5">	
		<tr>	
			<td colspan="4" align="left" class="bkuang zi13b bgcolor2 padl5">	
				<bean:message key='guanbi.title.info' bundle="label" />	
			</td>	
		</tr>	
	
	
	 
		<tr class="bgcolor">	
			<td width="20%" align="right" class="zi13">	
				开始日期：	
			</td>	
			<td width="30%" class="pad2 zi13">	
	
				<input type="text" id="guanbi.friqi" value="${guanbi.friqi}" name="guanbi.name" maxlength="30"	
					clazz="box1" class="Wdate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true})"/>	
				&nbsp;	
				 
	
			</td>	
		</tr>	
		<tr class="bgcolor">	
			<td width="20%" align="right" class="zi13">	
		                 结束日期：	
			</td>	
			<td width="30%" class="pad2 zi13">	
	
				<input type="text" name="guanbi.triqi" value="${guanbi.triqi}" maxlength="50" class="Wdate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true})"/>	
				&nbsp;	
	
	
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
							<input type="button" class="buttonbg" onclick="save();"	
								value="保存" />	
	
							&nbsp;&nbsp;&nbsp;	
							<input type="button" class="buttonbg" onclick="back();"	
								value="返回" />	
					</tr>	
				</table>	
</form>	
</body>	
</html>	
	
	
<script>	
var title = "系统关闭管理 > 编辑";	
$("#titleLabel").html(title);	
$("input:text:first").focus();	
	
function save() {	
	if ($("#pinpai").val() == "") {	
		$.messager.alert('警告', '用户名不能为空！', 'warning');	
		return;	
	}	
	
	document.forms[0].action = "<%=path%>/guanbi!editGuanbi.action";	
	document.forms[0].submit();	
}	
</script>	
