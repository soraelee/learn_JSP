package file;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FileOperation {
	
	public void upload(HttpServletRequest req) throws Exception {
		String path = "c:/jsp_file";
		int size = 1024 * 1024 * 200; //파일을 얼마나 저장? : 10megabit까지 저장
		
		MultipartRequest mul = new MultipartRequest(req, path, size, "UTF-8"
									, new DefaultFileRenamePolicy());
		//request와 경로, 파일 저장 사이즈, 파일에 넘버링 하는 부분 추가해서 전달
		
		System.out.println("req :" + req.getParameter("id") );
		System.out.println("mul :" + mul.getParameter("id") );
		
		Enumeration<String> e = mul.getFileNames();//배열 형식으로 mul 을 받아서 값을 꺼내옴
		System.out.println("다음 값 확인 : " + e.hasMoreElements());
		String fileName = e.nextElement();//파일 명 꺼내오기
		System.out.println("파일 명 (input name) : " + fileName);
		System.out.println("다음 값 확인 : " + e.hasMoreElements());//하나의 파일만 저장 - false 값 출력
		
		String changeName = mul.getFilesystemName(fileName);
		String originName = mul.getOriginalFileName(fileName);
		System.out.println("실제 파일 명 : " + originName);
		System.out.println("변경된 파일 명 : " + changeName);
	}
	public String[] getFileList() {
		File file = new File("c:/jsp_file");
		return file.list();
	}
	public void fileDown(String fileName, HttpServletResponse res) throws Exception {

		//사용자에게 엄떠한 방시긍로 응답할 지 응답 방식 지정
		res.addHeader("Content-Disposition", "attachment;filename="+fileName);

		File file = new File("c:/jsp_file/" + fileName);
		System.out.println("file : "+file);
		//파일에 대한 내용이 있음
		FileInputStream in = new FileInputStream(file);
		//outptStream을 통해 사용자에게 전송
		OutputStream out = res.getOutputStream();
		byte b[] = new byte[1024]; 
		//사용자에게 1024 바이트씩 전달
		int data = 0; //파일에 대한 내용
		while(data != -1) {//data가 -1 값이 될 때까지 실행 
			data = in.read(b); //바이트를 통해 확인
			out.write(b);
		}
		out.close(); in.close();
				
	}
}
