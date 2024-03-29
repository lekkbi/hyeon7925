package domino.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domino.domain.InquiryDTO;
import domino.domain.NoticeDTO;
import domino.service.InquiryListService;
import domino.service.InquiryWriteService;
import domino.service.NoticeListService;
import domino.service.NoticePagingService;
import domino.service.NoticeWriteService;

public class InquiryWriteHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		InquiryListService linquiryListService = InquiryListService.getInstance();

			String member_id = request.getParameter("member_id");
			String category = request.getParameter("category");
			String shop_loc = request.getParameter("shop_loc");
			String shop_name = request.getParameter("shop_name");
			String iq_title = request.getParameter("iq_title");
			String iq_content = request.getParameter("iq_content");

			InquiryDTO dto = new InquiryDTO();
			dto.setMember_id(member_id);
			dto.setCategory(category);
			dto.setShop_loc(shop_loc);
			dto.setShop_name(shop_name);
			dto.setIq_title(iq_title);
			dto.setIq_content(iq_content);
			
			 InquiryWriteService writeService = InquiryWriteService.getInstance();
	         int rowCount = writeService.write(dto);
	         
	         if (rowCount == 1 ) {
	            String location = "questionList.do"; 
	            
	            response.sendRedirect(location);
	         }
	
		return null;
	}
}
