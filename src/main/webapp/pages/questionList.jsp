<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="ko">
<%@include file="/layout/head.jsp" %>
<body>
<div id="wrap">
	<%@include file="/layout/header.jsp" %>
	<!-- container -->
<div id="container">
	<section id="content">
		<div class="sub-type mypage">
			<div class="inner-box">
				<div class="page-title-wrap">
					<h2 class="page-title">나의정보</h2>
					<div class="depth-area">
						<ol>
							<li><a href="/main">홈</a></li>
							<li><a href="/mypage/myOrderList">나의 정보</a></li>
							<li><strong>1:1문의</strong></li>
						</ol>
					</div>
				</div>
				<article class="mypage-wrap mypage-grade mypage-counsil">
					<div class="menu-nav-wrap">
							<div class="menu-nav">
								<ul>
									<li><a href="/mypage/myLevel">매니아 등급</a></li>
									<li><a href="/mypage/myOrderList">주문내역</a></li>
									<li><a href="/mypage/myCoupon">쿠폰함</a></li>
									<li class="active"><a href="/mypage/qustionList">1:1문의</a></li>
									<li><a href="/member/userinfoConfirm">정보수정</a></li>
								</ul>
							</div>
						</div>
					<div class="info-wrap">
						<div class="user">
							<span>김희진</span>님께서 문의하신 내용입니다.
						</div>
						<div class="text-type">김희진님께서 문의하신 내용은 <strong>총 0건</strong> 입니다.</div>
					</div>
					<div class="counsil-wrap">
						<div class="table-type4">
							<table>
								<caption>피자 영양성분</caption>
								<colgroup>
									<col style="width:140px">
									<col>
									<col style="width:180px">
									<col style="width:180px">
								</colgroup>
								<thead>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>등록일</th>
										<th>처리상태</th>
									</tr>
								</thead>
								<tbody>
									<tr>
												<td colspan="4">문의하신 내용이 없습니다.</td>
											</tr>
										</tbody>
							</table>
						</div>
						<div class="pager-wrap">
							<div class="pager-inner">
								</div>
						</div>
						<div class="btn-wrap">
							<a href="javascript:UI.layerPopUp({selId:'#pop-write'});" class="btn-type v4">문의하기</a>
						</div>
					</div>
				</article>
			</div>
		</div>
	</section>
</div>

<!-- 문의하기 -->
<form name="q" id="q" method="post" action="/mypage/qustionProc" >
<div class="pop-layer" id="pop-write">
	<div class="dim"></div>
	<div class="pop-wrap">
		<div class="pop-title-wrap">
			<h2 class="pop-title v2">문의하기</h2>
		</div>
		<div class="pop-content">
			<div class="guide-box3">
				주문 취소 / 변경과 같은 긴급한 요청은 매장으로 연락 부탁드립니다.
			</div>
			<div class="step-wrap">
				<dl>
					<dt>아이디</dt>
					<dd>gmlwls977</dd>
				</dl>
				<dl>
					<dt>연락처</dt>
					<dd>010-5421-9967</dd>
				</dl>
				<dl>
					<dt>이메일</dt>
					<dd>mbu5533@naver.com</dd>
				</dl>
			</div>
			<div class="step-wrap">
				<div class="form">
					<dl>
						<dt>문의유형</dt>
						<dd>
							<div class="form-item">
								<div class="select-type2">
									<select id="sel" name="type_div1">
										<option value="">선택</option>
										<option value="제품관련">제품관련</option>
										<option value="배달서비스 관련">배달서비스 관련</option>
										<option value="직원 서비스 관련">직원 서비스 관련</option>
										<option value="콜센타 관련">콜센타 관련</option>
										<option value="칭찬">칭찬</option>
										<option value="제안">제안</option>
										<option value="단순문의">단순문의</option>
										<option value="기타">기타</option>
									</select>
								</div>
							</div>
						</dd>
					</dl>
					<dl>
						<dt>매장선택</dt>
						<dd class="form-group">
							<div class="form-item">
								<div class="select-type2">
									<select id="sel2" name="branch_region" onChange="changeBranch($('#sel2 option:selected').val());">
										<option>지역</option>
										<option value="서울">서울</option>
										<option value="인천">인천</option>
										<option value="경기">경기</option>
										<option value="강원">강원</option>
										<option value="충남">충남</option>
										<option value="충북">충북</option>
										<option value="대전">대전</option>
										<option value="경남">경남</option>
										<option value="경북">경북</option>
										<option value="대구">대구</option>
										<option value="전남">전남</option>
										<option value="전북">전북</option>
										<option value="광주">광주</option>
										<option value="울산">울산</option>
										<option value="부산">부산</option>
										<option value="제주">제주</option>
										<option value="세종특별자치시">세종특별자치시</option>
										</select>
								</div>
							</div>
							<div class="form-item">
								<div class="select-type2">
									<select id="sel3" name="branch_code">
										<option>매장 선택</option>
										<option>셀렉트박스2</option>
									</select>
								</div>
							</div>
						</dd>
					</dl>
					<dl>
						<dt>제목</dt>
						<dd>
							<div class="form-item">
								<input type="text" id="subject" name="subject" />
							</div>
						</dd>
					</dl>
					<dl>
						<dt class="top">문의내용</dt>
						<dd>
							<div class="form-item">
								<textarea name="content" id="content" cols="30" rows="10"></textarea>
							</div>
						</dd>
					</dl>
				</div>
			</div>
			<div class="cs-guide">
				<p>등록하신 내용 및 답변은 회원정보상의 이메일로도 발송이 됩니다.<br/>상담원과 통화를 원하시면 아래 번호로 전화주시기 바랍니다.</p>
				<p>고객만족 센터 : <span>080-860-3082</span></p>
				<div class="btn-wrap">
					<a href="javascript:doReset();" class="btn-type v5">다시입력</a>
					<a href="javascript:proc();" class="btn-type v4">문의하기</a>
				</div>
			</div>
		</div>
		<a href="#" class="btn-close"></a>
	</div>
</div>
</form>
<!--//문의하기 -->

<form name="f" id="f" method="get" action="/mypage/qustionList">
<input type="hidden" name="idx" id="idx" />
<input type="hidden" name="no" id="no" />
<input type="hidden" name="pageNo" id="pageNo" value="1">
</form>

<script type="text/javascript">
//페이징
function paging(no){
	$("#pageNo").val(no);
	$('#f').attr("action", "/mypage/qustionList");
	$("#f").submit();
}

//문의 내역 상세보기
function goView(idx, no) {
	$('#idx').val(idx);
	$('#no').val(no);
	$('#f').attr("action", "/mypage/qustionView");
	$('#f').submit();
}

//매장목록
function changeBranch(region){
	$.ajax({
		url: '/mypage/branchListAjax',
		data: { branch_region : encodeURIComponent(region) },
		type: 'get',
		dataType: 'json',
		success: function(data) {
			if (data.status == 'success') {
				var htmlStr = '<option value="">매장 선택</option>';
				$.each(data.resultData, function(index, addrObj) {
					htmlStr += '<option value="'+ addrObj.branch_code +'">'+ addrObj.branch_name +'</option>';
				});
				$('#sel3').html(htmlStr);
			} else {
				alert(data.msg);
			}
		},
		error: function() {
			alert('처리도중 오류가 발생했습니다.');
		}
	});
}

//다시입력
function doReset(){
	if(confirm("입력한 내용을 모두 지우고 다시 입력하시겠습니까?")){
		document.q.reset();
		$("#type_div1").focus();
	}
}

//문의하기
var send = false;
function proc(){
	if(send){
		alert('등록중 입니다.');
	}else{
		if($('#type_div1').val() == '') { alert('유형분류를 선택해주세요'); $('#type_div1').focus(); return;}
		if($('#subject').val() == '') { alert('제목을 입력하세요'); $('#subject').focus(); return;}
		if($('textarea[name=content]').val() == '') { alert('내용을 입력하세요.'); $('#content').focus(); return;}	
		send = true;
		$('#q').submit();
	}	
}
</script>
<script type="text/javascript">
	_TRK_PI = "WP_24_4";			
	_TRK_CP = "나의 정보>1:1문의";
</script>
<%@include file="/layout/shopping_basket.jsp" %>
<%@include file="/layout/footer.jsp" %>
</div><!-- //wrap -->
<%@include file="/layout/naver_google.jsp" %>
</body>
</html>
