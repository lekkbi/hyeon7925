package domino.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domino.domain.NoticeDTO;
import domino.service.NoticeListService;
import domino.service.NoticeViewService;

public class NoticeViewHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String type = request.getParameter("type");
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		NoticeViewService noticeViewService = NoticeViewService.getInstance();
		
		List<NoticeDTO> list = noticeViewService.selectThree(type, seq);
		request.setAttribute("list", list);
		
		return "notice/newsView";
	}

}
