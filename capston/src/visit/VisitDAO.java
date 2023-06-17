package visit;



import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class VisitDAO extends JDBConnect{
	public VisitDAO(ServletContext application) {
		super(application);
    }
	
	public int insertVisitDate(String userId, int qnum, Timestamp date ) {
		int result = 0;
	
		try {
			String query = "INSERT INTO visit (Id, q_num, visitTime) VALUES (?,?,?) ";
		  	pstmt = con.prepareStatement(query);
		  	pstmt.setString(1,userId);
		  	pstmt.setInt(2,qnum);
		  	pstmt.setTimestamp(3, date);
		  	result=pstmt.executeUpdate();
		  
		  	
		  	
		  	
		}
		catch(Exception e) {
			System.out.println("Exception[insertVisitDate]:" + e.getMessage());
		}
		
		
		return result;
		
		
	}
	
	
	public List<VisitDTO> getVlist(){
		List<VisitDTO> list= new ArrayList<VisitDTO>();
		try {
			String query = "SELECT visit.*,question.* from visit INNER JOIN question ON visit.q_num = question.q_num order by visitNum desc limit 0,5";
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()){
				VisitDTO dto = new VisitDTO();
				dto.setId(rs.getString("Id"));
				dto.setQ_num(rs.getInt("q_num"));
				dto.setVisitTime(rs.getTimestamp("visitTime"));
				dto.setQ_title(rs.getString("q_title"));
				dto.setQ_language(rs.getString("q_language"));
				dto.setQ_level(rs.getString("q_level"));
				list.add(dto);
			}
		} catch (Exception e) {
		} 
			return list;
	}
	
	
	
	
	
	
	
	
	
	
}

