
<%@include file="/common/sub_header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<form name="form1" action="gangwei!editGangwei.action" method="post">
	<input type="hidden" name="gangwei.id" value="${gangwei.id}" />
	<input type="hidden" name="gangwei.name" value="${gangwei.name}" />
	<input type="hidden" name="gangwei.danwei" value="${gangwei.danwei}" />
	<input type="hidden" name="gangwei.riqi" value="${gangwei.riqi}" />
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
				<bean:message key='gangwei.title.info' bundle="label" />
			</td>
		</tr>





		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				名称：
			</td>
			<td width="30%" class="pad2 zi13">

				${gangwei.name}

			</td>
		</tr>
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				单位：
			</td>
			<td width="30%" class="pad2 zi13">

			    ${gangwei.danwei}


			</td>
		</tr>
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				设置薪酬：
			</td>
			<td width="30%" class="pad2 zi13">

				<input type="text" name="gangwei.baochou" value="${gangwei.baochou}"
					maxlength="50" clazz="box1" />
				&nbsp;


			</td>
		</tr>
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				是否同意：
			</td>
			<td width="30%" class="pad2 zi13">
			   <select  name="gangwei.shenpi">
			      <option value="通过">同意</option>
			      <option value="未通过">不同意</option>
			   </select>



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
var title = "岗位审批";
$("#titleLabel").html(title);
$("input:text:first").focus();

function save() {
	if ($("#pinpai").val() == "") {
		$.messager.alert('警告', '用户名不能为空！', 'warning');
		return;
	}

	document.forms[0].action = "<%=path%>/gangwei!editGangweiSp.action";
	document.forms[0].submit();
}
</script>
