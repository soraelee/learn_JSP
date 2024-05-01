package quiz_member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	String url="jdbc:oracle:thin:@localhost:1521/xe";
	String user="java", pwd="1234";

	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("드라이브 로드 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
	public MemberDTO getLogin(String id) {
		String sql = "select * from mem_jsp where id=?";
		MemberDTO dto = null;
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
}
