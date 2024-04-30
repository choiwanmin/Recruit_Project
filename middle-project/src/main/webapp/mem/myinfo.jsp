<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>내정보 확인</title>
<script type="text/javascript">
window.onload = () => {
	let val = '기업';
	if('${m.type}'=='1'){
		val = '구직자';
	}
	document.getElementById('type').innerHTML = val;
}
</script>
</head>
<body>
<h3>내 정보 확인</h3>
<c:if test="${sessionScope.loginType == '구직자' }">
<div style="display:flex; justify-content:center; margin-top: 50px">
  <div style="display:inline-block"><h4>구직자 정보</h4></div>	
</div>
<div style="display:flex;">
<form action="${pageContext.request.contextPath }/mem/editmyinfo.do"  style="padding: 20px">
<div style="display: none" id="type">
TYPE
</div>
<div style="width:600px; display:flex;">
<table style="padding: 40px; width: 600px">
<tr><th>ID</th><td><input class="form-control form-control-lg" type="text" placeholder=".form-control-lg" aria-label=".form-control-lg example" name="id" value="${m.id }" readonly></td></tr>
<tr><th>PWD</th><td><input class="form-control form-control-lg" type="text" placeholder=".form-control-lg" aria-label=".form-control-lg example" name="pwd" value="${m.pwd }" readonly></td></tr>
<tr><th>전화번호</th><td><input class="form-control form-control-lg" type="text" placeholder="UserTel..." aria-label=".form-control-lg example"name="usertel" value="${p.usertel }" readonly></td></tr>
<tr><th>이메일</th><td><input class="form-control form-control-lg" type="text" placeholder="Email" aria-label=".form-control-lg example" name="email" value="${p.email }" readonly></td></tr>
<tr><th>학력</th><td><input class="form-control form-control-lg" type="text" placeholder="학력을 등록하세요.." aria-label=".form-control-lg example" name="education" value="${p.education }" readonly></td></tr>
<tr><th>경력</th><td><input class="form-control form-control-lg" type="text" placeholder="경력을 입력하세요.." aria-label=".form-control-lg example" name="career" value="${p.career }" readonly></td></tr>
<tr><th>활용기술</th><td><input class="form-control form-control-lg" type="text" placeholder="활용가능 스킬.." aria-label=".form-control-lg example" name="skill" value="${p.skill }" readonly></td></tr>
<tr><th>성별</th><td><input class="form-control form-control-lg" type="text" placeholder="성별" aria-label=".form-control-lg example" name="gender" value="${p.gender }" readonly></td></tr>
<tr><th>나이</th><td><input class="form-control form-control-lg" type="text" placeholder="나이를 입력하세요.." aria-label=".form-control-lg example" name="age" value="${p.age }" readonly></td></tr>
<tr><th>관심분야</th><td><input class="form-control form-control-lg" type="text" placeholder="관심분야 .. ..." aria-label=".form-control-lg example" name="jobCd" value="${p.jobNm }" readonly></td></tr>
</table>
</div>
<div class="row mb-3">
				<div class="col-sm-10">
				<div>
					<span>
					</span>
				</div>
			</div>
			</div>
<div>
</div>
</form>
</c:if>
<c:if test="${sessionScope.loginType == '기업' }">
<form action="${pageContext.request.contextPath }/mem/myinfo.do" method="post">
<table border="1">
<tr><th>ID</th><td><input type="text" name="id" value="${m.id }" readonly></td></tr>
<tr><th>PWD</th><td><input type="text" name="pwd" value="${m.pwd }" ></td></tr>
<form action="${pageContext.request.contextPath }/mem/myinfo.do" method="post">
<tr><th>전화번호</th><td><input type="text" name="usertel" value="${p.usertel }" ></td></tr>
<tr><th>이메일</th><td><input type="text" name="email" value="${p.email }" ></td></tr>
<tr><th>TYPE</th><td id="type"></td></tr>
<tr><th>수정</th><td><input type="submit" value="수정"></td></tr>
</table>
</form>
<div class="w800 p40">
  <h3 class="form_title text-center">폼 사용 용도</h3>
  <p class="form_sub text-center">회원가입용 페이지 어쩌구</p>
  <div class="form_Wrap">
    <form class="">
      <div class="row mb-3">
        <label for="inputEmail3" class="col-sm-2 col-form-label">ID</label>
        <div class="col-sm-10">
          <input type="email" class="form-control" id="inputEmail3">
        </div>
      </div>
      <div class="row mb-3">
        <label for="inputPassword3" class="col-sm-2 col-form-label">PWD</label>
        <div class="col-sm-10">
          <input type="password" class="form-control" id="inputPassword3">
        </div>
      </div>
      <fieldset class="row mb-3">
        <legend class="col-form-label col-sm-2 pt-0">Radios</legend>
        <div class="col-sm-10">
          <div class="form-check">
            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
            <label class="form-check-label" for="gridRadios1">
              First radio
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
            <label class="form-check-label" for="gridRadios2">
              Second radio
            </label>
          </div>
        </div>
      </fieldset>
      <div class="row mb-3">
        <div class="col-sm-10 offset-sm-2">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" id="gridCheck1">
            <label class="form-check-label" for="gridCheck1">
              Example checkbox
            </label>
          </div>
        </div>
      </div>
    <div class="btn_wrap">
      <button type="submit" class="btn btn-primary">회원가입</button>
      <!-- <button type="submit" class="btn btn-primary">로그인</button> -->
    </div>
    </form>
  </div>
</div>
</table>
</form>
</c:if>
</body>
</html>