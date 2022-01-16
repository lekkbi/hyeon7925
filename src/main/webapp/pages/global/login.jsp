<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<%@include file="/layout/head.jsp" %>
<body>
<div id="wrap">
	<%@include file="/layout/header.jsp" %>
	<div id="container">
    <section id="content">
        <div class="sub-type member">
            <div class="inner-box">
                <div class="page-title-wrap v2">
                    <h2 class="page-title">로그인</h2>
                    <div class="depth-area">
                        <ol>
                            <li><a href="#">홈</a></li>
                            <li><strong>로그인</strong></li>
                        </ol>
                    </div>
                </div>
                <article class="login-area">
                    <div class="tab-type5 js_tab">
                        <ul>
                            <li class="active"><a href="#login">회원로그인</a></li>
                            <li><a href="#guest" onclick="showAlert(); return false;">비회원 주문</a></li>
                        </ul>
                    </div>
                    <div class="tab-content active" id="login">
                    <form id="loginFrm" name="loginFrm" action="login.do" method="post">
                    <input type="hidden" name="redirectUrl" id="redirectUrl" value="/main" />
					<input type="hidden" name="partycar_seq" id="partycar_seq" value="" />
					<input type="hidden" name="event_gubun" id="event_gubun" value="" />
					<input type="hidden" name="sktid_sub_id" id="sktid_sub_id" value="" />
                        <div class="form-item">
                            <input type="text" name="id" id="id" maxlength="20" placeholder="아이디" value="" >
                        </div>
                        <div class="form-item">
                            <input type="password" placeholder="비밀번호" name="passwd" id="passwd" maxlength="20" onkeydown="javascript:if(event.keyCode==13){doLogin();}">
                        </div>
                        <div class="chk-item">
                            <div class="chk-box v4">
                                <input type="checkbox" id="idcheck">
                                <label class="checkbox" for="idcheck"></label>
                                <label for="idcheck">아이디저장</label>
                            </div>
                            <div class="btn-member-wrap" style="margin-bottom:20px">
                                <span><a href="javascript:goFindIdPwd('#srchid');">아이디 찾기</a></span>
                                <span><a href="javascript:goFindIdPwd('#srchpw');">비밀번호 찾기</a></span>
                            </div>
                        </div>
                        
                        <div class="btn-wrap">
                            <a href="javascript:doLogin();" class="btn-type v4">로그인</a>
                        </div>
                        <div class="btn-wrap">
                            <a href="javascript:goIdLoginPop();" class="btn-type-brd5">회원가입</a>
                        </div>
                    </form>
                    </div>
                   
                </article>
            </div>
        </div>
    </section>
</div>

<!-- //container -->

<!-- 회원가입-->
<div class="pop-layer type2" id="pop-join">
    <div class="dim"></div>
    <div class="pop-wrap basic" style="height : 600px;">
        <div class="pop-title-wrap">
            <h2 class="pop-title v2">회원가입</h2>
        </div>
        <div class="pop-content">
            <div class="step-wrap">
                <div class="title-type">도미노피자 회원가입</div>
                <p class="sub-text">회원가입 시 배달 20% 할인쿠폰 드립니다!</p>
                <div class="btn-wrap">
                    <a href="javascript:goRegister();" class="btn-type">회원가입</a>
                </div>
            </div>
        </div>
        <a href="#" class="btn-close"></a>
    </div>
</div>
<!-- 회원가입 -->

<!-- //회원가입 여부 및 실명 확인(e) -->
<div class="pop-layer" id="pop-fail">
    <div class="dim"></div>
    <div class="pop-wrap">
        <div class="pop-title-wrap">
            <h2 class="pop-title">로그인 실패</h2>
        </div>
        <div class="pop-content">
            <div class="notice-box">
                <p class="title-type">로그인에 실패하셨습니다.</p>
                <p class="title-type4">
                    회원정보를 다시 확인해주시고,
                    정상적으로 진행되지 않을<br>
                    경우 아래 아이디/비밀번호 찾기로
                    확인해주시기 바랍니다.
                </p>
                <div class="btn-wrap">
                    <a href="javascript:goFindIdPwd('#srchid');" class="btn-type v4">아이디/비밀번호 찾기</a>
                </div>
            </div>
            <div class="notice-info">
                <p class="title-type4">전화문의 : <em>080-860-3082</em></p>
                <p class="title-type4">E-mail 문의 : <em>webmaster@dominos.co.kr</em></p>
            </div>
        </div>
        <a href="#" class="btn-close"></a>
    </div>
</div>
<!-- //회원가입 여부 및 실명 확인(e) -->

<form name="chgPasswdFrm" id="chgPasswdFrm" action="/main" method="post">
<input type="hidden" name="redirectUrl" id="redirect_url" value=""/>
<input type="hidden" name="changePwd" id="changePwd" value="Y"/>
</form>

<script type="text/javascript">


$(document).ready(function()
{
	//id 체크 쿠키 있는 경우
    var key = getCookie("key");
    $("#id").val(key); 
     
    if($("#id").val() != ""){ 
    	$('input:checkbox[id="idcheck"]').parent().addClass("selected");
    	$('input:checkbox[id="idcheck"]').prop("checked", true); 
    }
     
    $('input:checkbox[id="idcheck"]').change(function(){
        if($('input:checkbox[id="idcheck"]').is(":checked")){ 
            setCookie("key", $("#id").val(), 7)
        }else{ 
            deleteCookie("key");
        }
    });

/*     $("#id").keyup(function(){ 
        if($('input:checkbox[id="idcheck"]').is(":checked")){ 
            setCookie("key", $("#id").val(), 7);
        }
    });	 */
	
    
	//UI.layerPopUp({selId:'#pop-error-naver'});
	var loginType = sessionStorage.getItem("loginType");
	
	if(loginType !== undefined && loginType !== '' && loginType !== null)
	{
		if(location.search.split('L=')[1] === 'L')
		{
			goIdLoginPop();
			
			if(typeof(history.pushState) == 'function')
			{
				var renewURL = location.href.split('?')[0];
				history.pushState(null, null, renewURL);
			}
		}
		else
			getIdInfo(loginType);
	}
	
	if(false){
		goIdLoginPop();
	}
});

function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}
 
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}
 
function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}

/* 
//탭 이동
function goTab(idx){
	$(".login_area").hide();
	$(".btn_tab li").removeClass("active");
	$(".btn_tab li").eq(idx).addClass("active");
	$(".login_area").eq(idx).show();
}
 */

function doLogin() {
	
	var id = $('#id').val(); 
	var passwd = $('#passwd').val();
		
	if ( id.isBlank() ){
		alert("아이디를 입력해주세요.");
		$('#id').focus();
		return;
	}
	if ( passwd.isBlank() ){
		alert("비밀번호를 입력해주세요.");
		$('#passwd').focus();
		return;
	}
	
	var data = "id="+ id +"&passwd="+ passwd;
	
	$.ajax({
		type:"post",
		url:"login.do",
		data:data,
		success:function(data) {
			
			if( data == "success"){
				// alert("로그인 성공");
				location.href = "/domino/pages/main.jsp";
			} else {
				alert("아이디 또는 비밀번호가 틀렸습니다.");
			}
			
		}

	});
		
}	

 
//회원 가입
function goRegister(type) {
	location.href = "/member/regStep1";
}

function goIdLoginPop() {
	UI.layerPopUp({selId:'#pop-join'});
}

//아이디, 비번 찾기
function goFindIdPwd(link) {
	if(link == ''){
		link = "#srchid";
	}
	//location.href = "/member/findIdPw";
	goLink("M220000", "/member/findIdPw" + link);
}

</script>

<!-- LOGGER 환경변수 설정 -->
<script type="text/javascript">
	_TRK_PI = "WP_2"; // 웹페이지의 성격 정의 - 로그인 화면
	_TRK_CP = "로그인";
</script>
<!-- // LOGGER 환경변수 설정 -->
<%@include file="/layout/shopping_basket.jsp" %>
<%@include file="/layout/footer.jsp" %>
</div><!-- //wrap -->
<%@include file="/layout/naver_google.jsp" %>

</body>
</html>