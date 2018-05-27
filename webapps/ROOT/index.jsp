<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"
	errorPage="../include/error.jsp"%>

<%@ page import="java.util.Enumeration"%>
<%@ page import="java.util.Locale"%>

<html>
<head>
<title>JSP获取系统信息</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<style>
table td {
	font-size: 10.5pt;
}

.black12 {
	font-size: 12px;
	color: #000000;
	text-decoration: none;
}

.black12 a {
	color: #000000;
}

.black12 a:hover {
	color: #0048bf;
}
</style>
</head>
<body text="#000000" style="margin:0px auto; padding: 0px;">
	<table cellspacing="0" cellpadding="0" width="800px" height="98%"
		style="padding: 0px; margin: 0px auto;">
		<tbody>
			<tr>
				<td width="100%" valign="top">
					<table width="100%" height="100%"
						style="padding: 0px; margin: 0px;">
						<!-- 两行 -->

						<!-- 路径 begin -->
						<tr>
							<td>
								<table width="100%" height="39px" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td id="path" class="black12">系统所有属性</td>
									</tr>
								</table>
							</td>
						</tr>
						<!-- 路径 end -->

						<!-- 正文 begin -->
						<tr>
							<td style="height: 100%;" width="100%">
								<table width="100%" height="100%" bgColor="#FFFFFF"
									style="border: 1px #aac9e8 solid" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="10"></td>
									</tr>
									<tr>
										<td height="30"><strong>全部系统属性</strong></td>
									</tr>
									<tr>
										<td bgcolor="#aaaaaa" height="1"></td>
									</tr>
									<tr>
										<td height="20"></td>
									</tr>
									<tr>
										<td>所有的系统属性，即 <b><i>System.getProperties()</i></b> 的输出。
										</td>
									</tr>
									<tr>
										<td height="10"></td>
									</tr>
									<tr>
										<td class="block-indent" style="padding-left: 10px">
											<table width="98%" border="0" cellspacing="1" cellpadding="2"
												bgcolor="#999999">
												<tr bgcolor="#CCCCCC">
													<th width="5%">&nbsp;</th>
													<th width="20%" nowrap>属性名</th>
													<th width="75%" nowrap>属性值</th>
												</tr>
												<%
int iCount = 1;
Enumeration enu = System.getProperties().keys();
while(enu.hasMoreElements())
{
String sKey = (String) enu.nextElement();
String sVal = System.getProperty(sKey);
%>
												<tr bgcolor="#FFFFFF">
													<td align="center"><%= iCount++ %>&nbsp;</td>
													<td><%= sKey %></td>
													<td style="word-break: break-all;"><%= sVal %></td>
												</tr>
												<%
}
%>
												<tr bgcolor="#FFFFFF">
													<td align="right"><%= iCount++ %>&nbsp;</td>
													<td>Default Locale</td>
													<td><%= Locale.getDefault() %></td>
												</tr>
												<%
Runtime runtimeInfo = Runtime.getRuntime();
long unitMb = 1204 * 1024L;
%>
												<tr bgcolor="#FFFFFF">
													<td align="right"><%= iCount++ %>&nbsp;</td>
													<td>TotalMemory</td>
													<td><%=runtimeInfo.totalMemory()/unitMb%>(M)</td>
												</tr>
												<tr bgcolor="#FFFFFF">
													<td align="right"><%= iCount++ %>&nbsp;</td>
													<td>FreeMemory</td>
													<td><%=runtimeInfo.freeMemory()/unitMb%>(M)</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<!-- 正文 end -->
					</table>
				</td>

				<!-- 侧边 begin -->

				<td width="7px" height="100%" valign="right" rowspan=2>&nbsp;</td>
			</tr>
			<!-- 侧边 end -->
		</tbody>
	</table>
</body>
</html>