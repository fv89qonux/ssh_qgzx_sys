<%@include file="/common/sub_header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<form name="form1" action="loginuser!addLoginuser.action" method="post">
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
				用户管理
			</td>
		</tr>


		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				工号：
			</td>
			<td width="30%" class="pad2 zi13">

				<input type="text" id="name" name="loginuser.name" maxlength="30"
					clazz="box1" />
				&nbsp;
				<font color="red">*</font>

			</td></tr>
			<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				密码：
			</td>
			<td width="30%" class="pad2 zi13">

				<input type="password" id="password" name="loginuser.password"
					maxlength="50" clazz="box1" />
				&nbsp;
				<font color="red">*</font>

			</td>
		</tr>
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				电话：
			</td>
			<td width="30%" class="pad2 zi13">

				<input type="text" name="loginuser.phone" maxlength="50"
					clazz="box1" />


			</td></tr>
			<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				用户类型：
			</td>
			<td width="30%" class="pad2 zi13">
				<s:select list="#request.yhlx" theme="simple"
					name="loginuser.userType" cssClass="box1" listKey="key"
					listValue="value"></s:select>

			</td>
		</tr>
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				姓名：
			</td>
			<td width="30%" class="pad2 zi13" colspan="3">

				<input type="text" id="rname" name="loginuser.rname" maxlength="30"
					clazz="box1" />
				&nbsp;
				<font color="red">*</font>

			</td>

		</tr>
		
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				性别：
			</td>
			<td width="30%" class="pad2 zi13" colspan="3">

				<input type="text" id="sex" name="loginuser.sex" maxlength="30"
					clazz="box1" />
				&nbsp;
				

			</td>

		</tr>
		
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				学历：
			</td>
			<td width="30%" class="pad2 zi13" colspan="3">

				<input type="text" id="xueli" name="loginuser.xueli" maxlength="30"
					clazz="box1" />
				&nbsp;
				

			</td>

		</tr>
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				任职时间：
			</td>
			<td width="30%" class="pad2 zi13" colspan="3">

				<input type="text"  id="renzhi" class="Wdate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})"  name="loginuser.renzhi" maxlength="30"
					clazz="box1" />
				&nbsp;
				

			</td>

		</tr>
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				部门：
			</td>
			<td width="30%" class="pad2 zi13" colspan="3">

				<input type="text" id="dept" name="loginuser.dept" maxlength="30"
					clazz="box1" />
				&nbsp;
				

			</td>

		</tr>
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				职务：
			</td>
			<td width="30%" class="pad2 zi13" colspan="3">

				<input type="text" id="zhiwu" name="loginuser.zhiwu" maxlength="30"
					clazz="box1" />
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
var title = "用户管理 > 新增";
$("#titleLabel").html(title);
$("input:text:first").focus();

function save() {
	if ($("#name").val() == "") {
		$.messager.alert('警告', '用户名不能为空！', 'warning');
		return;
	}
	if ($("#rname").val() == "") {
		$.messager.alert('警告', '姓名不能为空！', 'warning');
		return;
	}
	if ($("#password").val() == "") {
		$.messager.alert('警告', '密码不能为空！', 'warning');
		return;
	}
	document.forms[0].action = "<%=path%>/loginuser!addLoginuser.action";
	document.forms[0].submit();

}
</script>

