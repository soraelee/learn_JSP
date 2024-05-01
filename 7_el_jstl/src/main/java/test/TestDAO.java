package test;

import java.util.ArrayList;

public class TestDAO {
	ArrayList<TestDTO> list;
	public TestDAO() {
		list = new ArrayList<>();
		for(int i = 0 ; i < 5 ; i++) {
			TestDTO dto = new TestDTO();
			dto.setName("홍길동" + i);
			dto.setAddr("산골짜기" + i);
			list.add(dto);
		}
	}
	public ArrayList<TestDTO> getList() {
		return list;
	}
	public TestDTO getData(int num) {
		return list.get(num);
	}
}
