<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<%@include file="/layout/head.jsp" %>
<body>
<div id="wrap">
<%@include file="/layout/header.jsp" %>
   <script>
$(document).ready(function(){
   
   $('.btn-domichat').click(function(e){
      // 트래킹
      try{
         _trk_clickTrace('EVT','메인페이지 > 도미챗으로 주문하기');
      }catch(e){
         console.log(e.message);
      }
      domichat_open("N");
   });
   
   getTodayLabel();
   
   //visual area
   var slideCount = $('.slide-count');
   $('.visual-slider').on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
      var i = (currentSlide ? currentSlide : 0) + 1;
      $(this).find('.slide-count').html('<span class="current">' + i + '</span> ' + '/' + ' <span class="total">' + slick.slideCount + '</span>');
   });
   
   // play button
   $('.visual-area .btn-play').click(function() {
      var sw;
      if (sw == true) {
    	  
         $(this).addClass('on');
         $('.visual-slider').slick('slickPause');
      } else {
         $(this).removeClass('on');
         $('.visual-slider').slick('slickPlay');
      }
      sw = !sw;
   });
   
   var sw=true;
   $('.visual-slider').slick({
      slide: '.slider-item',
      autoplay: true,
      autoplaySpeed: 4500,
      infinite: true,
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true,
      cssEase: 'ease-in-out',
      dots: false,
   });
   // play button
   $('.visual-area .btn-play').click(function() {
      if (sw == true) {
         $(this).addClass('on');
         $('.visual-slider').slick('slickPause');
      } else {
         $(this).removeClass('on');
         $('.visual-slider').slick('slickPlay');
      }

      sw = !sw;
   });
   
   //grade area
   $('.grade-slider').show();
   
   //grade area
   $('.grade-slider').slick({
      slidesToShow:3.5,
      slidesToScroll: 1.5,
      infinite:false,
      arrows: true,
   });
   
   $('.banner-slider').slick({
      slidesToShow: 3,
      slidesToScroll: 1,
      dots: false,
      arrows: true,
   });
   
   // 마이쿠폰 정보 조회(가입회원)   
   function getTodayLabel() {
      var t = new Date();
      var today = new Date().getDay(); // 0: 일요일, 1: 월요일, 2: 화요일, 3: 수요일, 4: 목요일, 5: 금요일 , 6: 토요일
      
      var day = String(t.getDate());
      var month = String(t.getMonth() + 1);
      var year = String(t.getUTCFullYear());

      if(("2020219"  == (year+month+day)) ||("202048"  == (year+month+day)) || ("2020415"  == (year+month+day))
            || ("2020513"  == (year+month+day))
            ||("2020729"  == (year+month+day)) ){
         $("#getTodayPrmt a").attr("href","/event/entry/435");
         $("#getTodayPrmt a img").attr("src","https://cdn.dominos.co.kr/domino/pc/images/main/main_card4-3.png");
         
         if(today != 2 && today !=4 ){
            $(".wrap_box").html("등급별 최대 40%");
         }
         
      }else {
         $(".wrap_box").html("등급별 최대 40%");
         $("#getTodayPrmt").remove();
      }
      
      
      if(("2020217"  == (year+month+day)) ||("2020218"  == (year+month+day)) ||("2020219"  == (year+month+day))  
               ||("2020220"  == (year+month+day))||("2020221"  == (year+month+day)) ||("2020222"  == (year+month+day))   ||("2020223"  == (year+month+day)))
      {
         $(".wrap_box").html("프리미엄+클래식 한판 더!");
      }

   }
   
});

</script>
<script type="application/ld+json">
{
 "@context": "http://schema.org",
 "@type": "Person",
 "name": "dominos",
 "url": "https://web.dominos.co.kr/main,
 "sameAs": [
   "https://www.instagram.com/dominostory"
 ]
}
</script>
<!-- S: 200827 플로팅 배너 추가 -->
    <div class="floatingBanner">
       <a href="/event/viewHtml?seq=1225&gubun=E0200">
           <img src="https://cdn.dominos.co.kr/renewal2018/w/images/banner-floating_200827.png">
        </a>
        <button class="btn-close"></button>
    </div>
    <script>
        $('.floatingBanner .btn-close').on('click', function(){
            $(this).parents('.floatingBanner').hide();
        });
    </script>
    <!-- E: 200827 플로팅 배너 추가 -->

<div id="container">
   <section id="content">
      <div class="main">
         <!-- visual -->
         <article class="article visual-area">
            
            <div class="visual-slider">
            <div class='slider-item'><a href="https://web.dominos.co.kr/event/viewHtml?seq=1328&gubun=E0200" target="_self" style="background-image: url('https://cdn.dominos.co.kr/admin/upload/banner/20210901_3VJffg9G.jpg')" alt="20210902_목요일 한판더 포장 1+1" ></a></div>
                        <div class='slider-item'><a href="https://web.dominos.co.kr/event/viewHtml?seq=1487&gubun=E0200" target="_self" style="background-image: url('https://cdn.dominos.co.kr/admin/upload/banner/20211202_7YIrzl7x.jpg')" alt="20211203_라이스볼 반값(12월)" ></a></div>
                        <div class='slider-item'><a href="https://web.dominos.co.kr/event/viewHtml?seq=1497&gubun=E0200" target="_self" style="background-image: url('https://cdn.dominos.co.kr/admin/upload/banner/20211222_Gf8IIcGb.jpg')" alt="20211217_신제품2535" ></a></div>
                        <div class='slider-item'><a href="https://web.dominos.co.kr/event/viewHtml?seq=1500&gubun=E0200" target="_self" style="background-image: url('https://cdn.dominos.co.kr/admin/upload/banner/20211222_pfKZkI53.jpg')" alt="20211217_크리스마스 세트" ></a></div>
                        <div class='slider-item'><a href="https://web.dominos.co.kr/event/viewHtml?seq=1491&gubun=E0200" target="_self" style="background-image: url('https://cdn.dominos.co.kr/admin/upload/banner/20211201_eYiVLEEO.jpg')" alt="20211203_프리미엄 L 2판 주문 시, 1판 50% 할인" ></a></div>
                        <div class='slider-item'><a href="/event/lfmall" target="_self" style="background-image: url('https://cdn.dominos.co.kr/admin/upload/banner/20211210_3TQ78sd0.jpg')" alt="20211210_12월 신규가입 및 기존회원 주문완료 이벤트 (LF몰 쿠폰 증정)" ></a></div>         
               <div class="slide-count-wrap">
                        <span class="slide-count"></span>
                        <a href="javascript:;" class="btn-play">btnPlay</a>
                    </div>
                    </div>
         </article>
         <!-- //visual -->
         
         <!-- delivery -->
         <article class="article delivery-area">
            <div class="inner-box">
               <div class="item-wrap v2">
                  <div class="item">
                     <a href="javascript:void(0)" onClick="orderMenuList('O')">
                        <i class="ico-delivery"></i>
                        <span class="text">배달 주문</span>
                        <span class="arrow"></span>
                     </a>
                     <p>
                        <!--  배달 40%<br/>-->
                        등급별 최대 30%
                     </p>
                  </div>
                  <div class="item">
                     <a href="javascript:void(0)" onClick="orderMenuList('W')">
                        <i class="ico-takeout"></i>
                        <span class="text">포장 주문</span>
                        <span class="arrow"></span>
                     </a>
                     <p class="wrap_box">
                     </p>
                  </div>
                  
                  <div class="item">
                     <a href="/quickOrder/index" onMouseDown="eval('try{ _trk_clickTrace( \'EVT\', \'메인 화면 > 퀵오더 주문하기\' ); }catch(_e){ }');">
                        <i class="ico-quick3"></i>
                        <span class="text">퀵오더</span>
                        <span class="arrow"></span>
                     </a>
                     <p>
                        자주 이용하는 메뉴를<br>
                        더 빠르게 주문해보세요!
                     </p>
                  </div>
               </div>
            </div>
         </article>
         <!-- //delivery -->
         
         <!-- my grade-->
         <article class="article grade-area">
            <div class="inner-box">

               <div class="grade-info">
                  <div class="login-before">
                     <div class="title-wrap">
                        <div class="title-type2">도미노피자의<br><strong>특별한 매니아 혜택</strong><br>누려보세요!</div>
                     </div>
                     <div class="btn-wrap">
                        <a href="/global/login" class="btn-type5">로그인</a>
                     </div>
                  </div>
                  </div>
               
               
               <div class="grade-slider" style="display:none;">
               <div>
                        <a href="/global/login"><img src="https://cdn.dominos.co.kr/domino/pc/images/main/main_card1.png"/></a>
                     </div>
                     <div>
                        <a href="/event/mania"><img src="https://cdn.dominos.co.kr/domino/pc/images/main/main_card2.gif"/></a>
                     </div>
                     
                     <!-- 요일별 프로모션 설정(상단 스크립트에서 수정) -->
                     <div id="getTodayPrmt">
                        <a href="/event/view?seq=1161&gubun=E0200"><img src="https://cdn.dominos.co.kr/domino/pc/images/main/main_card4-1.gif"/></a>
                     </div>
                     <!-- //요일별 프로모션 설정(상단 스크립트에서 수정) -->
                     
                     <div>
                        <a href="/event/viewHtml?seq=1149&gubun=E0200"><img src="https://cdn.dominos.co.kr/domino/pc/images/main/main_card3.png"/></a>
                     </div>
                     
                     <div>
                        <a href="/goods/dominosMoment"><img src="https://cdn.dominos.co.kr/domino/pc/images/main/main_card5.png"/></a>
                     </div>
                  </div><!-- //grade-slider -->
               
         </div>
         </article>
         <!-- //my grade-->
         
         <!-- banner -->
         <article class="article banner-area">
            <div class="inner-box">
                   <div class="banner-slider"  >
                   
                      <div class="slider-item">
                           <a href="javascript:goBannerLink('https://web.dominos.co.kr/event/viewHtml?seq=1494&gubun=E0200');">
                              <figure>
                                 <img src="https://cdn.dominos.co.kr/admin/upload/banner/20211202_O6T4x9na.jpg" alt="20211203_큐레이션_마스터트리플코스 ">
                              </figure>
                           </a>
                        </div>
                     <div class="slider-item">
                           <a href="javascript:goBannerLink('/event/viewHtml?seq=1313&gubun=E0200');">
                              <figure>
                                 <img src="https://cdn.dominos.co.kr/admin/upload/banner/20201221_WxeivHS0.jpg" alt="20201228_큐레이션_DPS 3차 고도화">
                              </figure>
                           </a>
                        </div>
                     <div class="slider-item">
                           <a href="javascript:goBannerLink('/event/viewHtml?seq=1304&gubun=E0200');">
                              <figure>
                                 <img src="https://cdn.dominos.co.kr/admin/upload/banner/20201127_0Bh97A50.jpg" alt="20201127_큐레이션_퀵오더&도미노페이">
                              </figure>
                           </a>
                        </div>
                     <div class="slider-item">
                           <a href="javascript:goBannerLink('/event/dominoSpot');">
                              <figure>
                                 <img src="https://cdn.dominos.co.kr/admin/upload/banner/20200626_9PFh173Q.jpg" alt="큐레이션_도미노스팟">
                              </figure>
                           </a>
                        </div>
                     </div>
            </div>
         </article>
         <!-- //banner -->
         
         <!-- domichat -->
            <a href="#" class="btn-domichat">
                <i class="ico-domi"></i>
                <span>도미챗으로 주문하기</span>
            </a>
            <!-- //domichat -->
            
      </div><!-- //main -->
   </section>
   <div class="pop-layer type2" id="pop-pw2">
    <div class="dim"></div>
    <div class="pop-wrap">
        <div class="pop-title-wrap">
            <h2 class="pop-title">비밀번호 변경 권유</h2>
        </div>
        <div class="pop-content">
            <div class="title-wrap">
                <p class="title-type">
                    고객님의 회원정보 보호를 위해 도미노피자는
                    <em>6개월마다<br>비밀번호 변경을 권유</em>하고 있습니다.
                </p>
                <p class="text-type">
                    비밀번호 변경을 원하지 않을 경우 '다음에 변경하기'
                    버튼을 눌러 1개월 동안 안내를 받지 않을 수 있습니다.
                    기존 비밀번호와 신규 비밀번호를 입력 해 주세요.
                </p>
            </div>
            <div class="form info-form">
                <dl>
                    <dt>현재 비밀번호</dt>
                    <dd><input type="password" name="old_passwd" id="old_passwd" maxlength="16" placeholder="">
                        <div class="text-type4" id="old_passwd_alert" style="display:none;">
                            
                        </div>
                    </dd>
                </dl>
                <dl>
                    <dt>비밀번호</dt>
                    <dd><input type="password" name="passwd" id="passwd" maxlength="16" placeholder=" 8~16자 영문대소문자,숫자, 특수문자 사용가능">
                        <div class="text-type4" id="passwd_alert" style="display:none;">
                            
                        </div>
                    </dd>
                </dl>
                <dl>
                    <dt>비밀번호 확인</dt>
                    <dd><input type="password" name="confirmpw" id="confirmpw" maxlength="16" placeholder="">
                        <div class="text-type4" id="confirmpw_alert" style="display:none;">
                            
                        </div>
                    </dd>
                </dl>
            </div>
            <div class="btn-wrap">
                <a href="javascript:updateChangePasswd();" class="btn-type v4">수정하기</a>
                <a href="javascript:goDelay();" class="btn-type v5">1개월 후 변경하기</a>
            </div>
        </div>
        <a href="#" class="btn-close"></a>
    </div>
</div>

<script type="text/javascript" src="https://web.dominos.co.kr/resources/js/member.js"></script>
<script type="text/javascript">
var redirectUrl = "/main";
$(document).ready(function(){
   var cookieYn = cookieManager.getCookie('PwdSuggest');

   if("" == "Y" && cookieYn == ""){
      //$("#password_ch_pop").addClass("open");
      UI.layerPopUp({selId:'#pop-pw2'});
   }

   //$("#goDelay").unbind("click");
});

//다음에 변경하기
function goDelay(){
   cookieManager.setCookie('PwdSuggest','0', 30); // 30일
   if(redirectUrl != "")
      location.href=redirectUrl;
   else
      location.href="/main";
}

//비밀번호 변경 처리
function updateChangePasswd() {
   $("#old_passwd_alert").text("");
   $("#passwd_alert").text("");
   $("#confirmpw_alert").text("");
   $("#old_passwd_alert").hide();
   $("#passwd_alert").hide();
   $("#confirmpw_alert").hide();

   if ($('#old_passwd').val() == ""){
      $("#old_passwd_alert").text("현재 비밀번호를 입력해 주세요.");
      $("#old_passwd_alert").show();
      $('#old_passwd').focus();
      return;
   }
   if ($('#passwd').val() == ""){
      $("#passwd_alert").text("새 비밀번호를 입력해 주세요.");
      $("#passwd_alert").show();
      $('#passwd').focus();
      return;
   }
   if ($('#confirmpw').val() == ""){
      $("#confirmpw_alert").text("새 비밀번호를 입력해 주세요.");
      $("#confirmpw_alert").show();
      $('#confirmpw').focus();
      return;
   }
   if (!isValidPwd($("#passwd").val())) {
      $("#passwd").focus();
      return;
   }
   if ($('#passwd').val() != $('#confirmpw').val()) {
      $("#confirmpw_alert").text('비밀번호가 일치하지 않습니다.');
      $("#confirmpw_alert").show();
      
      $("#confirmpw").focus();
      return;
   }

   if(confirm("해당 내용으로 수정하시겠습니까?")){
      $.ajax({
         type: "POST",
         url: "/member/changePwdAjax",
         data: {   old_passwd : $("#old_passwd").val(),
               passwd : $('#passwd').val() },
         dataType : "json",
         success:function(data) {
            if (data.status == "success"){
               alert(data.msg);
               if(redirectUrl != "")
                  location.href=redirectUrl;
               else
                  location.href="/main";
               return;
            } else {
               if(data.code != ""){
                  $("#"+data.code+"_alert").text(data.msg);
                  $("#"+data.code+"_alert").show();
                  $("#"+data.code).focus();
               }else{
                  alert(data.msg);
               }
               return;
            }
         },
         error: function (error){
            alert("다시 시도해주세요.");
         }
      });
   }
}

</script>
</div>
<div class="pop-layer pop-lsm" id="pop-lsm">
</div>
<div class="pop-layer" id="pop-address3">
</div>   
<!-- //container -->

<script type="text/javascript" src="https://web.dominos.co.kr/resources/js/xml2json.js"></script>
<script type="text/javascript">
var p_now = new Date();
// 헤더푸터 인크루드
$(document).ready(function(){
   
   // 배너 로딩
   var t_now = new Date();
   $.ajax({
      type: "GET",
      url: "/contents/mainBanner",
      dataType: "xml",
      success:function(xml) {
         
         var lineBannerYn = "";
         var cnt = $(xml).find('banner').find('bitem').length;
         $(xml).find('banner').find('bitem').each(function(i) {
               var html = "";
               var sDate = stringToDate($(this).attr("sDate"));
               var eDate = stringToDate($(this).attr("eDate"));
               var useYn = $(this).attr("useYn");
               var gubun = $(this).attr("gubun");
               var fileNm = $(this).attr("fileNm");
               var linkUrl = $(this).attr("linkUrl");
               var title = $(this).attr("title");
               var target = $(this).attr("target");
               
               var gubunNm = "";
               if(gubun == "B0001")
                  gubunNm = "메인빅배너";
               else if(gubun == "B0002")
                  gubunNm = "메인신제품";
               else if(gubun == "B0003")
                  gubunNm = "메인하단";
               else if(gubun == "B0008")
                  gubunNm = "띠 배너";

               var loggerTrack = "onmousedown=\"try{_trk_clickTrace('EVT','"+gubunNm+"/"+title+"');}catch(e){}\"";
               var title2 ="";
               
               if(title=="[리뉴얼] 큐레이션 01. 신제품피자")
                  title2="큐레이션_1";
               else if(title=="[리뉴얼] 큐레이션 02. 하프&하프")
                  title2="큐레이션_2";
               else if(title=="[리뉴얼] 큐레이션 03. 도미노 드라이빙 픽업")
                  title2="큐레이션_3";
               
               var loggerTrack2 = "onmousedown=\"try{_trk_clickTrace('EVT','"+title2+"');}catch(e){}\"";
               
               if(t_now > sDate && t_now < eDate && useYn == "Y") {
                  if(gubun == "B0001" || gubun == "B0002") {
                     
                  } else if(gubun == "B0003") {
                  
                     if(title !='180629_단체주문_메인하단'){
                        html = "<div class=\"slider-item\"><a href=\"javascript:goBannerLink('"+linkUrl+"');\"><figure><img src=\"https://cdn.dominos.co.kr/admin/upload/banner/"+fileNm+"\" alt=\""+title+"\"></figure></a></div>";
                        $("#group_order_area").append($(html));
                     }
                  } else if(gubun == "B0008" && lineBannerYn == "" && "true" == "true") {
                  
                     if(fileNm != ""){
                        lineBannerYn = "Y";
                        html2 ="<div class='slider-item'><a href=\"javascript:goBannerLink('"+linkUrl+"');\"><img src=\"https://cdn.dominos.co.kr/admin/upload/banner/"+fileNm+"\" alt=\""+title+"\"></a></div>";
                                $(".visual-slider").before($(html));
                     }
                  }
               }
               
               if(cnt == (i+1)) {
                  //visual area
                  
               }
         });

      
      }
   });
   
});

$(document).ajaxStop(function() {
   $(".bnr_section").each(function(idx){
      if(idx%2 != 0){
         $(this).addClass("bnr_section_right");
      }
   });

   if($(".bnr_section").length%2 == 0){
      $("#empty_area").show();
   }
});

function goBannerLink(link) {
   location.href = link;
}

function goOrder(orderMethod) {

      if(orderMethod == "Q") location.href = "/quickOrder/index";
      else location.href = "/goods/list?dsp_ctgr=C0101";
   
}

function getMainPopup() {
   var nowDay = p_now.getFullYear() + "" + fncLPAD((p_now.getMonth() + 1)) + "" + fncLPAD(p_now.getDate()) + "";

   $.ajax({
      type: "GET",
      url: "/resources/xml/mainPopup.xml",
      dataType: "xml",
      success:function(xml) {
         $(xml).find('pop').find('pitem').each(
            function(i) {
               var seq = $(this).attr('seq');
               var width = $(this).attr('imgWidth') - 4;
               var height = parseInt($(this).attr('imgHeight')) + 22;
               var leftPosition = (window.screen.width-width)/2;
               var topPosition = (window.screen.height-height)/2;
               var left = $(this).attr('imgLeft');
               var top = $(this).attr('imgTop');
               var s_date = $(this).attr('sDate');
               var e_date = $(this).attr('eDate');
               var lang = $(this).attr('lang');
               var use_yn = $(this).attr('useYn');
               if (nowDay >= s_date && nowDay <= e_date && lang != "EN" && use_yn == "Y") {
                  if (cookieManager.getCookie('DOMINO_MAINPOPUP_' + seq).isBlank()) {
                     window.open('/mainPopup?seq=' + seq, 'DOMINO_MAINPOP_' + seq, 'width=' + width + ', height=' + height + ', left='
                           + leftPosition + ', top='+ topPosition +', scrollbars = no');
                  }
               }
         });
      }
   });
}
function fncLPAD(num) {
   if (num < 10)
      return '0'+num;
   else
      '' + num;
   return num;
}

//온라인 서베이
function goSurvey(){
   alert("현재 서베이 진행기간이 아닙니다.");
}

// bannerPopUp
function bannerPopUp(linkUrl){
   var pop = window.open(linkUrl,'단체주문 안내','width=600px, height=830px, left=0, top=0, scrollbars=yes');
   pop.focus();
}

//주문하기
function goGoods(){
   
         location.href = "/global/login?returnUrl=/goods/list?dsp_ctgr=C0101";
         
}

//배달주문 메뉴리스트
function orderMenuList(orderGubun,bIsDriving,bIsDominoSpot) {
   
   let url = "/basket/branch?";
   
   var obj = {
      "order_gubun" : orderGubun
   }   
   
   // 로그인 안 되어있으면 로그인 화면으로 이동
   
      location.href="/global/login?returnUrl="+url+jQuery.param(obj);   
      return ;
      
   
   location.href=url+jQuery.param(obj);
}

</script>

<!-- Google 리마케팅 태그 코드 -->
   <script type="text/javascript">
   /* <![CDATA[ */
   var google_conversion_id = 956654516;
   var google_custom_params = window.google_tag_params;
   var google_remarketing_only = true;
   /* ]]> */
   </script>
   <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
   </script>
   <noscript>
   <div style="display:inline;">
   <img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/956654516/?guid=ON&amp;script=0"/>
   </div>
   </noscript>
   <!-- Google 리마케팅 태그 코드 -->
   
   <!-- Kakao Pixel Code -->
   <script type="text/javascript">
      kakaoPixel('Main').pageView();
   </script>
<!-- LOGGER 환경변수 설정 -->
<script type="text/javascript">
   _TRK_PI = "WP_1";   // 웹페이지의 성격 정의 - 메인페이지
   _TRK_CP = "메인페이지";
   _TRK_RK = "";
</script>
<!-- // LOGGER 환경변수 설정 -->

<%@include file="/layout/shopping_basket.jsp" %>
<%@include file="/layout/footer.jsp" %>
</div><!-- //wrap -->
<%@include file="/layout/naver_google.jsp" %>
</body>
</html>