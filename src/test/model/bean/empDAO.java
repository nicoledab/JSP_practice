package test.model.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class empDAO {  //0415 -2 
	private Connection conn= null; 
	private PreparedStatement pstmt = null;
	private ResultSet rs= null;
	
	public void insert(empDTO emp) {
		try {
			conn = ConnectionDAO.getConnection(); //1,2���� ������ �ϸ鼭 ����� Ŀ�ؼ� ��ü�� �������ش�. 
			String sql="insert into emp Values(?,?,?,?,sysdate,?,?,?)";
			pstmt= conn.prepareStatement(sql); //3�ܰ�
			    pstmt.setInt(1, Integer.parseInt(emp.getEmpno()));
			    pstmt.setString(2, emp.getEname());
			    pstmt.setString(3, emp.getJob());
			    pstmt.setInt(4, Integer.parseInt(emp.getMgr()));
			    // pstmt.setString(5, emp.getHiredate());
			    pstmt.setInt(5, Integer.parseInt(emp.getSal()));
			    pstmt.setInt(6, Integer.parseInt(emp.getComm()));
			    pstmt.setInt(7, Integer.parseInt(emp.getDeptno()));
			    pstmt.executeUpdate(); //4�ܰ� 
			    
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
				ConnectionDAO.close(rs, pstmt, conn);
		}
	}
	
	public ArrayList<empDTO> select() {
		ArrayList<empDTO> list = null;
		try {
			conn = ConnectionDAO.getConnection();
		    String sql="select*from emp";
		    pstmt = conn.prepareStatement(sql);
		    rs = pstmt.executeQuery();
		    
		    list = new ArrayList<empDTO>();
		    while(rs.next()) { //rs.next() -ù��° ���ڵ� true ���θ� Ȯ�����ش�. 
		    	empDTO emp = new empDTO();
		    	emp.setEmpno(rs.getInt("empno") +"");  //get���� ������ 
		    	emp.setEname(rs.getString("ename"));
		    	emp.setJob(rs.getString("job"));
		    	emp.setHiredate(rs.getTimestamp("hiredate").toString()); //��¥�޾Ƽ� tostring
		        emp.setMgr(rs.getInt("mgr")+"");
		        emp.setComm(rs.getInt("comm")+"");
		        emp.setSal(rs.getInt("sal")+"");
		        emp.setDeptno(rs.getInt("deptno")+"");
		        list.add(emp);
		    }// db���� �������� dto�� 
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectionDAO.close(rs, pstmt, conn);
		}
		
		return list;
	}
	
}



