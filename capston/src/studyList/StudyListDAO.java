package studyList;

import java.util.*;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class StudyListDAO extends JDBConnect{
	public StudyListDAO(ServletContext application) {
        super(application);
    }
	
	public List<StudyListDTO> Language(String language) {
		List<StudyListDTO> bbs = new ArrayList<StudyListDTO>();
		
		try {
			String query="select * from studylist where LANGUAGE=? order by study_num DESC";
			pstmt = con.prepareStatement(query);
        	pstmt.setString(1, language);
        	rs = pstmt.executeQuery();
        	while(rs.next()) {
        		StudyListDTO dto = new StudyListDTO();
        		dto.setNum(rs.getInt("num"));
        		dto.setStudy_num(rs.getInt("study_num"));
        		dto.setVisitCount(rs.getInt("visitCount"));
        		dto.setTitle(rs.getString("title"));
        		dto.setLanguage(rs.getString("language"));
        		dto.setContents(rs.getString("contents"));
        		dto.setCreateTime(rs.getDate("createTime"));
        		bbs.add(dto);
        		
        	}
		}catch(Exception e) {
			System.out.println("Exception[studyList] : " + e.getMessage());
		}
		
		return bbs;
	}
}
