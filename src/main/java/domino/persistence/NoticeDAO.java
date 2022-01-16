package domino.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import domino.domain.NoticeDTO;

public class NoticeDAO implements INotice{
	private NoticeDAO() {}
	private static NoticeDAO instance = new NoticeDAO();
	public static NoticeDAO getInstance() {
		return instance;
	}

	@Override
	public List<NoticeDTO> selectList(Connection con, String type) throws SQLException {
		String sql =" select rank() OVER (ORDER BY notice_code) seq, notice.* "
				+ "from notice "
				+ "where type=? "
				+ "order by seq desc";
		ArrayList<NoticeDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, type);
			rs = pstmt.executeQuery();
			if ( rs.next() ) {
				list = new ArrayList<NoticeDTO>();
				NoticeDTO dto = null;
				do {
					dto =  new NoticeDTO();
					dto.setSeq(rs.getInt("seq"));
					dto.setNotice_code(rs.getInt("notice_code"));
					dto.setTitle(rs.getString("title"));
					dto.setNotice_date(rs.getDate("notice_date"));
					dto.setHits(rs.getInt("hits"));
					dto.setContent(rs.getString("content"));
					dto.setType(rs.getString("type"));
					dto.setEmp_id(rs.getString("emp_id"));
					list.add(dto);
				} while ( rs.next() );
			}//if
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);         
		} // finally

		return list;
	}

	@Override
	public List<NoticeDTO> selectThree(Connection con, String type, int seq) throws SQLException {
		String sql =" select t.* "
				+ "from(select rank() OVER (ORDER BY notice_code) seq, notice.* "
				+ "     from notice "
				+ "     where type = ?) t "
				+ "where seq between ?-1 and ?+1 "
				+ "order by seq desc";
		ArrayList<NoticeDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, type);
			pstmt.setInt(2, seq);
			pstmt.setInt(3, seq);
			rs = pstmt.executeQuery();
			if ( rs.next() ) {
				list = new ArrayList<NoticeDTO>();
				NoticeDTO dto = null;
				do {
					dto =  new NoticeDTO();
					dto.setSeq(rs.getInt("seq"));
					dto.setNotice_code(rs.getInt("notice_code"));
					dto.setTitle(rs.getString("title"));
					dto.setNotice_date(rs.getDate("notice_date"));
					dto.setHits(rs.getInt("hits"));
					dto.setContent(rs.getString("content"));
					dto.setType(rs.getString("type"));
					dto.setEmp_id(rs.getString("emp_id"));
					list.add(dto);
				} while ( rs.next() );
			}//if
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);         
		} // finally

		return list;
	}

	@Override
	public int insert(Connection con, NoticeDTO dto) throws SQLException {
		PreparedStatement pstmt = null;
		int rowCount = 0;

		String sql = "insert into notice ( notice_code, title, notice_date, hits, content, type, emp_id)"
				//+ " values ( notice_seq.nextval, ?, to_char(sysdate, 'YYYY-MM-DD'), 0, ?, ?, admin01 )";
				+ " values ( notice_seq.nextval, ?, to_char(sysdate, 'YYYY-MM-DD'), 0, ?, ?, ? )";

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setString(3, dto.getType());
			pstmt.setString(4, dto.getEmp_id());

			rowCount = pstmt.executeUpdate();            
		}finally {
			JdbcUtil.close(pstmt);
		}
		return rowCount;
	}

	@Override
	public int delete(Connection con, int notice_code) throws SQLException {
		PreparedStatement pstmt = null;

		String sql = "DELETE FROM notice "
				+ " WHERE notice_code = ?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, notice_code);

			return pstmt.executeUpdate();	
		} catch (Exception e) {
			System.out.println(notice_code+"> 번 공지 삭제되었습니다 -" + e.toString());
		} finally {
			JdbcUtil.close(pstmt);
		}
		return 0;
	}

	@Override
	public int update(Connection con, NoticeDTO dto) throws SQLException {
		PreparedStatement pstmt = null;
		int rowCount = 0;

		String sql = "update notice "
				+ "set title=?, content=?, emp_id=? "
				+ "where notice_code=?";
		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, dto.getTitle()) ;
			pstmt.setString(2, dto.getContent());
			pstmt.setString(3, dto.getEmp_id());
			pstmt.setInt(4, dto.getNotice_code());

			rowCount = pstmt.executeUpdate();
		}finally {
			JdbcUtil.close(pstmt);
		}
	return rowCount;
}

	@Override
	public NoticeDTO selectOne(Connection con, int notice_code) throws SQLException {
		String sql = "select * from notice "
				+" where notice_code = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;      
		NoticeDTO dto = null;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, notice_code);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				dto =  new NoticeDTO();
				
				dto.setNotice_code(rs.getInt("notice_code"));
				dto.setTitle(rs.getString("title"));
				dto.setNotice_date(rs.getDate("notice_date"));
				dto.setHits(rs.getInt("hits"));
				dto.setContent(rs.getString("content"));
				dto.setType(rs.getString("type"));
				dto.setEmp_id(rs.getString("emp_id"));
			}
		}  finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}

		return dto;
	}




}
