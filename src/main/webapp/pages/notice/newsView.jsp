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
                                <li><a href="/main">홈</a></li>
                                <li>공지사항</li>
                                <li>도미노뉴스</li>
                            </ol>
                        </div>
                    </div>
                    <article class="notice-area">
                        <div class="menu-nav-wrap">
                            <div class="menu-nav">
                                <ul>
                                    <li><a href="newsList.do?type=N">도미노뉴스</a></li>
                                    <li><a href="newsList.do?type=P">보도자료</a></li>
                                    <c:set var="pseq" value="${ param.seq }"></c:set>
                                    <c:forEach var="dto" items="${ list }">
                                		<c:if test="${ dto.seq eq pseq }">
                                			<c:set var="pnotice_code" value="${ dto.notice_code }"></c:set>
                                		</c:if>
                                	</c:forEach>
                                    <li><a href="newsEdit.do?type=${param.type}&notice_code=${pnotice_code}">공지수정</a></li>
                                    <li><a onclick="delete()" href="newsDelete.do?type=${param.type}&notice_code=${pnotice_code}">공지삭제</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="news-view">
                        <form id="newsForm" name="newsForm" method="post">
                            <dl class="news-content">                            
								<input type="hidden" id="type" name="type" value="N" />
								<input type="hidden" id="pageNo" name="pageNo" value="1" />
								<input type="hidden" id="search" name="search" value="subject" />
								<input type="hidden" id="condition" name="condition" value="" />
                                <dt>
                                <c:forEach var="dto" items="${ list }">
                                	<c:if test="${ dto.seq eq pseq }">
                                	<strong>${ dto.title }</strong>
                                    <ul>
                                        <li>${ dto.notice_date }</li>
                                        <li>조회 <span>${ dto.hits }</span></li>
                                    </ul>
                                </dt>
                                <dd>
                                <!-- 
                                	언제나 도미노피자를 사랑해주시는 고객님 안녕하세요,
                                    <div><br></div>
                                    <div>현재 일부 지역의 매장이 폭설 및 한파로 인해 <b>배달이 다소 지연</b>되고 있습니다.</div>
                                    <div><b>방문포장</b>을 이용하시면 조금 더 빠르게 도미노피자를 만나보실 수 있습니다.</div>
                                    <div><br></div>
                                    <div>고객님들의 양해 부탁드립니다.</div>
                                    <div><br></div>
                                    <div>오늘도 도미노피자를 이용해주셔서 감사합니다.</div>
                                -->
                                ${ dto.content }
                                </dd>
                                </c:if>
                                </c:forEach>
                            </dl>
                            <ul class="news-button">
                            <li>
                            <span>이전</span>
                            <c:if test="${ pseq eq 1 and fn:length(list) eq 2 }">
                           			이전 글이 존재하지 않습니다
                           	</c:if>
                            <c:forEach var="dto" items="${ list }">
                           		<c:if test="${ dto.seq eq pseq-1  }">
                           			<a href="newsView.do?type=${dto.type}&seq=${dto.seq}">${ dto.title }</a>
                           		</c:if>
                           	</c:forEach>
                            </li>
							<li>
								<span>다음</span>
								<c:if test="${ pseq ne 1 and fn:length(list) eq 2 }">
                           			다음 글이 존재하지 않습니다
                           		</c:if>
                            <c:forEach var="dto" items="${ list }">
                           		<c:if test="${ dto.seq eq pseq+1  }">
                           			<a href="newsView.do?type=${dto.type}&seq=${dto.seq}">${ dto.title }</a>
                           		</c:if>
                           	</c:forEach>
							</li>
							</ul>
                            </form>
                        </div>	
                        <div class="btn-wrap">
                            <a href="newsList.do?" class="btn-type v2">목록</a>
                        </div>
                    </article>
                </div>
            </div>
        </section>
    </div>
		<!-- //container -->

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
var queryString;
function setQueryString() {
	queryString = $('#newsForm').serialize();
}

function goView(idx, type, open_date, reg_date) {
	setQueryString();

	var params = [];
	params[0] = 'idx=' + idx;
	params[1] = queryString;

	if(type == 'view') {
		$("#newsForm").attr("action", "/bbs/newsView?idx="+idx).submit();
	} else if(type == 'list') {
		$("#newsForm").attr("action", "/bbs/newsList").submit();
	}
}
</script>
<script>
/* 	function delete() {
		if(confirm("정말로 삭제하시겠습니다?")) document.submit();
		else history.back();
	} */
</script>