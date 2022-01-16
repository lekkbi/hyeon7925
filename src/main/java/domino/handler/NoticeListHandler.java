package domino.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domino.domain.NoticeDTO;
import domino.service.NoticeListService;
import domino.service.NoticePagingService;

public class NoticeListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		NoticeListService noticeListService = NoticeListService.getInstance();
		String type = request.getParameter("type");
		List<NoticeDTO> list = noticeListService.select(type);
		request.setAttribute("list", list);
		
		return "notice/newsList";
	}

}
