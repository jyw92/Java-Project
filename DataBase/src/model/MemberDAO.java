package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;
import java.sql.DriverManager;

//오라클 DB에 연결하고 SELECT, INSERT, UPDATE, DELETE작업을 실행해주는 클래스
public class MemberDAO {
	
	//DB에 접근할수있도록 해주는 메소드
	
	//DB접속
	String id = "STC_MDR";
	String pw = "STC_MDR";
	String url = "jdbc:oracle:thin:@121.124.124.40:1521:ORCL";
	
	Connection con; //DB에 접근할수있도록 설정
	PreparedStatement pstmt; //DB에서 쿼리를 실행시켜주는 객체
	ResultSet rs; //DB의 테이블의 결과를 리턴받아 자바에 저장해주는 객체
	
	public void getCon() {
		
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, id, pw);
			
			
		}catch(Exception e) {
			
		}
		
	}
	
	public void insertMember(MemberBean mbean) {
		try{
			getCon();
			//1. 접속후 쿼리준비
			String sql = "INSERT INTO JYW_MEMBER VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
			//2. 쿼리사용하도록 설정
			PreparedStatement pstmt = con.prepareStatement(sql); //PreparedStatement => JSP에서 쿼리를 사용하도록 설정
			//3. ?에 데이터 맵핑
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPw());
			pstmt.setString(3, mbean.getEmail());
			pstmt.setString(4, mbean.getPhone());
			pstmt.setString(5, mbean.getHobby());
			pstmt.setString(6, mbean.getJob());
			pstmt.setString(7, mbean.getAge());
			pstmt.setString(8, mbean.getInfo());
			//4. oracle에서 쿼리를 실행하시오.
			pstmt.executeUpdate();
			//5. 자원반납
			con.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public Vector<MemberBean> allSelectMember(){
		
		Vector<MemberBean> v = new Vector<>();
		
		try {
			
			getCon();
			String sql = "SELECT * FROM JYW_MEMBER";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MemberBean bean = new MemberBean();
				bean.setId(rs.getString(1));
				bean.setPw(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setPhone(rs.getString(4));
				bean.setHobby(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setAge(rs.getString(7));
				bean.setInfo(rs.getString(8));
				v.add(bean);
			}
			
			con.close();
			
		}catch(Exception e) {
			
		}
		
		return v;
	}
	
	//한사람의 대한 정보를 리턴하는 메소드 작성
	public MemberBean oneSelectMember(String id) {
		
		MemberBean bean = new MemberBean();
		
		try {
			
			getCon();
			String sql = "SELECT * FROM JYW_MEMBER WHERE ID=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);			
			rs = pstmt.executeQuery();
			
			if(rs.next()) { //레코드가 있다면
				bean.setId(rs.getString(1));
				bean.setPw(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setPhone(rs.getString(4));
				bean.setHobby(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setAge(rs.getString(7));
				bean.setInfo(rs.getString(8));
			}
			//자원반납
			con.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		//return
		
		return bean;
	}
	
	
	
}
