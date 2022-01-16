package domino.persistence;

import java.sql.Connection;
import java.sql.SQLException;

import domino.domain.MemberDTO;


public interface IMember {
	
	// 1. 로그인 정보
	MemberDTO loginAction(Connection con, String member_id) throws SQLException;
}
