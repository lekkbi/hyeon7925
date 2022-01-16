package domino.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import domino.domain.MemberDTO;


public class MemberDAO implements IMember {
	
	private MemberDAO() {}
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	
	@Override
	public MemberDTO loginAction(Connection con, String member_id) throws SQLException {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberDTO dto = null;
		 
		String sql = "select *"
					+ " from member "
					+ "where member_id = ?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member_id);
			rs = pstmt.executeQuery();
			
			if ( rs.next() ) {
				dto = new MemberDTO();
						
				dto.setMember_id( rs.getString("member_id") );
				dto.setName( rs.getString("name") );
				dto.setPw( rs.getString("pw") );
				dto.setBirth_type( rs.getInt("birth_type"));
				dto.setBirth( rs.getDate("birth") );
				dto.setTel( rs.getString("tel") );
				dto.setEmail( rs.getString("email") );
				dto.setGender( rs.getString("gender") );
				dto.setMania_rank( rs.getString("mania_rank") );
				dto.setSns_pan( rs.getInt("sns_pan"));
				dto.setJoin_date( rs.getDate("join_date") );
				dto.setSimple_login( rs.getString("simple_login") );				
				
			}
			
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		
		return dto;
	}

}
