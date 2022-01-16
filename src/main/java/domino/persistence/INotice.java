package domino.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domino.domain.NoticeDTO;

public interface INotice {
	// 1. 공지 목록
	List<NoticeDTO> selectList(Connection con, String type) throws SQLException;
	
	//2. 공지 상세보기
	List<NoticeDTO> selectThree(Connection con, String type, int seq) throws SQLException;
	
	//3. 공지 작성
	int insert(Connection con, NoticeDTO dto) throws SQLException;
	
	//4. 공지 삭제
	int delete(Connection con, int notice_code) throws SQLException;
	
	//5.1 공지 수정
	int update(Connection con, NoticeDTO dto) throws SQLException;
	
	//5.2 공지 수정 글 가져오기
	NoticeDTO selectOne( Connection con, int num ) throws SQLException;
}
