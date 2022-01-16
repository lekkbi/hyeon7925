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
                              <li><strong>도미노뉴스</strong></li>
                        </ol>
                    </div>
                </div>
                <article class="notice-area">
                    <div class="menu-nav-wrap">
                        <div class="menu-nav">
                            <ul>
                                <li  class="active"><a href="/bbs/newsList?type=N">도미노뉴스</a></li>
                                <li ><a href="/bbs/newsList?type=P">보도자료</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="notice-wrap">
                    <form id="searchForm" name="searchForm" action="/bbs/newsList" method="post">
			<input type="hidden" id="type" name="type" value="N" />
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
                            <p class="side">총 396건</p>
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
                                    <td>396</td>
                                    <td><a href="#none" onclick="goView('2632'); return false;"><p>12월 31일(금) 연장 영업 안내</p></a></td>
                                    <td>2021-12-30</td>
                                    <td>284</td>
                                </tr>
                               		<tr>
                                    <td>395</td>
                                    <td><a href="#none" onclick="goView('2630'); return false;"><p>크리스마스 이브(24일) 연장영업 안내</p></a></td>
                                    <td>2021-12-23</td>
                                    <td>360</td>
                                </tr>
                               		<tr>
                                    <td>394</td>
                                    <td><a href="#none" onclick="goView('2627'); return false;"><p>날씨로 인한 배달 지연 안내</p></a></td>
                                    <td>2021-12-17</td>
                                    <td>193</td>
                                </tr>
                               		<tr>
                                    <td>393</td>
                                    <td><a href="#none" onclick="goView('2621'); return false;"><p>&#39;고스트버스터즈: 라이즈&#39; 영화예매권 증정 이벤트</p></a></td>
                                    <td>2021-12-08</td>
                                    <td>177</td>
                                </tr>
                               		<tr>
                                    <td>392</td>
                                    <td><a href="#none" onclick="goView('2619'); return false;"><p>음료(6종) 가격 인상 안내</p></a></td>
                                    <td>2021-12-03</td>
                                    <td>215</td>
                                </tr>
                               		<tr>
                                    <td>391</td>
                                    <td><a href="#none" onclick="goView('2606'); return false;"><p>페이코 간편로그인 및 회원가입 서비스 종료 안내</p></a></td>
                                    <td>2021-11-16</td>
                                    <td>78</td>
                                </tr>
                               		<tr>
                                    <td>390</td>
                                    <td><a href="#none" onclick="goView('2605'); return false;"><p>개인정보처리방침 개정 고지 (11/16 적용)</p></a></td>
                                    <td>2021-11-09</td>
                                    <td>96</td>
                                </tr>
                               		<tr>
                                    <td>389</td>
                                    <td><a href="#none" onclick="goView('2603'); return false;"><p>세종호수공원 드론배달 관련 공지</p></a></td>
                                    <td>2021-11-01</td>
                                    <td>229</td>
                                </tr>
                               		<tr>
                                    <td>388</td>
                                    <td><a href="#none" onclick="goView('2604'); return false;"><p>개인정보처리방침 개정 고지</p></a></td>
                                    <td>2021-10-28</td>
                                    <td>81</td>
                                </tr>
                               		<tr>
                                    <td>387</td>
                                    <td><a href="#none" onclick="goView('2598'); return false;"><p>쿠필카 홈캠핑 세트 증정 이벤트 당첨자 안내</p></a></td>
                                    <td>2021-10-20</td>
                                    <td>232</td>
                                </tr>
                               		</tbody>
                            </table>
                        </div>
                        <div class="pagination">
                            <a href='javascript:;' class='pager-first'>처음</a><a href='javascript:;' class='pager-prev'>이전</a><ol>
                                <li><strong>1</strong></li>  <li><a href='javascript:;' onclick='javascript:paging(2); return false;'>2</a></li>  <li><a href='javascript:;' onclick='javascript:paging(3); return false;'>3</a></li>  <li><a href='javascript:;' onclick='javascript:paging(4); return false;'>4</a></li>  <li><a href='javascript:;' onclick='javascript:paging(5); return false;'>5</a></li>  <li><a href='javascript:;' onclick='javascript:paging(6); return false;'>6</a></li>  <li><a href='javascript:;' onclick='javascript:paging(7); return false;'>7</a></li>  <li><a href='javascript:;' onclick='javascript:paging(8); return false;'>8</a></li>  <li><a href='javascript:;' onclick='javascript:paging(9); return false;'>9</a></li>  <li><a href='javascript:;' onclick='javascript:paging(10); return false;'>10</a></li></ol>
                            <a href='javascript:;' class='pager-next'>다음</a><a href='javascript:;' class='pager-last' onclick='javascript:paging(40); return false;'>마지막</a></div>
                        </form>
                    </div>
                </article>
            </div> 
        </div>
    </section>
</div>
		<!-- //container -->
<script type="text/javascript">

	_TRK_PI = "WP_18_1";		
	_TRK_CP = "더보기>공지사항>도미노뉴스";
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