<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<%
	request.setCharacterEncoding("euc-kr");
	
	//���̵� ���� üũ �ڽ��� üũ�Ǿ����� �Ǵ� ����
	String save =request.getParameter("save");
	
	String id = request.getParameter("id");
	
	//üũ�Ǿ������� �� �Ǵ�.
	if(save != null) { //���̵� ������ �����ٸ�
		
	}


	//��Ű�� ����Ϸ��� - ��Ű Ŭ������ �������־�� ��. 
	//1��° String Ű���� ������.
	//2��°�� value ���� �־��ش�.
	//��Ű ����ð� ����
	//Cookie cookie = new Cookie("a","1234"); 
	Cookie cookie = new Cookie(id,"1234"); 
	
	
	
	//��Ű ��ȿ�ð� ����
	cookie.setMaxAge(60*1); //1�а� ��ȿ
	
	//����ڿ��� ��Ű ���� �Ѱ���.
	response.addCookie(cookie);

%>
	��Ű �����Ϸ�

<body>

</body>
</html>