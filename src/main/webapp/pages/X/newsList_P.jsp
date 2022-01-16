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
          <div class="sub-type notice">
              <div class="inner-box">
                  <div class="page-title-wrap">
                      <h2 class="page-title">공지사항</h2>
                      <div class="depth-area">
                          <ol>
                              <li><a href="#">홈</a></li>
                              <li><a href="/bbs/newsList?type=N">공지사항</a></li>
                              <li><strong>보도자료</strong></li>
                        </ol>
                    </div>
                </div>
                <article class="notice-area">
                    <div class="menu-nav-wrap">
                        <div class="menu-nav">
                            <ul>
                                <li ><a href="/bbs/newsList?type=N">도미노뉴스</a></li>
                                <li  class="active"><a href="/bbs/newsList?type=P">보도자료</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="notice-wrap">
                    <form id="searchForm" name="searchForm" action="/bbs/newsList" method="post">
			<input type="hidden" id="type" name="type" value="P" />
			<input type="hidden" id="pageNo" name="pageNo" value="1" />
                        <div class="form-group srch-type">
                            <div class="form-item">
                                <div class="select-type2">
                                    <select id="search" name="search">
                                        <option value="subject">제목</option>
							<option value="content">내용</option>
							<option value="all">제목+내용</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-item">
                                <input type="text" id="conditionTemp" name="conditionTemp" placeholder="">
                                <input type="hidden" id="condition" name="condition" class="i_text" value="">
                            </div>
                            <div class="form-item">
                                <button type="button" class="btn-search" onclick="fncSearch();">검색</button>
                            </div>
                        </div>
                        <div class="table-type3">
                            <p class="side">총 597건</p>
                            <table>
                                <caption>news</caption>
                                <colgroup>
                                    <col style="width:106px">
                                    <col>
                                    <col style="width:333px">
                                    <col style="width:110px">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>제목</th>
                                    <th>등록일</th>
                                    <th>조회</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>597</td>
                                    <td><a href="#none" onclick="goView('2633'); return false;"><p>도미노피자, 내일(3일)부터 새해 맞이 포춘 굿즈 페스티벌 진행</p></a></td>
                                    <td>2022-01-02</td>
                                    <td>2</td>
                                </tr>
                               		<tr>
                                    <td>596</td>
                                    <td><a href="#none" onclick="goView('2631'); return false;"><p>도미노피자, 내일부터 2021년 피자전문점 1위 3관왕 기념 모든 피자 반값!</p></a></td>
                                    <td>2021-12-27</td>
                                    <td>524</td>
                                </tr>
                               		<tr>
                                    <td>595</td>
                                    <td><a href="#none" onclick="goView('2629'); return false;"><p>도미노피자, 고객이 가장 추천하는 기업(KNPS) 9년 연속 1위</p></a></td>
                                    <td>2021-12-22</td>
                                    <td>124</td>
                                </tr>
                               		<tr>
                                    <td>594</td>
                                    <td><a href="#none" onclick="goView('2628'); return false;"><p>도미노피자, 삼성서울병원과 강남세브란스병원에 기부금 후원</p></a></td>
                                    <td>2021-12-21</td>
                                    <td>31</td>
                                </tr>
                               		<tr>
                                    <td>593</td>
                                    <td><a href="#none" onclick="goView('2626'); return false;"><p>도미노피자, 페이코인 결제 시 배달 및 포장50% 할인</p></a></td>
                                    <td>2021-12-17</td>
                                    <td>127</td>
                                </tr>
                               		<tr>
                                    <td>592</td>
                                    <td><a href="#none" onclick="goView('2625'); return false;"><p>도미노피자, 크리스마스 맞아 모든 온라인 회원 신제품 최대 35% 할인!</p></a></td>
                                    <td>2021-12-16</td>
                                    <td>51</td>
                                </tr>
                               		<tr>
                                    <td>591</td>
                                    <td><a href="#none" onclick="goView('2624'); return false;"><p>도미노피자, 매주 화요일 온라인 포장 주문시 잔망루피 가랜드 제공!</p></a></td>
                                    <td>2021-12-13</td>
                                    <td>69</td>
                                </tr>
                               		<tr>
                                    <td>590</td>
                                    <td><a href="#none" onclick="goView('2623'); return false;"><p>도미노피자, 자체 멤버십의 놀라운 혜택</p></a></td>
                                    <td>2021-12-12</td>
                                    <td>38</td>
                                </tr>
                               		<tr>
                                    <td>589</td>
                                    <td><a href="#none" onclick="goView('2622'); return false;"><p>도미노피자, 모든 온라인 회원 최대 15% LF몰 할인 쿠폰 제공</p></a></td>
                                    <td>2021-12-09</td>
                                    <td>24</td>
                                </tr>
                               		<tr>
                                    <td>588</td>
                                    <td><a href="#none" onclick="goView('2620'); return false;"><p>도미노피자, 3 COURSE로 즐기는 ‘마스터 트리플 코스 피자’ 오늘(3일) 출시</p></a></td>
                                    <td>2021-12-03</td>
                                    <td>268</td>
                                </tr>
                               		</tbody>
                            </table>
                        </div>
                        <div class="pagination">
                            <a href='javascript:;' class='pager-first'>처음</a><a href='javascript:;' class='pager-prev'>이전</a><ol>
                                <li><strong>1</strong></li>  <li><a href='javascript:;' onclick='javascript:paging(2); return false;'>2</a></li>  <li><a href='javascript:;' onclick='javascript:paging(3); return false;'>3</a></li>  <li><a href='javascript:;' onclick='javascript:paging(4); return false;'>4</a></li>  <li><a href='javascript:;' onclick='javascript:paging(5); return false;'>5</a></li>  <li><a href='javascript:;' onclick='javascript:paging(6); return false;'>6</a></li>  <li><a href='javascript:;' onclick='javascript:paging(7); return false;'>7</a></li>  <li><a href='javascript:;' onclick='javascript:paging(8); return false;'>8</a></li>  <li><a href='javascript:;' onclick='javascript:paging(9); return false;'>9</a></li>  <li><a href='javascript:;' onclick='javascript:paging(10); return false;'>10</a></li></ol>
                            <a href='javascript:;' class='pager-next'>다음</a><a href='javascript:;' class='pager-last' onclick='javascript:paging(60); return false;'>마지막</a></div>
                        </form>
                    </div>
                </article>
            </div> 
        </div>
    </section>
</div>
		<!-- //container -->
<script type="text/javascript">

	_TRK_PI = "WP_18_2";			
	_TRK_CP = "더보기>공지사항>보도자료";
</script>
<%@include file="/layout/shopping_basket.jsp" %>
<%@include file="/layout/footer.jsp" %>
</div><!-- //wrap -->
<%@include file="/layout/naver_google.jsp" %>
</body>
</html>
<script type="text/javascript">
$(document).ready(function(){
	var condition = $('#condition').val();
	if(condition.indexOf('[[')>-1) {
		condition = condition.replace('[[','[');
	}

	if(condition.indexOf(']]')>-1) {
		condition = condition.replace(']]',']');
	}
	$('#conditionTemp').val(condition);
});

$('#conditionTemp').keyup(function(e){
	if(e.keyCode == 13) {
		if($('#conditionTemp').val() == '') {
			alert('검색어를 입력해주세요');
			return;
		}

		fncSearch();
	}
});

function paging(no){
	$("#pageNo").val(no);
	$("#searchForm").submit();
}

function fncSearch() {
	if($('#conditionTemp').val() == '') {
		alert('검색어를 입력해주세요');
		return;
	}

	var condition = $('#conditionTemp').val();
	condition = condition.replace('[','[[');
	condition = condition.replace(']',']]');

	$('#condition').val(condition);
	$('#pageNo').val(1);

	$("#searchForm").attr("action", "/bbs/newsList");
	$('#searchForm').submit();
}

var queryString;
function setQueryString() {
	queryString = $('#searchForm').serialize();
}

function goView(idx,open_date,reg_date) {
	$("#searchForm").attr("action", "/bbs/newsView?idx="+idx).submit();
}
</script>