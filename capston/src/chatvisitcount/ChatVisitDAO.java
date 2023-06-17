package chatvisitcount;

import java.util.*;
import javax.servlet.ServletContext;

import chatlist.ChatListDTO;
import common.JDBConnect;

public class ChatVisitDAO extends JDBConnect{
	public ChatVisitDAO(ServletContext application) {
		super(application);
	}
	
	//채팅방 생성, 입장 시 유저 id, 방 이름 ChatVisit 테이블에 데이터 추가
	public int insertVisit(ChatVisitDTO dto) {
		int result = 0;
		try {
			String query = "insert into chatvisit(id,roomTitle)";
			query += "values(?,?)";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getRoomTitle());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("Exception[insertVisit] : " + e.getMessage());
		}
		return result;
	}
	//채팅방에 유저가 입장하면, 현재 채팅방에 있는 유저 정보 표시
	public ChatVisitDTO selectVisit(String roomTitle) {
		ChatVisitDTO dto = new ChatVisitDTO();
		String query = "select V.*, R.language ";
		query += " from chatroom R inner join chatvisit V ";
		query += " on R.roomTitle=V.roomTitle" ;
		query += " where V.roomTitle=?";
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, roomTitle);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setVisit_num(rs.getString("visit_num"));
				dto.setId(rs.getString("id"));
				dto.setRoomTitle(rs.getString("roomTitle"));
				dto.setLanguage(rs.getString("language"));
			}
		} catch (Exception e) {
			System.out.println("Exception[selectVisit] : " + e.getMessage());
		}
		return dto;
	}
	public ChatVisitDTO selectVisit() {
		ChatVisitDTO dto = new ChatVisitDTO();
		String query = "select V.*, R.language ";
		query += " from chatroom R inner join chatvisit V ";
		query += " on R.roomTitle=V.roomTitle" ;
		query += " where V.visit_num=?";
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, dto.getVisit_num());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setVisit_num(rs.getString("visit_num"));
				dto.setId(rs.getString("id"));
				dto.setRoomTitle(rs.getString("roomTitle"));
				dto.setLanguage(rs.getString("language"));
			}
		} catch (Exception e) {
			System.out.println("Exception[selectVisit] : " + e.getMessage());
		}
		return dto;
	}
	//채팅창 입장 시 들어와 있는 유저 목록 데이터 받기
	public List<ChatVisitDTO> selectVisitList(Map<String, Object> map){
		List<ChatVisitDTO> bbs = new ArrayList<ChatVisitDTO>();
		String qurey = "select * from chatvisit where roomTitle=?";
		try {
			pstmt = con.prepareStatement(qurey);
			pstmt.setString(1, "roomTitle");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ChatVisitDTO dto = new ChatVisitDTO();
				dto.setId(rs.getString("id"));
				dto.setRoomTitle(rs.getString("roomTitle"));
				bbs.add(dto);
			}
		} catch (Exception e) {
			System.out.println("Exception[selectVisitList] : " + e.getMessage());
		}
		return bbs;
	}
	
	//채팅방에서 유저가 나가기 버튼 클릭 시 해당 유저의 id가 있는 데이터 삭제
	public int deleteVisit(String id) {
		int result = 0;
		try {
			String query = "delete from chatvisit where id=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("Exception[deleteVisit] : " + e.getMessage());
		}
		return result;
	}
	
	public ChatVisitDTO secondVisitId(String roomTitle) {
		ChatVisitDTO dto = new ChatVisitDTO();
		try {
			String query = "select * from chatvisit where roomTitle=? LIMIT 1,1";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, roomTitle);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setId(rs.getString("id"));
			}
		} catch (Exception e) {
			System.out.println("Exception[firstVisitId] : " + e.getMessage());
		}
		return dto;
	}
	public ChatVisitDTO thirdVisitId(String roomTitle) {
		ChatVisitDTO dto = new ChatVisitDTO();
		try {
			String query = "select * from chatvisit where roomTitle=? LIMIT 2,1";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, roomTitle);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setId(rs.getString("id"));
			}
		} catch (Exception e) {
			System.out.println("Exception[firstVisitId] : " + e.getMessage());
		}
		return dto;
	}
	public ChatVisitDTO fourVisitId(String roomTitle) {
		ChatVisitDTO dto = new ChatVisitDTO();
		try {
			String query = "select * from chatvisit where roomTitle=? LIMIT 3,1";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, roomTitle);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setId(rs.getString("id"));
			}
		} catch (Exception e) {
			System.out.println("Exception[firstVisitId] : " + e.getMessage());
		}
		return dto;
	}
}
