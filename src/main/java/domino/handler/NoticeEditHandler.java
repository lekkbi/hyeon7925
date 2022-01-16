package domino.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domino.domain.NoticeDTO;
import domino.service.NoticeEditContService;
import domino.service.NoticeEditService;

public class NoticeEditHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		if (request.getMethod().equals("GET")) {
			int notice_code = Integer.parseInt(request.getParameter("notice_code"));

			NoticeEditContService noticeEditContService = NoticeEditContService.getInstance();
			NoticeDTO dto = noticeEditContService.selectOne(notice_code);

			request.setAttribute("dto", dto);

			return "notice/newsEdit";
		}else if(request.getMethod().equals("POST")) {
			int notice_code = Integer.parseInt(request.getParameter("notice_code"));
			String emp_id = request.getParameter("emp_id");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String type = request.getParameter("type");

			NoticeDTO dto = new NoticeDTO();
			dto.setNotice_code(notice_code);
			dto.setEmp_id(emp_id);
			dto.setTitle(title);
			dto.setContent(content);

			NoticeEditService noticeEditService = NoticeEditService.getInstance();
			int rowCount = noticeEditService.update(dto);
			if (rowCount == 1 ) {
				String location = "newsList.do?type="+type;
				response.sendRedirect(location);
			}

			//System.out.println("Edithandler"+rowCount);
		}else {
			response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
		}
		return null;

	}

}
