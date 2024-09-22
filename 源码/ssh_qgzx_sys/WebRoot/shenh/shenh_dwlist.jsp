<%@include file="/common/sub_header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<form name="form1" action="shenq!queryShenq.action" method="post">
	<input type="hidden" id="messageInfo"
		value="${requestScope.messageInfo}" />
	<input type="hidden" id="totalPage" value="${totalPage}" />
	<table cellspacing="0" cellpadding="0" width="98%" align="center"
		border="0" class="margtb5">
		<tr>
			<td align="left" class="padl5 lan12">
				<img src="<%=path%>/images/img-11.gif" width="12" height="12">
				<span id="titleLabel"></span>
			</td>
		</tr>
	</table>

	<table cellspacing="3" cellpadding="0" width="98%" align="center"
		border="0" class="kuang2 margtb5 hei12">

		<tr>
			<td width="10%" align="right">
				名称：
			</td>
			<td width="20%">



				<input type="text" name="shenq.name" value="${shenq.name}"
					clazz="box1" />

			</td>

			<td width="65%" align="left">
				<input type="button" id="but_query" class="buttonbg"
					style="cursor: hand;" onclick="query();" value="查询" />
			</td>
		</tr>
	</table>


	<table cellspacing="0" cellpadding="0" width="98%" align="center"
		border="0" class="margb5">
		<tr>
			<td colspan="8" class="bgcolor2 padlr5">
				<table border="0" cellspacing="0" cellpadding="0" class="lan13b">



				</table>
			</td>
		</tr>
		<tr>
			<td>
				<fmt:bundle basename="global_resources">
					<display:table style="width:100%; text-align:center;"
						name="shenq_list" class="simple" excludedParams="method"
						id="shenq" pagesize="10" partialList="true" defaultsort="1"
						defaultorder="descending" size="resultSize"
						requestURI="shenq!queryShenq.action">

						<display:column title="岗位名称" sortable="true"
							style="width:10%; text-align:center;">
                           ${shenq.name}
                        </display:column>
						<display:column title="发布单位" sortable="true"
							style="width:10%; text-align:center;">
                           ${shenq.danwei}
                        </display:column>
						<display:column title="申请日期" sortable="true"
							style="width:10%; text-align:center;">
                           ${shenq.riqi}
                        </display:column>
						<display:column title="申请人" sortable="true"
							style="width:10%; text-align:center;">
                           ${shenq.uname}
                        </display:column>

						<display:column title="报酬" sortable="true"
							style="width:10%; text-align:center;">
							
                           ${shenq.baochou}
                          
                        </display:column>

						


						<display:column title="操作" sortable="true"
							style="width:15%; text-align:center;">
								<a href="<%=path%>/shenq!toEditGongziSh.action?id=${shenq.id}">审核</a>
						</display:column>

					</display:table>
				</fmt:bundle>
			</td>
		</tr>
	</table>

	</html:form>
	</body>
	</html>
	<script>
var title = "用人单位审核工资";
$("#titleLabel").html(title);

function query() {
	var action = "<%=path%>/shenq!queryShenq.action";
	document.forms[0].action = action;
	document.forms[0].submit();
}

function addShenq() {
	var action = "<%=path%>/shenq!toAddShenq.action";
	document.forms[0].action = action;
	document.forms[0].submit();
}

function delShenq() {
	var num = isChecked();
	if (num == 0) {
		$.messager.alert('警告', '请选择要删除的记录！', 'warning');
	} else {
		$.messager.confirm('提示', '是否确认删除所选记录！', function(r) {
			if (r) {

				var action = "<%=path%>/shenq!delShenq.action";
				document.forms[0].action = action;
				document.forms[0].submit();
			}
		});
	}
}

function editShenq() {
	var num = isChecked();
	if (num == 0) {
		$.messager.alert('警告', '请选择要编辑的记录！', 'warning');
	} else {
		if (num > 1) {
			$.messager.alert('警告', '一次只能编辑一条记录！', 'warning');
		} else {

			var action = "<%=path%>/shenq!toEditShenq.action";
			document.forms[0].action = action;
			document.forms[0].submit();

		}
	}
}

function viewShenq() {
	var num = isChecked();
	if (num == 0) {
		$.messager.alert('警告', '请选择要查看的记录！', 'warning');
	} else {
		if (num > 1) {
			$.messager.alert('警告', '一次只能查看一条记录！', 'warning');
		} else {

			var action = "<%=path%>/shenq!viewShenq.action";
			document.forms[0].action = action;
			document.forms[0].submit();
		}
	}
}

$(document).ready(function() {
	var $messageInfo = $("#messageInfo").val();
	if ($messageInfo != null && $messageInfo != "") {
		$.messager.show( {
			title : '提示',
			msg : $messageInfo,
			timeout : 2000,
			showType : 'slide'
		});
		$("#messageInfo").val("");
	}
});
</script>