<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<%@include file="/layout/head.jsp" %>
<body>	
<div id="wrap">
	<%@include file="/layout/header.jsp" %>
	<!-- container -->
<div id="container">
    <section id="content">
        <div class="sub-type member">
            <div class="inner-box">
                <div class="page-title-wrap v2">
                    <h2 class="page-title">회원가입</h2>
                    <div class="depth-area">
                        <ol>
                            <li><a href="/main">홈</a></li>
                            <li><strong>회원가입</strong></li>
                        </ol>
                    </div>
                </div>
                <article class="join-area">
                    <div class="join-step1">
                        <div class="step-list">
                            <ul>
                                <li class="active">01 본인인증</li>
                                <li>02 개인정보입력</li>
                                <li>03 가입완료</li>
                            </ul>
                        </div>
                        <div class="info-text-wrap">
                            <a href="javascript:UI.layerPopUp({selId: '#pop-accredit'});" class="notice-text">본인인증 안내</a>
                            <strong class="title">반갑습니다.</strong>
                            <p>
				                                도미노피자 회원가입을 위해서는 본인인증이 필요합니다.<br>
				                                회원가입은 아동의 개인정보 보호를 위해 만 14세 이상만 가능합니다.
                            </p>
                            <div class="btn-wrap">
                                <a href="javascript:goCheckByPhone()" class="btn-type v4">휴대전화 인증</a>
                            </div>
                        </div>
                    </div>
                </article>
            </div>
        </div>
    </section>

<!-- //container -->
  <!-- 팝업 본인인증 안내 -->
<div class="pop-layer type2" id="pop-accredit">
    <div class="dim"></div>
    <div class="pop-wrap">
        <div class="pop-title-wrap">
            <h2 class="pop-title v2">본인인증 안내</h2>
        </div>
        <div class="pop-content">
            <div class="step-wrap">
                <div class="sub-type-text">만 14세 이상 회원가입 가능</div>
                <div class="sub-text">
			                    만 14세 미만 아동의 개인정보 보호를 위해 회원가입은
			                    만 14세 이상만 가능 합니다.
                    (단, 본인 명의의 금융거래가 있는 경우에 한하여 실명인증센터에 인증요청을 하실 수 있습니다.)
                </div>
            </div>
            <div class="step-wrap">
                <div class="sub-type-text">본인인증이란?</div>
                <div class="sub-text">
			                    도미노피자는 안전한 인터넷 서비스 이용을 위해 본인여부를
			                    확인하고 있습니다.
			                    인증대행사를 통해 본인인증을 받게 되므로,
			                    도미노피자에서는 회원님의 개인정보를 저장하지 않습니다.

                </div>
            </div>
        </div>
        <a href="#" class="btn-close"></a>
    </div>
</div>
<!--//팝업 본인인증 안내 -->

<!--팝업-회원가입 여부 및 실명 확인 -->
<div class="pop-layer" id="pop-ismember" >
    <div class="dim" onClick="javascript:doLogin();"></div>
    <div class="pop-wrap">
        <div class="pop-title-wrap">
            <h2 class="pop-title">회원가입 여부 및 실명 확인</h2>
        </div>
        <div class="pop-content">
        	<form name="frm" id="frm" action="/global/login" method="post">
            <div class="result-list">
                <dl>
                    <dt>
                        <div class="chk-box">
                            <input type="radio" id="id" name="findId" value="domino11111">
                            <label class="checkbox" for="id"></label>
                            <label for="id">domino**</label>
                        </div>
                    </dt>
                    <dd>
                        <div>연동된 계정
                            <div class="sns-icon">
                            	<i class="btn-kakao"></i>
                                <i class="btn-naver"></i>
                                <i class="btn-payco"></i>
                                <i class="btn-apple"></i>
                                <i class="btn-tlogin"></i>
                            </div>
                            <br>가입 : 2020-02-23
                        </div>
                    </dd><!--2020-02-18 div추가-->
                </dl>
            </div>
            </form>
            <p class="sub-text">
         		이미 가입되어있는 회원정보입니다.
            </p>
            <div class="btn-wrap">
                <a href="javascript:doLoginGetId();" class="btn-type v6">로그인</a>
                <a href="javascript:goFindIdPwd('#srchpw');" class="btn-type v4">비밀번호 찾기</a>
            </div>
        </div>
        <a href="#" class="btn-close"></a>
    </div>
</div>
<!--//팝업-회원가입 여부 및 실명 확인 -->

<form name="f" id="f" action="/member/regStep2" method="post">
	<input type="hidden" name="auth_type" id="auth_type" value="">
	<input type="hidden" name="join_site" id="join_site" value="">
	<input type="hidden" name="enc_data" id="enc_data" value="">
	<input type="hidden" name="svcId" id="svcId" value="">
	<input type="hidden" name="mobilId" id="mobilId" value="">
	<input type="hidden" name="ci" id="ci" value="">
	<input type="hidden" name="di" id="di" value="">
	<input type="hidden" name="signDate" id="signDate" value="">
	<input type="hidden" name="name" id="name" value="">
	<input type="hidden" name="no" id="no" value="">
	<input type="hidden" name="commId" id="commId" value="">
	<input type="hidden" name="sex" id="sex" value="">
	<input type="hidden" name="mac" id="mac" value="">
	<input type="hidden" name="tradeId" id="tradeId" value="">
	<input type="hidden" name="socialNo" id="socialNo" value="">
	<input type="hidden" name="resultMsg" id="resultMsg" value="">
	<input type="hidden" name="resultCd" id="resultCd" value="">

	<input type="hidden" name="dupInfo" id="dupInfo" value="">
	<input type="hidden" name="connInfo" id="connInfo" value="">
	<input type="hidden" name="birth" id="birth" value="">
	<input type="hidden" name="vno" id="vno" value="">
</form>

<form name="iPinForm" id="iPinForm" action="/member/regStep2" method="post">
    <input type="hidden" name="enc_data" value="AgEEQTYxM9ClMrMwDAw+WTQq9KZu/ruDfxGuMC976kccbcbCx1+hi2+vi5Z6C4nGHjULEs75GcSVnRyb09a48TBwrkK4e0ScevHlDIzz5G+3S3Pqi5OiQ3PTdvNmoiS04miWchQLSi/gcl0xD7wPXmtEv905NLG+oAbV2IO1BqmJhDDdtwTQG69+KI/9rjPxA4ofhw63ERzA6+mHxs1jlr4HAlYuy7z0900DIRxFZjV9cTF9LwfRdk9AZ2HBeiVInzN3yqt6eVt1rJn2Jzuz2iuoPZaLy67cK1mpTihv+ic5zQrsnGPh">
    <input type="hidden" name="join_site" value="">
</form>
</div>
<script type="text/javascript">
$(document).ready(function(){
	
	//회원 가입 이벤트시 로그인 체크 로직
	
});

//아이디, 비번 찾기
function goFindIdPwd(link) {
	if(link == ''){
		link = "#srchid";
	}
	//location.href = "/member/findIdPw";
	goLink("M220000", "/member/findIdPw" + link);
}

function doLoginGetId(){
	var radioVal =$("input[name='findId']:checked").attr("id");
	var id = $("label[for='"+radioVal+"']").last().text();
	
	$("#frm").submit();
	
	//var radioVal = $('input[name="id"]:checked').val();
}
//탭 이동
function goTab(idx){
	if(idx == 0){
		$('.join_area>ol>li>dl>dt').eq(0).toggleClass('active');
	}else{
		alert('본인인증을 진행 해 주세요.');
		return;
	}
}

//휴대폰 본인 인증
function goCheckByPhone() {
	window.open('goCheckByPhone.jsp', 'popupChk', 'width=500, height=550, toolbar=no, directories=no, scrollbars=no, resizable=no, status=no, menubar=no, top=0, left=0');
	return;
}

//휴대폰 본인 인증 콜백
function kgIdProc(svcid, mobilid, ci, di, signdate, name, no, commid, sex, mac, tradeid, socialno, resultmsg, resultcd) {
	$("#f > #auth_type").val("kg");
	$("#f > #svcId").val(svcid);
	$("#f > #mobilId").val(mobilid);
	$("#f > #ci").val(ci);
	$("#f > #di").val(di);
	$("#f > #signDate").val(signdate);
	$("#f > #name").val(name);
	$("#f > #no").val(no);
	$("#f > #commId").val(commid);
	$("#f > #sex").val(sex);
	$("#f > #mac").val(mac);
	$("#f > #tradeId").val(tradeid);
	$("#f > #socialNo").val(socialno);
	$("#f > #resultMsg").val(resultmsg);
	$("#f > #resultCd").val(resultcd);

	$("#f").submit();
}

//아이핀 본인 인증
function goCheckByIpin() {
	window.open('', 'popupIPIN', 'width=450,height=550,top=100,left=100,fullscreen=no,menubar=no,status=no,toolbar=no,titlebar=yes,location=no,scrollbar=no');
	$('#iPinForm').attr("target", "popupIPIN");
	$('#iPinForm').attr("action","https://cert.vno.co.kr/ipin.cb");
	$('#iPinForm').submit();
}

//아이핀 본인 인증 콜백
function ipinIdProc(dupInfo, connInfo, vno, name, birth, sex) {
	$("#f > #auth_type").val("ipin");
	$("#f > #dupInfo").val(dupInfo);
	$("#f > #connInfo").val(connInfo);
	$("#f > #vno").val(vno);
	$("#f > #name").val(name);
	$("#f > #birth").val(birth);
	$("#f > #sex").val(sex);

	$("#f").submit();
}

//이미 가입된 회원인 경우
function dupMemPop(mbList){
	var optionHtml = '';
	mbList.forEach(function(item,index){
	 	optionHtml += "<dl><dt>";
		 	optionHtml += "<div class=\"chk-box\">";  //
		 		optionHtml += '<input type=\"radio\" id="id'+index+'" name=\"findId\" value="'+item.id+'" >';
		 		optionHtml += '<label class=\"checkbox\" for="id'+index+'"></label>';
		 		optionHtml += '<label for="id'+index+'">'+item.id+'</label>';
		 	optionHtml += "</div>";  
	 	optionHtml += "</dt>";  
	 	optionHtml += "<dd>";
	 	
	 	if(item.dormancy_yn == 'N' &&  
		 		(item.id_uuid2 != null && item.id_uuid2 !="") ||
		 		(item.id_uuid  != null && item.id_uuid  !="") ||
		 		(item.id_uuid3 != null && item.id_uuid3 !="") ||
		 		(item.id_uuid4 != null && item.id_uuid4 !="") || (item.id_uuid5 != null && item.id_uuid5 !="")
		 	){
	 		
	 		optionHtml += "<div> 연동된 계정 ";
	 		optionHtml += "<div class=\"sns-icon\">";
	 		
	 		if(item.naver_link_yn == "Y" && item.id_uuid2 != null && item.id_uuid2 !="" ){
	 			optionHtml += " <i class=\"btn-naver\"></i>";
	 		}
	 		if(item.kakao_link_yn == "Y" && item.id_uuid5 != null && item.id_uuid5 !="" ){
	 			optionHtml += " <i class=\"btn-kakao\"></i>";
	 		}
	 		if(item.payco_link_yn == "Y" && item.id_uuid != null && item.id_uuid !="" ){
	 			optionHtml += " <i class=\"btn-payco\"></i>";
	 		}
	 		if(item.apple_link_yn == "Y" && item.id_uuid3 != null && item.id_uuid3 !=""){
	 			optionHtml += " <i class=\"btn-apple\"></i>";
	 		}
	 		if(item.sktid_link_yn == "Y" && item.id_uuid4 != null && item.id_uuid4 !=""){
	 			optionHtml += " <i class=\"btn-tlogin\"></i>";
	 		}
	 		optionHtml += "</div><br />"; //(e)sns-icon
	 		
	 		optionHtml += "가입 : " + item.reg_date.substring(0,10);
		 	optionHtml += "</div>";
	 	}else{
	 		optionHtml += "<div>";
	 		if(item.dormancy_yn == 'Y'){
	 			optionHtml += "휴면 계정 <br />" ;
	 		}
	 		optionHtml += "가입 : " + item.reg_date.substring(0,10) ;
	 		optionHtml += "</div>";
	 		
	 	}
	 	optionHtml += "</dd>";
	 	optionHtml += "</dl>";
	});
	
	$('#pop-ismember .result-list').html(optionHtml);
	$('input:radio[name=findId]').eq(0).attr("checked", true);
	UI.init();
	
	if($(".result-list dl").length == 1){
		$(".chk-box .checkbox").hide();
	}
	
	UI.layerPopUp({selId:'#pop-ismember'});
	UI.init();
	
}

function closePop(){
	$(".btn_close").trigger("click");
}

</script>
<!-- LOGGER 환경변수 설정 -->
<script type="text/javascript">
	_TRK_PI = "WP_3";	
	_TRK_CP = "회원가입 ";
</script>

<%@include file="/layout/shopping_basket.jsp" %>
<%@include file="/layout/footer.jsp" %>
</div><!-- //wrap -->
<%@include file="/layout/naver_google.jsp" %>
</body>
</html>
