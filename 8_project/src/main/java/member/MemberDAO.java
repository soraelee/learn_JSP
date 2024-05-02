package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

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
	private int getTotalCount() {
		String sql = "select count(*) from mem_jsp";
		int tCnt = 0;
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				tCnt = rs.getInt("COUNT(*)");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return tCnt;
	}
	private HashMap<String, Object> getOperation(int page, int tCnt) {
		HashMap<String, Object> rsMap = new HashMap<>();
		if(page == 0) page=1;

		int pageNum = 2 ;
		int endPage = tCnt / pageNum + (tCnt % pageNum == 0 ? 0 : 1);
		//나머지가 있으면 현재 페이지 + 1
		int startNum = (page-1) * pageNum + 1;
		int endNum = pageNum * page;
		
		//rsMap에 각각 값을 넣어서 key value 형식으로 보냄
		rsMap.put("endPage", endPage);
		rsMap.put("startNum", startNum);
		rsMap.put("endNum", endNum);
		
		return rsMap;
	}
	
	public HashMap<String, Object> getList(int page) {
		System.out.println("page : " + page);
		int tCnt = getTotalCount();
		System.out.println("tCnt : " + tCnt);
		
		HashMap<String, Object> rsMap = getOperation(page, tCnt);
		
//		String sql = "select * from mem_jsp";
		String sql = "select A.* from(select rownum rn, id, pwd, name, addr, tel from mem_jsp)"
						+ " A where rn between ? and ?";
		MemberDTO dto = null;
		
		ArrayList<MemberDTO> list = new ArrayList<>();
		
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setInt(1, (int)rsMap.get("startNum"));
			ps.setInt(2, (int)rsMap.get("endNum"));
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
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		rsMap.put("list", list);
		return rsMap;
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




















