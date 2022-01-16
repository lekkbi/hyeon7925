package domino.persistence;

import java.sql.Connection;
import java.sql.SQLException;

import domino.domain.ReportDTO;

public interface IReport {

	//2.report 글쓰기
	int insert(Connection con, ReportDTO dto ) throws SQLException;
	
}
