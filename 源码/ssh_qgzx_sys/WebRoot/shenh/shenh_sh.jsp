
<%@include file="/common/sub_header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<form name="form1" action="gongzi!editGongzi.action" method="post">
	<input type="hidden" name="gongzi.sid" value="${shenq.id}" />
	<input type="hidden" name="gongzi.uid" value="${shenq.uid}" />
	<input type="hidden" name="gongzi.gid" value="${shenq.gid}" />
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
				名称：
			</td>
			<td width="30%" class="pad2 zi13">
			<input type="text" name="gongzi.name" value="${shenq.name}"
					maxlength="50" clazz="box1" readonly="readonly"/>

				

			</td>
		</tr>
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				单位：
			</td>
			<td width="30%" class="pad2 zi13">

			  
			    <input type="text" name="gongzi.danwei" value="${shenq.danwei}"
					maxlength="50" clazz="box1" readonly="readonly"/>


			</td>
		</tr>
		
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				薪酬(天)：
			</td>
			<td width="30%" class="pad2 zi13">

				<input type="text" name="gongzi.baochou"  id="gongzi.baochou" value="${shenq.baochou}"
					maxlength="50" clazz="box1" readonly="readonly"/>
				&nbsp;
			</td>
		</tr>
		
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				姓名：
			</td>
			<td width="30%" class="pad2 zi13">
		    <input type="text" name="gongzi.uname" value="${shenq.uname}"
					maxlength="50" clazz="box1" readonly="readonly"/>
			</td>
		</tr>
		
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				开始时间：
			</td>
			<td width="30%" class="pad2 zi13">
		    <input type="text" name="gongzi.bdate" 
					maxlength="50" clazz="box1"   class="Wdate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})"/>
			</td>
		</tr>
		
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				结束时间：
			</td>
			<td width="30%" class="pad2 zi13">
		    <input type="text" name="gongzi.edate" 
					maxlength="50" clazz="box1"   class="Wdate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})"/>
			</td>
		</tr>
		
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				天数：
			</td>
			<td width="30%" class="pad2 zi13">
		    <input type="text" name="gongzi.tians" id="gongzi.tians" 
					maxlength="50" clazz="box1" />
			</td>
		</tr>
		
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				最终工资：
			</td>
			<td width="30%" class="pad2 zi13">
		    <input type="text" name="gongzi.gongz"  id="gongzi.gongz" 
					maxlength="50" clazz="box1" />
			</td>
		</tr>
		
		
		
		<tr class="bgcolor">
			<td width="20%" align="right" class="zi13">
				评级：
			</td>
			<td width="30%" class="pad2 zi13">
		      <select name="gongzi.pingd" id="gongzi.pingd">
		         <option value="1.1">A 工资的110%</option>
		         <option value="1.0">B 工资的100%</option>
		         <option value="0.9">C 工资的90%</option>
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
