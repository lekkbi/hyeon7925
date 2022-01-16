package domino.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domino.domain.EmpDTO;
import domino.domain.MemberDTO;
import domino.service.LoginService;

public class LoginHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		if ( request.getMethod().equals("GET") ) {		

			return "global/login";

		} else if ( request.getMethod().equals("POST") ) {
			
			String id = request.getParameter("id");
			String passwd = request.getParameter("passwd");
			
			System.out.println( "아이디" + id );
			System.out.println( "비번" + passwd );
			
			LoginService loginService = LoginService.getInstance();
			
			MemberDTO member = loginService.loginM(id, passwd);
			EmpDTO emp = loginService.loginE(id, passwd);
			
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			session.setAttribute("emp", emp);
			
			if ( member != null || emp != null ) response.getWriter().write("success");
			else 								 response.getWriter().write("fail");
			
		}
		
		return null;
	}

}
