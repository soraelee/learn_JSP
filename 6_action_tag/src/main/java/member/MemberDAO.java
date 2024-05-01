package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
	String url = "jdbc:oracle:thin:@localhost:1521/xe";
	String user = "java", pwd="1234";
	Connection con;
	PreparedStatement ps ;
	ResultSet rs;
	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("---드라이브 로드 성공---");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public ArrayList<MemberDTO> getList() {
		String sql = "select * from mem_jsp";
		ArrayList<MemberDTO> list = new ArrayList<>();
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void register( MemberDTO dto ) {
		String sql = "insert into mem_jsp(id, pwd, name, addr, tel) values(?, ?, ?, ?, ?)";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1,  dto.getId());
			ps.setString(2,  dto.getPwd());
			ps.setString(3,  dto.getName());
			ps.setString(4,  dto.getAddr());
			ps.setString(5,  dto.getTel());
			ps.execute();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
		
		
		
	
}
