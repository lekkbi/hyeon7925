package domino.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domino.domain.InquiryDTO;
import domino.domain.NoticeDTO;
import domino.service.InquiryListService;
import domino.service.NoticeListService;
import domino.service.NoticePagingService;

public class InquiryListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		InquiryListService inquiryListService = InquiryListService.getInstance();
		String member_id = request.getParameter("member_id");
		
		System.out.println("> member_id : " + member_id);
		
		List<InquiryDTO> list = inquiryListService.select(member_id);
		request.setAttribute("list", list); 
		
		return "myInfo/questionList";
	}

}
