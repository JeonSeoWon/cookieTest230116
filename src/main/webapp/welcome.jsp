<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 환영</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies(); //배열로 빼야된다.
		
		for(int i=0;i<cookies.length;i++) {
			
			String cookiValue = cookies[i].getValue();  //쿠키의 값
			String cookiName = cookies[i].getName();  //쿠키의 이름
			int cookiAge = cookies[i].getMaxAge();  //쿠키의 유효시간
			
			
			out.println(cookiValue + "<br>");
			out.println("-----------------------<br>");
			out.println(cookiName + "<br>");
			out.println("-----------------------<br>");
			out.println(cookiAge + "<br>");
			out.println("-----------------------<br>");
			
			//if(cookiValue.equals("tiger")) {
			//	out.println(cookiValue + "님 안녕하세요. 로그인하셨습니다.");	
			//}
			
			
			
		}
		
	%>
	
	<a href="logout.jsp">로그아웃</a>
	 
	 
</body>
</html>