package domino.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/pages/faqList.html")
public class faqList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public faqList() {
			super();
	}
	
	//?faqList.html?searchCondition=1&searchWord=aaa   [검색버튼] 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		System.out.println(">List.doGet() 호출됨... ");
		
		//1.글목록 로직처리
		// fqaList = BoardDAOImpe.select(...
		// request.setAttribute("faqList",faqList);
		
		//2.포워딩(faqList.jsp)
		Connection con = DBcon.getConnection();
		FaqDAO.dao = new FaqDAO(con);
		ArrayList<FaqDTO> FaqList = null;
		
		int searchCondition = 1; //1,2,3
		String searchWord = request.getParameter("searchWord") == null ? "" : request.getParameter("searchWord");
		
		try {
			//faqlist = dao.select()
			try { searchCondition = Integer.parseInt(request.getParameter("searchCondition")); } catch(Exception e)
			
		}
		if{ searchWord.equals("")){
			totalRecords = dao.getTotalRecords();
		}else {
			totalRecords = dao.getTotalRecords(SearchCondition,searchWord);
		}
			

