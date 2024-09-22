<%@include file="/common/sub_header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<form name="form1" action="goods!addGoods.action" method="post">
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
				超市信息管理
			</td>
		</tr>


		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				名称：
			</td>
			<td width="30%" class="pad2 zi13">

				<input type="text" id="name" name="goods.name" maxlength="30"
					clazz="box1" />
				&nbsp;
				<font color="red">*</font>

			</td></tr>
			<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				备注：
			</td>
			<td width="30%" class="pad2 zi13">

				<input type="text"   name="goods.beizhu"
					maxlength="50" clazz="box1" />
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
var title = "超市信息管理 > 新增";
$("#titleLabel").html(title);
$("input:text:first").focus();

function save() {
	if ($("#name").val() == "") {
		$.messager.alert('警告', '品牌不能为空！', 'warning');
		return;
	}
	
	document.forms[0].action = "<%=path%>/goods!addGoods.action";
	document.forms[0].submit();

}
</script>

