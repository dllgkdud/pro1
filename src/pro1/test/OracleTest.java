package pro1.test;

import java.sql.*;
import java.sql.DriverManager;
import java.util.logging.Logger;

import org.junit.Test;

public class OracleTest {
	private final static Logger log = Logger.getGlobal();
	private final static String DRIVER = "oracle.jdbc.OracleDriver";
	private final static String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private final static String DBID = "system";
	private final static String DBPW = "1234";
	
	@Test
	public void test() throws ClassNotFoundException {
		Class.forName(DRIVER);
		String sql = "select sysdate now from dual";
		try (
				Connection con = DriverManager.getConnection(URL, DBID, DBPW);
				PreparedStatement pstmt = con.prepareCall(sql);
				ResultSet rs = pstmt.executeQuery();
		) {
			log.info("con: "+con);
			log.info("pstmt: "+pstmt);
			rs.next();
			log.info(""+rs.getDate("now"));
			log.info("test");
			//fail("Not yet implemented");
		} catch(Exception e) {
			e.printStackTrace();
		} 	
	}
}