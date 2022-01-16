package domino.handler;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domino.domain.FaqDTO;
import domino.service.FaqListService;

public class FaqListHandler implements CommandHandler{
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		FaqListService faqListService = FaqListService.getInstance();
		String faq_category = request.getParameter("faq_category");
		List<FaqDTO> list = faqListService.select(faq_category);
		request.setAttribute("list", list);
		
		return "faq/faqList";
	}
	

}
