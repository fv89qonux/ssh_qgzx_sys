<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
	String applicationPath = basePath + "/" + "application";
%>
<html>
	<head>
		<title>菜单左侧页面</title>

		<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background: #add2da;
}

.STYLE3 {
	font-size: 12px;
	color: #435255;
}

.STYLE4 {
	font-size: 12px
}

.STYLE5 {
	font-size: 12px;
	font-weight: bold;
}
-->
</style>
	</head>
	<body>
		<body style="overflow-x: hidden;">


			<table width="147" height="100%" border="0" align="center"
				cellpadding="0" cellspacing="0">

				<tr>
					<td height="23" background="images/main_34.gif">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="9%">
									&nbsp;
								</td>
								<td width="83%">
									<div align="center" class="STYLE5">
										岗位管理
									</div>
								</td>
								<td width="8%">
									&nbsp;
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td valign="top">
						<div align="center">
							<table width="82%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td height="38">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">

											<c:if
												test="${currentUser.userType == '用人单位' || currentUser.userType == '管理员'}">
												<tr>
													<td width="33" height="28">
														<img src="images/main_48.gif" width="28" height="28">
													</td>
													<td width="99">
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td height="23" class="STYLE4" style="cursor: hand"
																	onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
																	onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
																	<a href="<%=path%>/gangwei!queryGangwei.action"
																		target="mainFrame">发布岗位</a>
																</td>
															</tr>
														</table>
													</td>
												</tr>

											</c:if>

											<c:if
												test="${currentUser.userType == '学生处' || currentUser.userType == '管理员'}">
												<tr>
													<td width="33" height="28">
														<img src="images/main_48.gif" width="28" height="28">
													</td>
													<td width="99">
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td height="23" class="STYLE4" style="cursor: hand"
																	onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
																	onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
																	<a href="<%=path%>/gangwei!queryGangweiSp.action"
																		target="mainFrame">岗位审批</a>
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</c:if>








										</table>
									</td>
								</tr>




							</table>



							<table width="147" height="100%" border="0" align="center"
								cellpadding="0" cellspacing="0">



								<tr>
									<td height="23" background="images/main_34.gif">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td width="9%">
													&nbsp;
												</td>
												<td width="83%">
													<div align="center" class="STYLE5">
														学生申请岗位管理
													</div>
												</td>
												<td width="8%">
													&nbsp;
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td valign="top">
										<div align="center">
											<table width="82%" border="0" align="center" cellpadding="0"
												cellspacing="0">

												<c:if
													test="${currentUser.userType == '学生' || currentUser.userType == '管理员'}">
													<tr>
														<td width="33" height="28">
															<img src="images/main_48.gif" width="28" height="28">
														</td>
														<td width="99">
															<table width="100%" border="0" cellspacing="0"
																cellpadding="0">
																<tr>
																	<td height="23" class="STYLE4" style="cursor: hand"
																		onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
																		onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
																		<a href="<%=path%>/gangwei!queryGangweiTG.action"
																			target="mainFrame">岗位申请</a>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td width="33" height="28">
															<img src="images/main_48.gif" width="28" height="28">
														</td>
														<td width="99">
															<table width="100%" border="0" cellspacing="0"
																cellpadding="0">
																<tr>
																	<td height="23" class="STYLE4" style="cursor: hand"
																		onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
																		onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
																		<a href="<%=path%>/shenq!queryMySq.action"
																			target="mainFrame">我的申请</a>
																	</td>
																</tr>
															</table>
														</td>
													</tr>

												</c:if>


												<c:if
													test="${currentUser.userType == '学生处' || currentUser.userType == '管理员'}">
													<tr>
														<td width="33" height="28">
															<img src="images/main_48.gif" width="28" height="28">
														</td>
														<td width="99">
															<table width="100%" border="0" cellspacing="0"
																cellpadding="0">
																<tr>
																	<td height="23" class="STYLE4" style="cursor: hand"
																		onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
																		onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
																		<a href="<%=path%>/shenq!queryShenq.action"
																			target="mainFrame">学生处审批申请</a>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
												</c:if>
												<c:if
													test="${currentUser.userType == '用人单位' || currentUser.userType == '管理员'}">



													<tr>
														<td width="33" height="28">
															<img src="images/main_48.gif" width="28" height="28">
														</td>
														<td width="99">
															<table width="100%" border="0" cellspacing="0"
																cellpadding="0">
																<tr>
																	<td height="23" class="STYLE4" style="cursor: hand"
																		onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
																		onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
																		<a href="<%=path%>/shenq!queryShenqDW.action"
																			target="mainFrame">单位审批申请</a>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
												</c:if>

											</table>



											<table width="147" height="100%" border="0" align="center"
												cellpadding="0" cellspacing="0">
<c:if test="${currentUser.userType == '用人单位' || currentUser.userType == '管理员'}">
												<tr>
													<td height="23" background="images/main_34.gif">
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td width="9%">
																	&nbsp;
																</td>
																<td width="83%">
																	<div align="center" class="STYLE5">
																		考核工资管理
																	</div>
																</td>
																<td width="8%">
																	&nbsp;
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td valign="top">
														<div align="center">
															<table width="82%" border="0" align="center"
																cellpadding="0" cellspacing="0">
																<tr>
																	<td height="38">
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="0">


																			
																				<tr>
																					<td width="33" height="28">
																						<img src="images/main_48.gif" width="28"
																							height="28">
																					</td>
																					<td width="99">
																						<table width="100%" border="0" cellspacing="0"
																							cellpadding="0">
																							<tr>
																								<td height="23" class="STYLE4"
																									style="cursor: hand"
																									onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
																									onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
																									<a href="<%=path%>/shenq!queryShenqSH.action"
																										target="mainFrame">单位审核工资</a>
																								</td>
																							</tr>
																						</table>
																					</td>
																				</tr>

																			</c:if>




																			<c:if
																				test="${currentUser.userType == '用人单位' || currentUser.userType == '管理员' || currentUser.userType == '学生处'}">
																				<tr>
																					<td width="33" height="28">
																						<img src="images/main_48.gif" width="28"
																							height="28">
																					</td>
																					<td width="99">
																						<table width="100%" border="0" cellspacing="0"
																							cellpadding="0">
																							<tr>
																								<td height="23" class="STYLE4"
																									style="cursor: hand"
																									onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
																									onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
																									<a href="<%=path%>/gongzi!queryGongzi.action"
																										target="mainFrame">勤工俭学工资</a>
																								</td>
																							</tr>
																						</table>
																					</td>
																				</tr>
																		</table>
																	</td>
																</tr>
																</c:if>

															</table>



															<table width="147" height="100%" border="0"
																align="center" cellpadding="0" cellspacing="0">

																<tr>
																	<td height="23" background="images/main_34.gif">
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="0">
																			<tr>
																				<td width="9%">
																					&nbsp;
																				</td>
																				<td width="83%">
																					<div align="center" class="STYLE5">
																						个人信息管理
																					</div>
																				</td>
																				<td width="8%">
																					&nbsp;
																				</td>
																			</tr>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td valign="top">
																		<div align="center">
																			<table width="82%" border="0" align="center"
																				cellpadding="0" cellspacing="0">
																				<tr>
																					<td height="38">
																						<table width="100%" border="0" cellspacing="0"
																							cellpadding="0">

																							<tr>
																								<td width="33" height="28">
																									<img src="images/main_48.gif" width="28"
																										height="28">
																								</td>
																								<td width="99">
																									<table width="100%" border="0" cellspacing="0"
																										cellpadding="0">
																										<tr>
																											<td height="23" class="STYLE4"
																												style="cursor: hand"
																												onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
																												onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
																												<a
																													href="<%=path%>/loginuser!toLoginuserInfo.action"
																													target="mainFrame">个人信息维护</a>
																											</td>
																										</tr>

																									</table>
																								</td>
																							</tr>
																						</table>
																					</td>
																				</tr>


																			</table>


																			<c:if test="${currentUser.userType == '管理员'}">
																				<table width="147" height="100%" border="0"
																					align="center" cellpadding="0" cellspacing="0">

																					<tr>
																						<td height="23" background="images/main_34.gif">
																							<table width="100%" border="0" cellspacing="0"
																								cellpadding="0">
																								<tr>
																									<td width="9%">
																										&nbsp;
																									</td>
																									<td width="83%">
																										<div align="center" class="STYLE5">
																											系统管理
																										</div>
																									</td>
																									<td width="8%">
																										&nbsp;
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td valign="top">
																							<div align="center">
																								<table width="82%" border="0" align="center"
																									cellpadding="0" cellspacing="0">
																									<tr>
																										<td height="38">
																											<table width="100%" border="0"
																												cellspacing="0" cellpadding="0">

																												<tr>
																													<td width="33" height="28">
																														<img src="images/main_48.gif" width="28"
																															height="28">
																													</td>
																													<td width="99">
																														<table width="100%" border="0"
																															cellspacing="0" cellpadding="0">
																															<tr>
																																<td height="23" class="STYLE4"
																																	style="cursor: hand"
																																	onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "
																																	onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
																																	<a
																																		href="<%=path%>/loginuser!queryLoginuser.action"
																																		target="mainFrame">用户管理</a>
																																</td>
																															</tr>


																														</table>
																													</td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																									
																									<tr>
																				 
																									</tr>




																								</table>
																								</c:if>
		</body>
</html>
