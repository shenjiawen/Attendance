<% 
	String sid = request.getParameter("pid");//用request得到 
%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body bgcolor="#FFFFFF" topmargin="5" link="#009900">

	<OBJECT classid="clsid:A318A9AC-E75F-424C-9364-6B40A848FC6B" width=2
		height=2 id=zkonline> </OBJECT>

	<COMMENT> <EMBED type="application/x-eskerplus"
		classid="clsid:A318A9AC-E75F-424C-9364-6B40A848FC6B"
		codebase="ZKOnline.ocx" width=2 height=2>
	</EMBED> </COMMENT>

	<script language="javascript1.1">
	function submitRegister(){
		if (navigator.appName == "Microsoft Internet Explorer")	{
			if (typeof zkonline.RegisterTemplate != "undefined") {
				if (document.logon.C1.checked == true) {				
					if (zkonline.Register()){
					   document.logon.fingertemplate.value=zkonline.RegisterTemplate;
					}else
					   document.logon.fingertemplate.value="";
				} else {				
					document.logon.fingertemplate.value="";					
				}				
			} else {

				var errnum = "0";
				var emessage = "无法新建用户";
				var etips = "请检查确认已安装ZKOnline客户端和指纹设备已连接.";
				var msg = errnum + emessage + etips;
				alert(msg);
			}
		} else {
			if (window["zkonline"]) {
				if (document.logon.C1.checked == true) {
					if (zkonline.Register())
					   document.logon.fingertemplate.value=zkonline.RegisterTemplate;
					else
					   document.logon.fingertemplate.value="";
				} else {
					document.logon.fingertemplate.value="";
				}
			} else {
				var errnum = "0";
				var emessage = "无法新建用户";
				var etips = "请检查确认已安装ZKOnline客户端和指纹设备已连接.";
				var msg = errnum + emessage + etips;
				alert(msg);
			}
		} 

	}
	
	function checkresults(){
		if(document.logon.fingertemplate.value!=""){
		alert("Successful fingerprint collection");
		window.close();
		logon.submit();
		}else{
			alert("No fingerprints were collected");
		}
	}
	</script>
	<div align="center" class="text">
		<table width="749" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td colspan="4" height="55">
					<table width="98%" border="0" cellspacing="0" cellpadding="0"
						align="center">
						<tr>
							<td rowspan="2" width="23%"><img src=./static/img/logo.gif
								width="116" height="72"></td>
							<td width="67%" height="2">&nbsp;</td>
							<td width="10%" height="2">&nbsp;</td>
						</tr>
						<tr>
							<td width="67%"><img src=./static/img/title-.gif width="466"
								height="60"></td>
							<td width="10%"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<table border=0 cellpadding=0 cellspacing=0 width="750" height="463"
			align="center">
			<tbody>
				<tr>
					<td bgcolor=#99CCFF height=474 valign=top width=156><br>
					<td background="./static/img/dotline_back.gif" height=474 valign=top
						width=4></td>
					<td colspan=2 height=474 valign=top width=590>
						<table width="97%" border="0" cellspacing="0" cellpadding="0"
							align="center" class="text">
							<tr>
								<td width="1%" height="328">
									<div align="center"></div>
								</td>
								<td colspan="2" class="text" height="328">
									<div align="left" class="text">
										<center>
											<font face="Verdana, Arial"><b> </b></font>
											<center>
												<h2 align="left" class="text">
													<font face="Verdana, Arial" color="#FF9900"> </font><font
														color="#FF9900"><br> <span class="text"><span
															class="text"><font size="4" color="#FF6600">Register
															</font></span></span></font>
												</h2>
												<div align="left">
													<br>
													<FORM method="post" id="logon" name="logon"
														action="regedit?sid=<%=sid %>">
														<table width="80%" border="1" cellspacing="0"
															cellpadding="0" align="center" bordercolorlight="#000000"
															bordercolordark="#FFFFFF" class="text">
															<tr valign=top width="40%">
																			<td align=right width="19%">
																				<div align="right" class="text">
																					<b><br> GradeId:</b>
																				</div>
																			</td>
																			<td width="34%"><br> <%=sid%>
																			</td>
																		</tr>
															<input type="hidden" name="fingertemplate"
																id="fingertemplate">
															<tr>
																<td colspan="2" height="43" class="text" rowspan="2">
																	<font size="2"> <input id="regfinger" name="C1"
																		type="checkbox" value="ON" onClick="submitRegister()">
																		<span class="text"> Import Finger</span></font><font size="2"></font><font
																	size="2"></font>
																</td>
															</tr>
															<tr>
																<td colspan="3" bgcolor="#efefef" height="37">
																	<div align="center">
																		<input type="button" value="submit" id="submit1"
																			onClick="checkresults()" name="B1">
																	</div>
																</td>
															</tr>
														</table>
													</FORM>
												</div>
											</center>
										</center>
									</div>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
