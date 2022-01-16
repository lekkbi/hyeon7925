package domino.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domino.domain.NoticeDTO;
import domino.service.NoticeListService;
import domino.service.NoticeWriteService;

public class NoticeWriteHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		NoticeListService noticeListService = NoticeListService.getInstance();
		if (request.getMethod().equals("GET")){
			//포워드
			return "notice/newsWrite";
		}else if (request.getMethod().equals("POST")) {
			//리다이렉트 - 목록으로
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String type = request.getParameter("type");
			String emp_id = request.getParameter("emp_id");

			NoticeDTO dto = new NoticeDTO();
			dto.setTitle(title);;
			dto.setContent(content);
			dto.setType(type);
			dto.setEmp_id(emp_id);
			
			 NoticeWriteService writeService = NoticeWriteService.getInstance();
	         int rowCount = writeService.write(dto);
	         
	         if (rowCount == 1 ) {
	            String location = "newsList.do?type="+type;
	            response.sendRedirect(location);
	         }
		}  
		return null;
	}

}
