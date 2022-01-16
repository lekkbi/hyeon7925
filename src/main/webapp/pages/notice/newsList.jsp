<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib  prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
                              <li><a href="newsList.do?type=N">공지사항</a></li>
                              <li><strong>도미노뉴스</strong></li>
                        </ol>
                    </div>
                </div>
                <article class="notice-area">
                    <div class="menu-nav-wrap">
                        <div class="menu-nav">
                            <ul>
                                <li><a href="newsList.do?type=N">도미노뉴스</a></li>
                                <li><a href="newsList.do?type=P">보도자료</a></li>
                                <c:if test="${ not empty emp }">
                                	<li><a href="newsWrite.do?type=${param.type}">공지작성</a></li>
                                </c:if>
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
                            <p class="side">총 ${ fn:length(list) }건</p>
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
                                <!-- 
                                <tr>
                                    <td>396</td>
                                    <td><a href="#none" onclick="goView('2632'); return false;"><p>12월 31일(금) 연장 영업 안내</p></a></td>
                                    <td>2021-12-30</td>
                                    <td>284</td>
                                </tr>
                                 -->
                                 <c:if test="${empty list}">
								      <tr>
								        <td colspan="5">등록된 게시글이 없습니다.</td>
								      </tr>
								 </c:if>
								 <c:if test="${not empty list}">
	                                 <c:forEach items="${ list }" var="dto">
	                                 <tr>
	                                 	<td>${ dto.seq }</td>
	                                    <td><a href="newsView.do?type=${dto.type}&seq=${dto.seq}"><p>${ dto.title }</p></a></td>
	                                    <td>${ dto.notice_date }</td>
	                                    <td>${ dto.hits }</td>
	                                  <tr>
	                                 </c:forEach>
	                            </c:if>
                               	</tbody>
                            </table>
                        </div>
                        <div class="pagination">
                            <a href='javascript:;' class='pager-first'>처음</a><a href='javascript:;' class='pager-prev'>이전</a>
                            <ol>
                                <li><strong>1</strong></li>  
                                <li><a href='javascript:;' onclick='javascript:paging(2); return false;'>2</a></li>  
                                <li><a href='javascript:;' onclick='javascript:paging(3); return false;'>3</a></li>  
                                <li><a href='javascript:;' onclick='javascript:paging(4); return false;'>4</a></li>  
                                <li><a href='javascript:;' onclick='javascript:paging(5); return false;'>5</a></li>  
                                <li><a href='javascript:;' onclick='javascript:paging(6); return false;'>6</a></li>  
                                <li><a href='javascript:;' onclick='javascript:paging(7); return false;'>7</a></li>  
                                <li><a href='javascript:;' onclick='javascript:paging(8); return false;'>8</a></li>  
                                <li><a href='javascript:;' onclick='javascript:paging(9); return false;'>9</a></li>  
                                <li><a href='javascript:;' onclick='javascript:paging(10); return false;'>10</a></li>
                            </ol>
                            <a href='javascript:;' class='pager-next'>다음</a><a href='javascript:;' class='pager-last' onclick='javascript:paging(40); return false;'>마지막</a>
                        </div>
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
<script>
	$(".menu-nav li").removeClass("active");
	if(${param.type eq 'N'}) $(".menu-nav li").first().addClass("active");
	else $(".menu-nav li").eq(1).addClass("active");
</script>
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


function fncSearch() {
	if($('#conditionTemp').val() == '') {
		alert('검색어를 입력해주세요');
		return;
	}

/* 	var condition = $('#conditionTemp').val();
	condition = condition.replace('[','[[');
	condition = condition.replace(']',']]');

	$('#condition').val(condition);
	$('#pageNo').val(1);

	$("#searchForm").attr("action", "/bbs/newsList");
	$('#searchForm').submit(); */
}

/* var queryString;
function setQueryString() {
	queryString = $('#searchForm').serialize();
} */
/* $('#conditionTemp').keyup(function(e){
	if(e.keyCode == 13) {
		if($('#conditionTemp').val() == '') {
			alert('검색어를 입력해주세요');
			return;
		}

		fncSearch();
	}
});


<Script>

int searchCondition = 1; //1,2,3
String searchWord = request.getParameter("searchWord") == null ? "" : request.getParameter("searchWord");

try {
	//faqlist = dao.select()
	try { searchCondition = Integer.parseInt(request.getParameter("searchCondition")); } catch(Exception e)
	
}
if{ searchWord.equals("")){
	totalRecords = dao.getTotalRecords();
}else {
	totalRecords = dao.getTotalRecords(SearchCondition,searchWord);
}



function paging(no){
	$("#pageNo").val(no);
	$("#searchForm").submit();
} */
</script>