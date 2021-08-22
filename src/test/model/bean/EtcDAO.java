package test.model.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

public class EtcDAO {     //0419
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;
    
	public void insert(etcDTO dto){
		try {
			 conn= ConnectionDAO.getConnection();
			 String sql="insert into etc values(?,?,?,?,?)";   
		    pstmt = conn.prepareStatement(sql);
		   //   String ph = dto.getPh1()+"-"+dto.getPh2()+"-"+dto.getPh3()+"-"+dto.getPh4();
		    //   이거 대신 dto 에 조건 쓰기 
		    
		    pstmt.setString(1, dto.getPhone());
		    pstmt.setString(2, dto.getGender());
		    pstmt.setString(3, dto.getHobby());
		    pstmt.setString(4, dto.getDay());
		    pstmt.setString(5, dto.getContent());
		    
		    pstmt.executeUpdate();
		    
		    /*String [] ch = dto.getCh();
		    String hobby ="";
		    for(String c : ch) {
		    	hobby +=c+"/";
		    }  -> dto에 옮겨주기    ~~~  */
		    
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectionDAO.close(rs, pstmt, conn);
		}
		
	}
	
	
	public etcDTO getEtc() {
		etcDTO dto = null;
		try {
			 conn= ConnectionDAO.getConnection();
			 String sql="select * from etc";   
		    pstmt = conn.prepareStatement(sql);
		    rs =pstmt.executeQuery();
		    if(rs.next()) {
		    	dto = new etcDTO();
		    	dto.setContent(rs.getString("content"));
		    	
		    	Timestamp d = rs.getTimestamp("day"); //년 월 일 시 분 초 
		    	String day = (d.getYear()+1900)+"-"+(d.getMonth()+1)+"-"+d.getDate();
		    	dto.setDay(day);
		    	
		    	
		        dto.setGender(rs.getString("gender"));
		       dto.setPhone(rs.getString("phone"));
		       dto.setCh(rs.getString("hobby").split("/"));
		    }
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectionDAO.close(rs, pstmt, conn);
		}
		return dto;
		
	}
}
