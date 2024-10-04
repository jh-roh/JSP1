<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<%
	request.setCharacterEncoding("euc-kr");
	
	//아이디 저장 체크 박스가 체크되었는지 판단 여부
	String save =request.getParameter("save");
	
	String id = request.getParameter("id");
	
	//체크되었는지를 비교 판단.
	if(save != null) { //아이디 저장이 눌렀다면
		
	}


	//쿠키를 사용하려면 - 쿠키 클래스를 생성해주어야 함. 
	//1번째 String 키값을 적어줌.
	//2번째는 value 값을 넣어준다.
	//쿠키 만료시간 적용
	//Cookie cookie = new Cookie("a","1234"); 
	Cookie cookie = new Cookie(id,"1234"); 
	
	
	
	//쿠키 유효시간 설정
	cookie.setMaxAge(60*1); //1분간 유효
	
	//사용자에게 쿠키 값을 넘겨줌.
	response.addCookie(cookie);

%>
	쿠키 생성완료

<body>

</body>
</html>