<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 로딩 이미지 -->
   <!-- // 로딩 이미지 -->
   
   <!-- 로딩 이미지 -->
   <!-- 장바구니 담기 토스트 팝업(s) -->
   <div class="pop_toast" id="card_add" style="display: none;">
      <div class="bg"></div>
      <div class="pop_wrap">
         <div class="pop_content">
            <p>장바구니에 담았습니다.</p>
         </div>
      </div>
   </div>

   <!-- //장바구니 담기 토스트 팝업(e) -->

   <!-- 장바구니(s) -->
   <div class="pop_layer pop_type" id="cart_pop" style="display: none;">
      <div class="bg"></div>
      <div class="pop_wrap">
         <div class="pop_header">
            <h2>장바구니</h2>
         </div>
         <!-- iframe src="100_cart_pop_frame.html" width="1000" height="832" frameborder="0"></iframe><!-- 2016-10-05//아이프레임대체 -->
         <a href="javascript:;" onclick="setBasketCnt();" class="btn_ico btn_close">닫기</a>
      </div>
   </div>
   <!-- //장바구니(e) -->