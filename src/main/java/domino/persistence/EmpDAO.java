package domino.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import domino.domain.EmpDTO;

public class EmpDAO {

	private EmpDAO() {}
	private static EmpDAO instance = new EmpDAO();
	public static EmpDAO getInstance() {
		return instance;
	}

	public EmpDTO loginAction(Connection con, String emp_id) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		EmpDTO dto = null;

		String sql = "select * from emp where emp_id = ?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, emp_id);
			rs = pstmt.executeQuery();

			if ( rs.next() ) {
				dto = new EmpDTO();
				
				dto.setEmp_id( rs.getString("emp_id") );
				dto.setEmp_pw( rs.getString("emp_pw") );
				dto.setEmp_name( rs.getString("emp_name") );
				
			}

		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		
		return dto;
	}
}
