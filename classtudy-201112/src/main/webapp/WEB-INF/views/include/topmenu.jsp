<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.edu.member.domain.MemberDTO" %>
<%
	// 로그인 여부 체크할 변수 선언
	boolean isLogin = false;
	// 세션에 MemberDTO가 있는지 확인하고
	// 있으면 member의 name을 String으로 저장한다.
	String name = "";
	if(session.getAttribute("member") != null) {
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		name = member.getName();
		isLogin = true;
	}
%>

<nav class="navbar navbar-default navbar-stikcy-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle"
				data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>	
				<span class="icon-bar"></span>	
				<span class="icon-bar"></span>	
			</button>
			<a class="navbar-brand" href="/${path}">클래스터디</a>
		</div>
		<div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							커뮤니티 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="${path}/community/group">그룹</a></li>
							<li><a href="${path}/community/board">자유게시판</a></li>
						</ul>
					</li>
					<li>
						<a href="${path}/academy">학원</a>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							클래스 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="${path}/class/TIL">TIL</a></li>
							<li><a href="${path}/class/classRoom">클래스룸</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							내정보 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#">
									회원정보 <span class="caret"></span>
								</a>
								<ul class="dropdown-submenu">
									<li><a href="${path}/mypage/myInfo">내정보확인</a></li>
									<li><a href="${path}/mypage/updateInfo">정보 수정하기</a></li>
									<li><a href="${path}/mypage/delete">탈퇴하기</a></li>
								</ul>
							</li>
							<li><a href="${path}/mypage/job">이력서&포폴</a></li>
						</ul>
					</li>
					<% if (isLogin) { %>
						<li><a><span class="glyphicon glyphicon-user"></span> <%=name%>님, 환영합니다</a></li>
						<li><a href="${path}/member/logout"><span class="glyphicon glyphicon-log-out"></span> 로그아웃</a></li>
					<% } else { %>
						<li><a href="${path}/member/login"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
						<li><a href="${path}/member/register"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
					<% } %>
				</ul>
			</div>
		</div>
	</div>
</nav>