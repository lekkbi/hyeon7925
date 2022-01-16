<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="ko">
<%@include file="/layout/head.jsp" %>
<body>
<div id="wrap">
	<%@include file="/layout/header.jsp" %>


<div id="container">
	<section id="content">
		<div class="sub-type mypage">
			<div class="inner-box">
				<div class="page-title-wrap">
					<h2 class="page-title">나의정보</h2>
					<div class="depth-area">
						<ol>
							<li><a href="https://web.dominos.co.kr/main">홈</a></li>
							<li><a href="https://web.dominos.co.kr/mypage/myLevel">나의정보</a></li>
							<li><strong>쿠폰함</strong></li>
						</ol>
					</div>
				</div>
				<article class="mypage-wrap mypage-grade mypage-coupon">
					<div class="menu-nav-wrap">
							<div class="menu-nav">
								<ul>
									<li><a href="https://web.dominos.co.kr/mypage/myLevel">매니아 등급</a></li>
									<li><a href="https://web.dominos.co.kr/mypage/myOrderList">주문내역</a></li>
									<li class="active"><a href="https://web.dominos.co.kr/mypage/myCoupon?coupon_status=0">쿠폰함</a></li>
									<li><a href="https://web.dominos.co.kr/mypage/qustionList">1:1문의</a></li>
									<li><a href="https://web.dominos.co.kr/member/userinfoConfirm">정보수정</a></li>
								</ul>
							</div>
						</div>
					<div class="info-wrap">
						<div class="user">
							<span>서지현</span>님께서 보유하고 있는 할인쿠폰 내역입니다.
						</div>
						<div class="text-type">쿠폰을 사용하여 피자를 주문해보세요!</div>
						<a href="/mypage/myCrewCoupon" class="btn-type4-brd4" style="display:none;">Crew 쿠폰</a>
					</div>
					<div class="coupon-wrap">
						<div class="table-type4">
							<table>
								<caption>나의 퀵 오더</caption>
								<colgroup>
									<col style="width:50%">
									<col style="width:50%">
								</colgroup>
								<thead>
								<tr>
									<th>쿠폰명</th>
									<th>유효기간</th>
								</tr>
								</thead>
								<tbody>
									<tr>
												<td colspan="2">보유하고 있는 쿠폰내역이 없습니다.</td>
											</tr>
										</tbody>
							</table>
						</div>
						<div class="pager-wrap">
							<div class="pager-inner">
								</div>
						</div>
						<div class="btn-wrap">
							<a href="https://web.dominos.co.kr/goods/dominosMoment" class="btn-type v4">도미노 모멘트 수정하기</a>
							<a href="https://web.dominos.co.kr/goods/list?dsp_ctgr=C0101" class="btn-type v3">피자 주문하기</a>
						</div>
					</div>
					<div class="gift-wrap">
						<div class="title-wrap">
							<div class="title-type2">내 쿠폰 선물하기</div>
							<span>위 미사용 쿠폰 중 선물할 내 쿠폰을 선택 후, 받으실 분의 이름 및 휴대전화번호를 입력해 주세요.</span>
						</div>
						<div class="deli-info form">
							<div class="form-group">
								<div class="form-item">
									<div class="title-type2">선물할 쿠폰 선택</div>
									<div class="select-type2">
										<select id="select_cupn">
											</select>
									</div>
								</div>
								<div class="form-item tel">
									<div class="title-type2">수신자 정보 입력</div>
									<input type="text" id="name" placeholder="이름">
									<input type="text" id="tel" placeholder="휴대전화번호" maxlength="11" onkeyup="checkNum($(this), '숫자만 입력해주세요.');">
								</div>
								<div class="form-item">
									<a href="javascript:;" onclick="userAdd(); return false;" class="btn-type v4">수신자 추가하기</a>
								</div>
							</div>
						</div>
						<div class="table-type4">
							<form name="f2" id="f2">
								<table>
									<caption>나의 퀵 오더</caption>
									<colgroup>
										<col style="width:50%">
										<col style="width:50%">
									</colgroup>
									<thead>
									<tr>
										<th>선물할 쿠폰</th>
										<th>수신자</th>
									</tr>
									</thead>
									<tbody id="cupn_list">
										<tr class="none">
											<td colspan="2">쿠폰을 선물해보세요.</td>
										</tr>
									</tbody>
								</table>
							</form>
							<div class="gift-btn-wrap">
								<span>
									선물할 내 쿠폰 수
									<strong id="total_cnt">0</strong> 개
								</span>
								<a href="javascript:sendGift();" class="btn-type v3">선물하시겠습니까?</a>
							</div>
						</div>
						<div class="list-text-v1">
							<dl>
								<dt>* SMS 발송문구 예시</dt>
								<dd>
									<ul>
										<li>[도미노 Crew쿠폰] 피자 50% 할인 쿠폰<br>
										/보내는 사람/ 님이 / 받는 사람 / 님께<br>
										도미노 Crew쿠폰을 선물했습니다.
										</li>
									</ul><br>
									[사용방법]
									<ul>
										<li>1. 도미노피자 온라인 회원 가입 후 방문포장 주문 선택</li>
										<li>2. 제품 선택(피자 1판 또는 사이드디시 1개 / 함께 주문 불가) 후
										할인 선택 시 &lt;쿠폰 코드 입력&gt; 에 아래 코드 입력<br>
										쿠폰코드 : /발송 시 자동 추가/</li>
									</ul>
									[유의사항]
									<ul>
										<li>- 본 쿠폰의 유효기간은 /유효기간/까지 입니다.</li>
										<li>- 피자 주문 시, 쿠폰에 따른 피자 구매 금액을 할인해 드립니다. (SET 메뉴 주문 시에는 제외)</li>
									</ul>
								</dd>
							</dl>
						</div>
					</div>
				</article>
			</div>
		</div>
	</section>
</div>
<script type="text/template" id="user_template">
<tr data-idx="{idx}" data-code="{code}" data-cupnnm="{cupnnm}" data-date="{date}">
	<td>{cupnnm}&nbsp;({date})</td>
	<td>
		<input type="hidden" name="c_idx" id="c_idx$idx" value="{idx}"/>
		<input type="hidden" name="user_name" id="user_name$idx" value="{name}"/>
		<input type="hidden" name="user_phone" id="user_phone$idx" value="{tel}"/>
		{name}&nbsp;({tel})
		<a herf="#" onclick="javascript:userRemove(this); return false;" class="close"><span class="hidden">삭제</span></a>
	</td>
</tr>
</script>
<script type="text/javascript">
//사용자 row 추가
function userAdd(){
	
	if($("#select_cupn :selected").val() == "" || $("#select_cupn :selected").text() == ""){
		alert("선물할 쿠폰을 선택 해 주세요.");
		return;
	}
	if($("#name").val() == ""){
		alert("수신자 정보를 입력 해 주세요.");
		$("#name").focus();
		return;
	}
	if($("#tel").val() == ""){
		alert("수신자 정보를 입력 해 주세요.");
		$("#tel").focus();
		return;
	}
	if($("#tel").val().length < 10){
		alert("수신자 정보를 올바르게 입력 해 주세요.");
		$("#tel").focus();
		return;
	}
	//제외쿠폰 확인
	if($("#select_cupn :selected").data("code").indexOf("MK_")>=0 
			|| $("#select_cupn :selected").data("code").indexOf("D_ADC") >= 0
			|| $("#select_cupn :selected").data("code").indexOf("DominosDay") >= 0){
		alert("해당쿠폰은 선물 할 수 없습니다.");
		return;
	}
	
	var idx = $("#select_cupn :selected").val();
	var cupnnm = $("#select_cupn :selected").data("name");
	var code = $("#select_cupn :selected").data("code");
	var date = $("#select_cupn :selected").data("date");
	var name = $("#name").val();
	var tel = $("#tel").val().trim().replaceAll("-", "");
	
	if(tel.length < 11){
		tel = tel.substr(0,3)+"-" + tel.substr(3,3)+"-" + tel.substr(6,4);
	} else {
		tel = tel.substr(0,3)+"-" + tel.substr(3,4)+"-" + tel.substr(7,tel.length-7);
	}
	
	var userTemplate = $("#user_template").html();
	userTemplate = userTemplate.replaceAll("{idx}", idx);
	userTemplate = userTemplate.replaceAll("{code}", code);
	userTemplate = userTemplate.replaceAll("{date}", date);
	userTemplate = userTemplate.replaceAll("{cupnnm}", cupnnm);
	userTemplate = userTemplate.replaceAll("{name}", name);
	userTemplate = userTemplate.replaceAll("{tel}", tel);
	
	if($(".none").length > 0){
		$(".none").remove();
	}
	
	$("#cupn_list").append(userTemplate);

	lineRefresh(idx, "", "add", "", "");
}

//사용자 row 삭제
function userRemove(obj){
	var idx = $(obj).parent().parent().data("idx");
	var cupnNm = $(obj).parent().parent().data("cupnnm");
	var code = $(obj).parent().parent().data("code");
	var date = $(obj).parent().parent().data("date");
	$(obj).parent().parent().detach();

	lineRefresh(idx, cupnNm, "del", code, date);
}

//사용자 row 추가/삭제 시 selectbox 연동
function lineRefresh(c_idx, cupnNm, type, code, date){
	if(type == "add"){
		$("#select_cupn option").each(function(){
			if($(this).val() == c_idx){
				$(this).remove();
			}
		});
		if($("#select_cupn option").length < 1){
			$("#select_cupn").append("<option value='' class='nodata'>추가 가능한 쿠폰이 없습니다.</option>");
		}
	}else if(type == "del"){
		if($(".none").length > 0){
			$("#select_cupn").html("<option value='"+c_idx+"' data-code='"+code+"' data-date='"+date+"' data-name='"+cupnNm+"'>"+cupnNm+" ("+date+")"+"</option>");
		}else{
			$("#select_cupn").append("<option value='"+c_idx+"' data-code='"+code+"' data-date='"+date+"' data-name='"+cupnNm+"'>"+cupnNm+" ("+date+")"+"</option>");
		}
		if($("#cupn_list tr").length < 1){
			$("#cupn_list").html("<tr class='none'><td colspan='2'>쿠폰을 선물해보세요.</td></tr>");
		}
	}
	
	if($(".none").length > 0){
		$("#total_cnt").text(0);
	} else {
		$("#total_cnt").text($("#cupn_list tr").length);
	}
}

//선물하기
function sendGift(){
	if($("[name='c_idx']").length < 1){
		alert("선물할 쿠폰을 선택 해 주세요.");
		return;
	}

	$("[name='user_name']").each(function(){
		$(this).val(encodeURIComponent($(this).val()));
	});
	var data = $("#f2").serialize();
	if(confirm("My 쿠폰을 선물하시겠습니까?")){
		$.ajax({
			type: "POST",
			url: "/mypage/giftMyCouponAjax",
			data:  data,
			dataType : "json",
			beforeSend: function () {
				$("#defaultLoading").show();
			},
			success:function(data) {
				alert(data.msg);
				location.reload();
				return;
			},
			error: function (error){
				alert("다시 시도해주세요.");
			},
			complete : function () {
				$("#defaultLoading").hide();
			}
		});
	}
}
//페이징
function paging(no){
	$("#pageNo").val(no);
	$('#f').attr("action", "/mypage/myCoupon");
	$("#f").submit();
}
</script>
<script type="text/javascript">
	_TRK_PI = "WP_24_3";	// 웹페이지의 성격 정의 - 메인페이지
	_TRK_CP = "나의정보>쿠폰함";
</script>

<script type="text/javascript">
	/*페이지에서만 사용하는 스크립트*/
</script>

<%@include file="/layout/shopping_basket.jsp" %>
<%@include file="/layout/footer.jsp" %>
</div><!-- //wrap -->

</body>

<%@include file="/layout/naver_google.jsp" %>

</html>
