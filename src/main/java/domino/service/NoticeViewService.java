package domino.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domino.domain.NoticeDTO;
import domino.persistence.NoticeDAO;

public class NoticeViewService {
	private NoticeViewService() {}
	private static NoticeViewService instance = new NoticeViewService();
	public static NoticeViewService getInstance() {
		return instance;
	}
	
	public List<NoticeDTO> selectThree(String type, int seq){
		Connection con = null;
	      try {
	         con = ConnectionProvider.getConnection();
	         NoticeDAO dao = NoticeDAO.getInstance();
	         List<NoticeDTO> list = null;
	         list = dao.selectThree(con, type, seq);
	         return list;
	      } catch (NamingException | SQLException e) {
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtil.close(con);
	      }
	}
}
