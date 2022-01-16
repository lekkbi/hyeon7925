package domino.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domino.domain.NoticeDTO;
import domino.persistence.NoticeDAO;

public class NoticeWriteService {
	private NoticeWriteService() {}
	private static NoticeWriteService instance = new NoticeWriteService();
	public static NoticeWriteService getInstance() {
		return instance;
	}
	
	public int write(NoticeDTO dto) {
		Connection con = null;
		int rowCount = 0;
		try {
			con = ConnectionProvider.getConnection();
			NoticeDAO dao = NoticeDAO.getInstance();
			
			rowCount = dao.insert(con, dto);
			
		} catch (NamingException | SQLException e) {
			//JdbcUtil.rollback(con);
			//throw new RuntimeException();
			e.printStackTrace();
		}finally {
			JdbcUtil.close(con);
		}//finally
		return rowCount;
	}
}
