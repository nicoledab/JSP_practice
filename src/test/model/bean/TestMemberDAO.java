package test.model.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class TestMemberDAO {  //0416
	 
	private Connection conn= null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null; 
	
		public boolean idCheck(String id) {
		boolean result = false; //id 사용 가능 
		try {
			conn = ConnectionDAO.getConnection();
			String sql = "select *from testmember where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			   if(rs.next()) {
			    	result = true;   //id 사용 불가능
			    }
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				ConnectionDAO.close(rs, pstmt, conn);
			}
			return result;
		
	}
	
	
	
	
	
	
	
	
	public boolean loginCheck(TestMemberDTO dto) {
		boolean result = false;
		try {
			 conn= ConnectionDAO.getConnection();
			 String sql="select * from testmember where id=? and pw=?";   
		    pstmt = conn.prepareStatement(sql);
		    pstmt.setString(1, dto.getId());
		    pstmt.setString(2, dto.getPw());
		    rs= pstmt.executeQuery();  //쿼리메소드로 호출
		    if(rs.next()) {
		    	result = true;   //결과 나왔다 
		    }
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectionDAO.close(rs, pstmt, conn);
		}
		return result;
		
	}
	
	public boolean deleteMember(String id, String pw) {
		boolean result = false;
		try {
			conn = ConnectionDAO.getConnection();
			 String sql="select * from testmember where id=? and pw=?";   
			    pstmt = conn.prepareStatement(sql);
			    pstmt.setString(1, id);
			    pstmt.setString(2, pw);
			    rs= pstmt.executeQuery(); 
			    if(rs.next()) {   /// true면 삭제 하기!!!!
			    	sql = "delete from testmember where id=?";
			    	pstmt = conn.prepareStatement(sql);
			    	pstmt.setString(1, id);
			    	pstmt.executeUpdate();
			    	result = true;
			    }
			  
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectionDAO.close(rs, pstmt, conn);
		}
		return result;
	}
	
	public TestMemberDTO getMember(String id) {
		TestMemberDTO dto =null;
		try {
			conn = ConnectionDAO.getConnection();
			String sql = "select *from testmember where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto = new TestMemberDTO();
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getInt("age")+"");
				dto.setImg(rs.getString("img"));
				dto.setReg(rs.getTimestamp("reg"));
			}
	    }catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectionDAO.close(rs, pstmt, conn);
		}
		return dto;
		
	}
	
	public void updateMember(TestMemberDTO dto) {
		try {
			conn = ConnectionDAO.getConnection();
			String sql = "update testmember set pw=?,name=?,age=?,img=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPw());
			pstmt.setString(2, dto.getName());
			int age = Integer.parseInt(dto.getAge());
			pstmt.setInt(3, age);
			pstmt.setString(4, dto.getImg());
			pstmt.setString(5, dto.getId());
		    
			pstmt.executeUpdate();
	    }catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectionDAO.close(rs, pstmt, conn);
		}
		
		
	}
	
	

	
	
}






