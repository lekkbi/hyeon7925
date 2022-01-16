package domino.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domino.domain.NoticeDTO;
import domino.persistence.NoticeDAO;

public class NoticeListService {
	private NoticeListService() {}
	private static NoticeListService instance = new NoticeListService();
	public static NoticeListService getInstance() {
		return instance;
	}
	
	public List<NoticeDTO> select(String type){
	      Connection con = null;
	      try {
	         con = ConnectionProvider.getConnection();
	         NoticeDAO dao = NoticeDAO.getInstance();
	         List<NoticeDTO> list = null;
	         list = dao.selectList(con, type);
	         return list;
	      } catch (NamingException | SQLException e) {
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtil.close(con);
	      }
	}
	
	
}
