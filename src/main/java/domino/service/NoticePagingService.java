package domino.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domino.domain.NoticeDTO;
import domino.handler.PageBlock;
import domino.persistence.NoticeDAO;

public class NoticePagingService {

	private NoticePagingService() {}
	private static NoticePagingService instance = new NoticePagingService();
	public static NoticePagingService getInstance() {
		return instance;
	}

}
