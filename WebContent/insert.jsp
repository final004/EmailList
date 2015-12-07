<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hanains.emaillist.dao.EmailListDao"%>
<%@ page import="com.hanains.emaillist.vo.EmailListVo"%>

<% 
	request.setCharacterEncoding("UTF-8");
	String firstName = request.getParameter("fn");
	String lastName = request.getParameter("ln");
	String email = request.getParameter("email");
	
	EmailListVo vo = new EmailListVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	EmailListDao dao = new EmailListDao();
	dao.insert(vo);
	
	response.sendRedirect("/emaillist");
%>