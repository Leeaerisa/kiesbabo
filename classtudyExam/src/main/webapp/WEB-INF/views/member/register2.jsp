<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="layoutTag" tagdir="WEB-INF/tags" %>
<layoutTag:layout> --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
<%@ include file="../include/topmenu.jsp" %>
	<div class="container">
		<form class="form-horizontal" action="/member/register" method="post" name="memberForm">
			<div class="form-group">
				<div class="col-sm-0"></div>
				<div class="col-sm-12">
					<h2 align="center">회원가입</h2>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">아이디</label>
				<div class="col-sm-3">
					<input type="text" id="userid" name="userid" class="form-control" maxlength=16 placeholder="아이디를 입력하세요."/>
					<div class="text-center small mt-2" id="checkMsg" style="color: red"></div>
				</div>
				<div class="col-sm-2">
					<button class="idCheck form-control" type="button" id="idCheck" onclick="dupCheck(this.form)" value="N"
						style="background-color: #dddddd"><b>중복검사</b></button>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">비밀번호</label>
				<div class="col-sm-3">
					<input type="password" id="passwd" name="passwd" class="form-control" placeholder="비밀번호를 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">비밀번호확인</label>
				<div class="col-sm-3">
					<input type="password" id="passwdCheck" name="passwdCheck" class="form-control" placeholder="비밀번호를 한 번 더 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">이  름</label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control" maxlength=16 placeholder="이름을 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">생년월일</label>
				<!-- 
				<div class="col-sm-3">
					<input type="text" id="dateOfBirth" name="dateOfBirth" class="form-control" maxlength=16 placeholder="생년월일을 입력하세요."/>
				</div>
				 -->
				<div class="col-sm-2">
					<div class="input-group">
						<select class="form-control" name="birthYear" style="width: 100%;">
							<% for(int i = 2000; i >= 1970; i--) { %>
							<option value="<%= i %>"><%= i %></option>
							<% } %>
						</select>
						<span class="input-group-addon">년</span>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="input-group">
						<select class="form-control" name="birthMonth" style="width: 100%;">
							<% for(int i = 1; i <= 12; i++) { %>
							<option value="<%= i %>"><%= i %></option>
							<% } %>
						</select>
						<span class="input-group-addon">월</span>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="input-group">
						<select class="form-control" name="birthDay" style="width: 100%;">
							<% for(int i = 1; i <= 31; i++) { %>
							<option value="<%= i %>"><%= i %></option>
							<% } %>
						</select>
						<span class="input-group-addon">일</span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">성  별</label>
					<div class="control-form col-sm-3">
						<label for="gender-M"><input type="radio" id="gender" name="gender" value="M" checked> 남성</label>
						<label for="gender-F"><input type="radio" id="gender" name="gender" value="F"> 여성</label>
					</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">전화번호</label>
				<div class="col-sm-2">
					<select class="form-control" name="tel1" id="tel1">
						<option value="010">010</option>
						<option value="011">011</option>
					</select>
				</div>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="tel2" id="tel2" maxlength="4">
				</div>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="tel3" id="tel3" maxlength="4">
				</div>
				<!-- 
				<div class="col-sm-3">
					<input type="text" id="tel" name="tel" class="form-control" maxlength=16 placeholder="전화번호를 입력하세요."/>
				</div>
				 -->
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">우편번호</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="zipcode" id="zipcode" readonly="readonly"/>
				</div>
				<div class="col-sm-3">
					<input type="button" class="form-control" onclick="daumZipCode()" value="우편번호 찾기"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">주  소</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="address" id="address"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">상세 주소</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="addressDetail" id="addressDetail"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">이메일</label>
				<div class="col-sm-4">
					<input type="text" id="email" name="email" class="form-control" placeholder="이메일을 입력하세요."/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-0 col-sm-12" style="text-align: center;">
					<button type="button" class="btn btn-success"
						onclick="registerCheckForm(this.form)">회원가입</button>&nbsp;
					<button type="button" class="btn btn-warning cancel">취소</button>
				</div>
			</div>
		</form>
	</div>

	
	
	<%@ include file="../include/footer.jsp" %>
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/static/js/csfunction.js"></script>
	<script src="/static/js/BootConfirm.js"></script>
	<script>
	$(document).ready(function() {
		
		// 취소 버튼을 눌렀을 경우
		/*$(".cancel").on("click", function() {
			location.href ="/member/login";
		});*/
		$(".cancel").BootConfirm({
			complete:function(){
				
			}
		})
		
	});

	// 우편번호 및 주소 검색 API
	function daumZipCode() {
		new daum.Postcode({
			oncomplete: function(data) {
				//팝업창에서 검색한 결과 중 항목을 클릭하였을 경우에 
				//실행할 코드를 이곳에 작성한다.

				//각 주소의 노출 규칙에 따라 주소를 조합한다.
				//내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로,
				//이름 참고하여 분기한다.
				var fullAddr = '';	//최종 주소 변수
				var subAddr = ''; //조합형 주소 변수

				//사용자가 선택한 주소의 타입에 따라서 해당 주소값을 가져온다.
				if(data.userSelectedType == 'R') { //도로명 주소를 선택한 경우
					fullAddr = data.roadAddress;
				} else { //지번 주소를 선택한 경우
					fullAddr = data.jibunAddress;
				}

				//사용자가 선택한 주소가 도로명 타입일 때 조합한다.
				if(data.userSelectedType == 'R') {
					//법정동명이 있을 경우 추가한다.
					if(data.bname != '') {
						subAddr += data.bname;
					}
					//건물명이 있을 경우에 추가한다.
					if(data.buildingName != '') {
						subAddr += (subAddr != '' ? ', ' + data.buildingName : data.buildingName);
					}
					//조합형 주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
					fullAddr += (subAddr != '' ? ' (' + subAddr + ')' : '');
				}
				//우편번호와 주소정보를 해당 필드에 나타낸다.
				//5자리의 새 우편번호
				document.getElementById('zipcode').value = data.zonecode; 
				document.getElementById('address').value = fullAddr;
				//커서를 상세주소 입력필드로 이동시킨다.
				document.getElementById('addressDetail').focus();
			}
		}).open();
	}
	</script>
</body>
</html>
<%-- </layoutTag:layout>  --%>