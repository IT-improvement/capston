package board;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class BoardDAO extends JDBConnect {
	public BoardDAO(ServletContext application) {
        super(application);
    }
	 public BoardDTO firstChatrRoom() { 
	        BoardDTO dto = new BoardDTO();
	        try {
	        	//String query = "select * from board where num=?";
	        	String query = "SELECT * FROM chatroom ORDER BY statusMem DESC, createTime ASC, roomTitle asc LIMIT 0, 1";
	        	pstmt = con.prepareStatement(query);
	        	rs = pstmt.executeQuery();
	        	if(rs.next()) {
	    			dto.setRoomTitle(rs.getString("roomtitle"));
	    			dto.setLanguage(rs.getString("language"));
	    			dto.setCreateTime(rs.getDate("createTime"));
	    			dto.setId(rs.getString("id"));
	    			dto.setAllowMem(rs.getInt("allowMem"));
	    			dto.setStatusMem(rs.getInt("statusMem"));
	    			dto.setRoomPwd(rs.getString("roomPwd"));
	        	}
	        }catch(Exception e) {
	        	System.out.println("Exception[firstChatroom]:" + e.getMessage());
	        }        
	        return dto; 
	    }
	 public BoardDTO secondChatrRoom() { 
	        BoardDTO dto = new BoardDTO();
	        try {
	        	//String query = "select * from board where num=?";
	        	String query = "SELECT * FROM chatroom ORDER BY statusMem DESC, createTime ASC, roomTitle asc LIMIT 1, 1";
	        	pstmt = con.prepareStatement(query);
	        	rs = pstmt.executeQuery();
	        	if(rs.next()) {
	    			dto.setRoomTitle(rs.getString("roomtitle"));
	    			dto.setLanguage(rs.getString("language"));
	    			dto.setCreateTime(rs.getDate("createTime"));
	    			dto.setId(rs.getString("id"));
	    			dto.setAllowMem(rs.getInt("allowMem"));
	    			dto.setStatusMem(rs.getInt("statusMem"));
	    			dto.setRoomPwd(rs.getString("roomPwd"));
	        	}
	        }catch(Exception e) {
	        	System.out.println("Exception[firstChatroom]:" + e.getMessage());
	        }        
	        return dto; 
	    }
	 public BoardDTO thirdChatrRoom() { 
	        BoardDTO dto = new BoardDTO();
	        try {
	        	//String query = "select * from board where num=?";
	        	String query = "SELECT * FROM chatroom ORDER BY statusMem DESC, createTime ASC, roomTitle asc LIMIT 2, 1";
	        	pstmt = con.prepareStatement(query);
	        	rs = pstmt.executeQuery();
	        	if(rs.next()) {
	    			dto.setRoomTitle(rs.getString("roomtitle"));
	    			dto.setLanguage(rs.getString("language"));
	    			dto.setCreateTime(rs.getDate("createTime"));
	    			dto.setId(rs.getString("id"));
	    			dto.setAllowMem(rs.getInt("allowMem"));
	    			dto.setStatusMem(rs.getInt("statusMem"));
	    			dto.setRoomPwd(rs.getString("roomPwd"));
	        	}
	        }catch(Exception e) {
	        	System.out.println("Exception[firstChatroom]:" + e.getMessage());
	        }        
	        return dto; 
	    }
	 public BoardDTO fourthChatrRoom() { 
	        BoardDTO dto = new BoardDTO();
	        try {
	        	//String query = "select * from board where num=?";
	        	String query = "SELECT * FROM chatroom ORDER BY statusMem DESC, createTime ASC, roomTitle asc LIMIT 3, 1";
	        	pstmt = con.prepareStatement(query);
	        	rs = pstmt.executeQuery();
	        	if(rs.next()) {
	    			dto.setRoomTitle(rs.getString("roomtitle"));
	    			dto.setLanguage(rs.getString("language"));
	    			dto.setCreateTime(rs.getDate("createTime"));
	    			dto.setId(rs.getString("id"));
	    			dto.setAllowMem(rs.getInt("allowMem"));
	    			dto.setStatusMem(rs.getInt("statusMem"));
	    			dto.setRoomPwd(rs.getString("roomPwd"));
	        	}
	        }catch(Exception e) {
	        	System.out.println("Exception[firstChatroom]:" + e.getMessage());
	        }        
	        return dto; 
	    }
	 public BoardDTO fifthChatrRoom() { 
	        BoardDTO dto = new BoardDTO();
	        try {
	        	//String query = "select * from board where num=?";
	        	String query = "SELECT * FROM chatroom ORDER BY statusMem DESC, createTime ASC, roomTitle asc LIMIT 4, 1";
	        	pstmt = con.prepareStatement(query);
	        	rs = pstmt.executeQuery();
	        	if(rs.next()) {
	    			dto.setRoomTitle(rs.getString("roomtitle"));
	    			dto.setLanguage(rs.getString("language"));
	    			dto.setCreateTime(rs.getDate("createTime"));
	    			dto.setId(rs.getString("id"));
	    			dto.setAllowMem(rs.getInt("allowMem"));
	    			dto.setStatusMem(rs.getInt("statusMem"));
	    			dto.setRoomPwd(rs.getString("roomPwd"));
	        	}
	        }catch(Exception e) {
	        	System.out.println("Exception[firstChatroom]:" + e.getMessage());
	        }        
	        return dto; 
	    }
}
