package domino.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domino.service.NoticeDeleteService;


public class NoticeDeleteHandler implements CommandHandler{
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int notice_code = Integer.parseInt( request.getParameter("notice_code") ); 

		NoticeDeleteService noticeDeleteService = NoticeDeleteService.getInstance();
		int rowCount = noticeDeleteService.delete(notice_code);
		if(rowCount==1) {
			String type = request.getParameter("type");
			String location = "newsList.do?type="+type;
			response.sendRedirect(location);
		}
		return null;
	}

}

