<%@include file="/common/sub_header.jsp"%>	
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>	
<form name="form1" action="guanbi!queryGuanbi.action" method="post">	
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
	
		
	</table>	
	
	
	<table cellspacing="0" cellpadding="0" width="98%" align="center"	
		border="0" class="margb5">	
		<tr>	
			<td colspan="8" class="bgcolor2 padlr5">	
				<table border="0" cellspacing="0" cellpadding="0" class="lan13b">	
					<tr>	
						<td width="20">	
							<img src="<%=path%>/images/tianjia.gif" width="15" height="15">	
						</td>	
						<td width="35">	
							<a href="#" onclick="addGuanbi();">新增</a>	
						</td>	
						<td width="20">	
							<img src="<%=path%>/images/bianji.gif" width="14" height="14">	
						</td>	
						<td width="35">	
							<a href="#" onclick="editGuanbi();">编辑</a>	
						</td>	
						<td width="20">	
							<img src="<%=path%>/images/shanchu.gif" width="14" height="14">	
						</td>	
						<td width="35">	
							<a href="#" onclick="delGuanbi();">删除</a>	
						</td>	
						
						
					</tr>	
	
	
				</table>	
			</td>	
		</tr>	
		<tr>	
			<td>	
				<fmt:bundle basename="global_resources">	
					<display:table style="width:100%; text-align:center;"	
						name="guanbi_list" class="simple" excludedParams="method"	
						id="guanbi" pagesize="10" partialList="true" defaultsort="1"	
						defaultorder="descending" size="resultSize"	
						requestURI="guanbi!queryGuanbi.action">	
						<display:column style="width:10%; text-align:center;" title="选择">	
							<input type="checkbox" name="id" value="${guanbi.id}"	
								headerClass="sortable" />	
						</display:column>	
						<display:column title="名称" sortable="true"	
							style="width:15%; text-align:center;">	
                           ${guanbi.friqi}	
                        </display:column>	
						<display:column title="备注" sortable="true"	
							style="width:15%; text-align:center;">	
                           ${guanbi.triqi}	
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
var title = "系统关闭管理";	
$("#titleLabel").html(title);	
	
function query() {	
	var action = "<%=path%>/guanbi!queryGuanbi.action";	
	document.forms[0].action = action;	
	document.forms[0].submit();	
}	
	
function addGuanbi() {	
	var action = "<%=path%>/guanbi!toAddGuanbi.action";	
	document.forms[0].action = action;	
	document.forms[0].submit();	
}	
	
function delGuanbi() {	
	var num = isChecked();	
	if (num == 0) {	
		$.messager.alert('警告', '请选择要删除的记录！', 'warning');	
	} else {	
		$.messager.confirm('提示', '是否确认删除所选记录！', function(r) {	
			if (r) {	
	
				var action = "<%=path%>/guanbi!delGuanbi.action";	
				document.forms[0].action = action;	
				document.forms[0].submit();	
			}	
		});	
	}	
}	
	
function editGuanbi() {	
	var num = isChecked();	
	if (num == 0) {	
		$.messager.alert('警告', '请选择要编辑的记录！', 'warning');	
	} else {	
		if (num > 1) {	
			$.messager.alert('警告', '一次只能编辑一条记录！', 'warning');	
		} else {	
	
			var action = "<%=path%>/guanbi!toEditGuanbi.action";	
			document.forms[0].action = action;	
			document.forms[0].submit();	
	
		}	
	}	
}	
	
function viewGuanbi() {	
	var num = isChecked();	
	if (num == 0) {	
		$.messager.alert('警告', '请选择要查看的记录！', 'warning');	
	} else {	
		if (num > 1) {	
			$.messager.alert('警告', '一次只能查看一条记录！', 'warning');	
		} else {	
	
			var action = "<%=path%>/guanbi!viewGuanbi.action";	
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
