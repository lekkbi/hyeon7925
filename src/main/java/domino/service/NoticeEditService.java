package domino.service;

import java.sql.Connection;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domino.domain.NoticeDTO;
import domino.persistence.NoticeDAO;

public class NoticeEditService {
	private NoticeEditService() {}
	private static NoticeEditService instance = new NoticeEditService();
	public static NoticeEditService getInstance() {
		return instance;
	}
	
	public int update(NoticeDTO dto){
		Connection con = null;
		int rowCount =0;
		try {
			con = ConnectionProvider.getConnection();
			NoticeDAO dao = NoticeDAO.getInstance();
			rowCount = dao.update(con, dto);
		} catch (Exception e) {
			System.out.println(">NoticeEditService 오류!");
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtil.close(con);
		}
		//System.out.println("Editservice"+rowCount);
		return rowCount;
		
	}//update()
	
}
