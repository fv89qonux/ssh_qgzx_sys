<%@include file="/common/sub_header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<form name="form1" action="gongzi!queryGongzi.action"
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



				<input type="text" name="gongzi.name" value="${gongzi.name}"
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
							<img src="<%=path%>/images/chakan.gif" width="14" height="14">
						</td>
						<td width="35">
							<a href="#" onclick="viewGongzi();">查看</a>
						</td>
					</tr>


				</table>
			</td>
		</tr>
		<tr>
			<td>
				<fmt:bundle basename="global_resources">
					<display:table style="width:100%; text-align:center;"
						name="gongzi_list" class="simple" excludedParams="method"
						id="gongzi" pagesize="10" partialList="true" defaultsort="1"
						defaultorder="descending" size="resultSize"
						requestURI="gongzi!queryGongzi.action">
						<display:column style="width:10%; text-align:center;" title="选择">
							<input type="checkbox" name="id" value="${gongzi.id}"
								headerClass="sortable" />
						</display:column>
						<display:column title="名称" sortable="true"
							style="width:10%; text-align:center;">
                           ${gongzi.name}
                        </display:column>
                        <display:column title="从业人" sortable="true"
							style="width:10%; text-align:center;">
                           ${gongzi.uname}
                        </display:column>
                        <display:column title="天数" sortable="true"
							style="width:10%; text-align:center;">
                           ${gongzi.tians}
                        </display:column>
                        <display:column title="工资" sortable="true"
							style="width:10%; text-align:center;">
                           ${gongzi.gongz}
                        </display:column>
                        <display:column title="评级" sortable="true"
							style="width:10%; text-align:center;">
							<c:if test="${gongzi.pingd=='1.1'}">
							   A
							</c:if>
							<c:if test="${gongzi.pingd=='1.0'}">
							   B
							</c:if>
							<c:if test="${gongzi.pingd=='0.9'}">
							   C
							</c:if>
							
                           
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
  var title = "勤工俭学工资";
  $("#titleLabel").html(title);
  
  function query(){
      var action = "<%=path%>/gongzi!queryGongzi.action";
      document.forms[0].action= action;
      document.forms[0].submit();
  }
  
  function addGongzi(){
      var action = "<%=path%>/gongzi!toAddGongzi.action";
      document.forms[0].action= action;
      document.forms[0].submit();
  }
  
  function delGongzi(){
    var num = isChecked();
    if(num==0){
    	$.messager.alert('警告','请选择要删除的记录！','warning');
    }else{
    	$.messager.confirm('提示','是否确认删除所选记录！',function(r){
			if (r){

			     var action = "<%=path%>/gongzi!delGongzi.action";
			      document.forms[0].action= action;
			      document.forms[0].submit();
			}
	    });
    }
  }
  
  function editGongzi(){
    var num = isChecked();
    if(num==0){
    	$.messager.alert('警告','请选择要编辑的记录！','warning');
    }else{
    	if(num > 1){
    	    $.messager.alert('警告','一次只能编辑一条记录！','warning');
    	}else{

				     var action = "<%=path%>/gongzi!toEditGongzi.action";
			      document.forms[0].action= action;
			      document.forms[0].submit();

    	}
    }
  }
  
  function viewGongzi(){
    var num = isChecked();
    if(num==0){
    	$.messager.alert('警告','请选择要查看的记录！','warning');
    }else{
    	if(num > 1){
    	   $.messager.alert('警告','一次只能查看一条记录！','warning');
    	}else{


						     var action = "<%=path%>/gongzi!viewGongzi.action";
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