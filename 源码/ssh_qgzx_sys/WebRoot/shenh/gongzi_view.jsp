
<%@include file="/common/sub_header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<form name="form1" action="gongzi!editGongzi.action" method="post">
	
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
				<bean:message key='gongzi.title.info' bundle="label" />
			</td>
		</tr>
<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				姓名：
			</td>
			<td width="30%" class="pad2 zi13">
		   ${gongzi.uname}
			</td>
		</tr>
		




		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				岗位名称：
			</td>
			<td width="30%" class="pad2 zi13">
			${gongzi.name}

				

			</td>
		</tr>
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				单位：
			</td>
			<td width="30%" class="pad2 zi13">

			  
			   ${gongzi.danwei}


			</td>
		</tr>
		
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				薪酬(天)：
			</td>
			<td width="30%" class="pad2 zi13">

				${gongzi.baochou}
				&nbsp;
			</td>
		</tr>
		
		
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				开始时间：
			</td>
			<td width="30%" class="pad2 zi13">
			${gongzi.bdate}
		   
			</td>
		</tr>
		
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				结束时间：
			</td>
			<td width="30%" class="pad2 zi13">
			${gongzi.edate}
		   
			</td>
		</tr>
		
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				天数：
			</td>
			<td width="30%" class="pad2 zi13">
			${gongzi.tians}
	
			</td>
		</tr>
		
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				最终工资：
			</td>
			<td width="30%" class="pad2 zi13">
			${gongzi.gongz}
		  
			</td>
		</tr>
		
		
		
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				评级：
			</td>
			<td width="30%" class="pad2 zi13">
		      <c:if test="${gongzi.pingd=='1.1'}">
							   A
							</c:if>
							<c:if test="${gongzi.pingd=='1.0'}">
							   B
							</c:if>
							<c:if test="${gongzi.pingd=='0.9'}">
							   C
							</c:if>
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
						    <input type="button" class="buttonbg" onclick="calcgz();"
								value="工资计算" />
						    &nbsp;&nbsp;&nbsp;
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

	var tians=document.getElementById("gongzi.gongz").value;
   if(tians==""){
      $.messager.alert('警告', '工资不能为空！', 'warning');
      return;
   }

	document.forms[0].action = "<%=path%>/gongzi!addGongzi.action";
	document.forms[0].submit();
}

function calcgz(){
   var bc=document.getElementById("gongzi.baochou").value;
   var tians=document.getElementById("gongzi.tians").value;
   if(tians==""){
      $.messager.alert('警告', '天数不能为空！', 'warning');
      return;
   }
   var pingd=document.getElementById("gongzi.pingd").value;
   var gz=bc*tians*pingd;
   document.getElementById("gongzi.gongz").value=gz.toFixed(2);
}
</script>
