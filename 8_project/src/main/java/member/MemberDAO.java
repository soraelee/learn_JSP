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
	PreparedStatement ps;
	ResultSet rs;
	
	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("--드라이부 로드 성공");
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public MemberDTO getOneMember (String id) {
		MemberDTO dto = null;
		String sql = "select * from mem_jsp where id=?";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1,  id);
			rs = ps.executeQuery();
			
			if(rs.next()) {
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
	public ArrayList<MemberDTO> getList() {
		String sql = "select * from mem_jsp";
		MemberDTO dto = null;
		
		ArrayList<MemberDTO> list = new ArrayList<>();
		
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null)rs.close();
				if(ps != null)ps.close();
				if(con != null)rs.close();
				
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return list;
	}
	public int register(MemberDTO dto) {
		int result = 0 ; 
		String  sql = "insert into mem_jsp(id, pwd, name, addr, tel) values(?, ?, ?, ?, ?)";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getAddr());
			ps.setString(5, dto.getTel());
			result = ps.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public int modify(MemberDTO dto) {
		int result = 0;
		String sql = "update mem_jsp set pwd=?, name=?, addr=?, tel=? where id=?";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getPwd());
			ps.setString(2, dto.getName());
			ps.setString(3, dto.getAddr());
			ps.setString(4, dto.getTel());
			ps.setString(5, dto.getId());
			result = ps.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public int delete(String id) {
		String sql = "delete mem_jsp where id = ?";
		
		int result = 0;
		
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1,  id);
			result = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}




















