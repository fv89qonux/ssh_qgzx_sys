<%@include file="/common/sub_header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<form name="form1" action="gangwei!queryGangwei.action"
	method="post">
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



				<input type="text" name="gangwei.name" value="${gangwei.name}"
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
					<tr>
						<td width="20">
							<img src="<%=path%>/images/tianjia.gif" width="15" height="15">
						</td>
						<td width="35">
							<a href="#" onclick="addGangwei();">发布</a>
						</td>
						<td width="20">
							<img src="<%=path%>/images/bianji.gif" width="14" height="14">
						</td>
						<td width="35">
							<a href="#" onclick="editGangwei();">编辑</a>
						</td>
						<td width="20">
							<img src="<%=path%>/images/shanchu.gif" width="14" height="14">
						</td>
						<td width="35">
							<a href="#" onclick="delGangwei();">删除</a>
						</td>
						<td width="20">
							<img src="<%=path%>/images/chakan.gif" width="14" height="14">
						</td>
						
					</tr>


				</table>
			</td>
		</tr>
		<tr>
			<td>
				<fmt:bundle basename="global_resources">
					<display:table style="width:100%; text-align:center;"
						name="gangwei_list" class="simple" excludedParams="method"
						id="gangwei" pagesize="10" partialList="true" defaultsort="1"
						defaultorder="descending" size="resultSize"
						requestURI="gangwei!queryGangwei.action">
						<display:column style="width:10%; text-align:center;" title="选择">
							<input type="checkbox" name="id" value="${gangwei.id}"
								headerClass="sortable" />
						</display:column>
						<display:column title="岗位名称" sortable="true"
							style="width:15%; text-align:center;">
                           ${gangwei.name}
                        </display:column>
                        <display:column title="发布单位" sortable="true"
							style="width:15%; text-align:center;">
                           ${gangwei.danwei}
                        </display:column>
                        <display:column title="发布日期" sortable="true"
							style="width:15%; text-align:center;">
                           ${gangwei.riqi}
                        </display:column>
                        <display:column title="状态" sortable="true"
							style="width:15%; text-align:center;">
                           ${gangwei.shenpi}
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
  var title = "发布岗位";
  $("#titleLabel").html(title);
  
  function query(){
      var action = "<%=path%>/gangwei!queryGangwei.action";
      document.forms[0].action= action;
      document.forms[0].submit();
  }
  
  function addGangwei(){
      var action = "<%=path%>/gangwei!toAddGangwei.action";
      document.forms[0].action= action;
      document.forms[0].submit();
  }
  
  function delGangwei(){
    var num = isChecked();
    if(num==0){
    	$.messager.alert('警告','请选择要删除的记录！','warning');
    }else{
    	$.messager.confirm('提示','是否确认删除所选记录！',function(r){
			if (r){

			     var action = "<%=path%>/gangwei!delGangwei.action";
			      document.forms[0].action= action;
			      document.forms[0].submit();
			}
	    });
    }
  }
  
  function editGangwei(){
    var num = isChecked();
    if(num==0){
    	$.messager.alert('警告','请选择要编辑的记录！','warning');
    }else{
    	if(num > 1){
    	    $.messager.alert('警告','一次只能编辑一条记录！','warning');
    	}else{

				     var action = "<%=path%>/gangwei!toEditGangwei.action";
			      document.forms[0].action= action;
			      document.forms[0].submit();

    	}
    }
  }
  
  function viewGangwei(){
    var num = isChecked();
    if(num==0){
    	$.messager.alert('警告','请选择要查看的记录！','warning');
    }else{
    	if(num > 1){
    	   $.messager.alert('警告','一次只能查看一条记录！','warning');
    	}else{


						     var action = "<%=path%>/gangwei!viewGangwei.action";
			      document.forms[0].action= action;
			      document.forms[0].submit();
    	}
    }
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