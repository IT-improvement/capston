package chatlist;

import java.util.*;
import common.JDBConnect;
import javax.servlet.ServletContext;

public class ChatListDAO extends JDBConnect{
	public ChatListDAO(ServletContext application) {
		super(application);
	}
	
	public List<ChatListDTO> selectChatList(Map<String, Object> map){
		List<ChatListDTO> bbs = new ArrayList<ChatListDTO>();
		String qurey = "SELECT * FROM chatroom INNER JOIN chatvisit on chatroom.id = chatvisit.id AND chatroom.roomTitle = chatvisit.roomTitle;";
		try {
			pstmt = con.prepareStatement(qurey);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ChatListDTO dto = new ChatListDTO();
				dto.setCreateTime(rs.getTimestamp("createTime"));
				dto.setRoomTitle(rs.getString("roomTitle"));
				dto.setLanguage(rs.getString("language"));
				dto.setAllowMem(rs.getInt("allowMem"));
				dto.setStatusMem(rs.getInt("statusMem"));
				dto.setId(rs.getString("id"));
				dto.setVisit_num(rs.getInt("visit_num"));
				bbs.add(dto);
			}
		} catch (Exception e) {
			System.out.println("Exception[selectChatList] : " + e.getMessage());
		}
		return bbs;
	}
	public int insertWrite(ChatListDTO dto) {
		int result = 0;
		try {
			String query = "insert into chatroom(createTime,roomTitle,language,allowMem,roomPwd,id,statusMem) ";
			query += "values(?,?,?,4,?,?,1)";
			pstmt = con.prepareStatement(query);
			pstmt.setTimestamp(1, dto.getCreateTime());
			pstmt.setString(2, dto.getRoomTitle());
			pstmt.setString(3, dto.getLanguage());			
			pstmt.setString(4, dto.getRoomPwd());
			pstmt.setString(5, dto.getId());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("Exception[insertWrite]:" + e.getMessage());
		}
		return result;
	}
	public ChatListDTO selectTitle(String id) {
		ChatListDTO dto = new ChatListDTO();
		String query = "select roomTitle from chatroom where id=?";
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setRoomTitle(rs.getString("roomTitle"));
			}
		} catch (Exception e) {
			System.out.println("Exception[selectTitle] : " + e.getMessage());
		}
		return dto;
	}
}

