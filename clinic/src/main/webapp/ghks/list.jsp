<%@ page import="java.util.*" %>
<%@ page import="com.bsoft.mvc.bean.MsGhks" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<%
    List<MsGhks> ghksList=(List<MsGhks>)request
    	.getAttribute("ghksList");
    for(MsGhks m : ghksList){
%>
<tr>
<td><%=m.getKsdm() %></td>
<td><%=m.getKsmc() %></td>
<td><%=m.getPydm() %></td>
<td><%=m.getGhf() %></td>
<td><%=m.getZlf() %></td>
<td><%=m.getZjmz() %></td>
<td><%=m.getDdxx() %></td>
</tr>
<%} %>
</table>

</body>
</html>