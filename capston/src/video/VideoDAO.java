package video;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import common.JDBConnect;
import studyList.StudyListDTO;

public class VideoDAO extends JDBConnect{
	public VideoDAO(ServletContext application) {
        super(application);
    }
	
	public List<VideoDTO> Language(String language) {
		List<VideoDTO> bbs = new ArrayList<VideoDTO>();
		
		try {
			String query="select * from videos where LANGUAGE=? order by video_num DESC";
			pstmt = con.prepareStatement(query);
        	pstmt.setString(1, language);
        	rs = pstmt.executeQuery();
        	while(rs.next()) {
        		VideoDTO dto = new VideoDTO();
        		dto.setNum(rs.getInt("num"));
        		dto.setVideo_num(rs.getInt("video_num"));
        		dto.setPlayNum(rs.getInt("playNum"));
        		dto.setLanguage(rs.getString("language"));
        		dto.setvTitle(rs.getString("vTitle"));
        		dto.setUrl(rs.getString("url"));
        		bbs.add(dto);
        	}
		}catch(Exception e) {
			System.out.println("Exception[videolist] : " + e.getMessage());
		}
		return bbs;
	}
}
