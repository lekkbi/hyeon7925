package domino.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domino.domain.EmpDTO;
import domino.domain.MemberDTO;
import domino.persistence.EmpDAO;
import domino.persistence.MemberDAO;

public class LoginService {

	private LoginService() {}
	private static LoginService instance = new LoginService();
	public static LoginService getInstance() {
		return instance;
	}

	public Connection con = null;

	public MemberDTO loginM(String member_id, String pw) {

		try {
			con = ConnectionProvider.getConnection();
			MemberDAO dao = MemberDAO.getInstance();
			MemberDTO dto = dao.loginAction(con, member_id);

			if( dto != null && !dto.matchPassword(pw) ) {
				return null;
			}			
			return dto;
			
		} catch (NamingException | SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}

	}

	public EmpDTO loginE(String emp_id, String pw) {
		
		try {
			con = ConnectionProvider.getConnection();
			EmpDAO dao = EmpDAO.getInstance();
			EmpDTO dto = dao.loginAction(con, emp_id);

			if( dto != null && !dto.matchPassword(pw) ) {
				return null;
			}				
			return dto;
			
		} catch (NamingException | SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}

	}

}
