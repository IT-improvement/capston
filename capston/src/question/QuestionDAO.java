package question;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class QuestionDAO extends JDBConnect {
	public QuestionDAO(ServletContext application) {
		super(application);
	}

	public List<QuestionDTO> getQuestionList() {
		List<QuestionDTO> list = new ArrayList<QuestionDTO>();
		try {
			String query = "select * from question";
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				QuestionDTO dto = new QuestionDTO();
				dto.setQ_num(rs.getInt("q_num"));
				dto.setQ_level(rs.getString("q_level"));
				dto.setQ_title(rs.getString("q_title"));
				dto.setQ_language(rs.getString("q_language"));
				dto.setQ_info(rs.getString("q_info"));
				dto.setQ_anwserpercent(rs.getString("q_anwserpercent"));
				dto.setVisitCount(rs.getInt("visitCount"));
				list.add(dto);
			}
		} catch (Exception e) {
			System.out.println("Exception[getQuestionList]:" + e.getMessage());
		}
		return list;
	}

	public List<QuestionDTO> getQuestionList(String l1) {
		List<QuestionDTO> list = new ArrayList<QuestionDTO>();
		try {
			String query = "select * from question where q_language = ?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, l1);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				QuestionDTO dto = new QuestionDTO();
				dto.setQ_num(rs.getInt("q_num"));
				dto.setQ_level(rs.getString("q_level"));
				dto.setQ_title(rs.getString("q_title"));
				dto.setQ_language(rs.getString("q_language"));
				dto.setQ_info(rs.getString("q_info"));
				dto.setQ_anwserpercent(rs.getString("q_anwserpercent"));
				dto.setVisitCount(rs.getInt("visitCount"));
				list.add(dto);
			}
		} catch (Exception e) {
			System.out.println("Exception[getQuestionList]:" + e.getMessage());
		}
		return list;
	}

	public List<QuestionDTO> getQuestionList(String l1, String l2) {
		List<QuestionDTO> list = new ArrayList<QuestionDTO>();
		try {
			String query = "select * from question where q_language = ? or q_language = ?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, l1);
			pstmt.setString(2, l2);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				QuestionDTO dto = new QuestionDTO();
				dto.setQ_num(rs.getInt("q_num"));
				dto.setQ_level(rs.getString("q_level"));
				dto.setQ_title(rs.getString("q_title"));
				dto.setQ_language(rs.getString("q_language"));
				dto.setQ_info(rs.getString("q_info"));
				dto.setQ_anwserpercent(rs.getString("q_anwserpercent"));
				dto.setVisitCount(rs.getInt("visitCount"));
				list.add(dto);
			}
		} catch (Exception e) {
			System.out.println("Exception[getQuestionList]:" + e.getMessage());
		}
		return list;
	}

	public List<QuestionDTO> getQuestionList(String l1, String l2, String l3) {
		List<QuestionDTO> list = new ArrayList<QuestionDTO>();
		try {
			String query = "select * from question where q_language = ? or q_language = ? or q_language = ?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, l1);
			pstmt.setString(2, l2);
			pstmt.setString(3, l3);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				QuestionDTO dto = new QuestionDTO();
				dto.setQ_num(rs.getInt("q_num"));
				dto.setQ_level(rs.getString("q_level"));
				dto.setQ_title(rs.getString("q_title"));
				dto.setQ_language(rs.getString("q_language"));
				dto.setQ_info(rs.getString("q_info"));
				dto.setQ_anwserpercent(rs.getString("q_anwserpercent"));
				dto.setVisitCount(rs.getInt("visitCount"));
				list.add(dto);
			}
		} catch (Exception e) {
			System.out.println("Exception[getQuestionList]:" + e.getMessage());
		}
		return list;
	}

	public List<QuestionDTO> getQuestionList(String l1, String l2, String l3, String l4) {
		List<QuestionDTO> list = new ArrayList<QuestionDTO>();
		try {
			String query = "select * from question where q_language = ? or q_language = ? "
					+ "or q_language = ? or q_language = ?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, l1);
			pstmt.setString(2, l2);
			pstmt.setString(3, l3);
			pstmt.setString(4, l4);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				QuestionDTO dto = new QuestionDTO();
				dto.setQ_num(rs.getInt("q_num"));
				dto.setQ_level(rs.getString("q_level"));
				dto.setQ_title(rs.getString("q_title"));
				dto.setQ_language(rs.getString("q_language"));
				dto.setQ_info(rs.getString("q_info"));
				dto.setQ_anwserpercent(rs.getString("q_anwserpercent"));
				dto.setVisitCount(rs.getInt("visitCount"));
				list.add(dto);
			}
		} catch (Exception e) {
			System.out.println("Exception[getQuestionList]:" + e.getMessage());
		}
		return list;
	}

	public List<QuestionDTO> getQuestionList(String l1, String l2, String l3, String l4, String l5) {
		List<QuestionDTO> list = new ArrayList<QuestionDTO>();
		try {
			String query = "select * from question where q_language = ? or q_language = ? "
					+ "or q_language = ? or q_language = ? or q_language = ?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, l1);
			pstmt.setString(2, l2);
			pstmt.setString(3, l3);
			pstmt.setString(4, l4);
			pstmt.setString(5, l5);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				QuestionDTO dto = new QuestionDTO();
				dto.setQ_num(rs.getInt("q_num"));
				dto.setQ_level(rs.getString("q_level"));
				dto.setQ_title(rs.getString("q_title"));
				dto.setQ_language(rs.getString("q_language"));
				dto.setQ_info(rs.getString("q_info"));
				dto.setQ_anwserpercent(rs.getString("q_anwserpercent"));
				dto.setVisitCount(rs.getInt("visitCount"));
				list.add(dto);
			}
		} catch (Exception e) {
			System.out.println("Exception[getQuestionList]:" + e.getMessage());
		}
		return list;
	}

	public int insertVisitCount(int qnum) {
		int result = 0;
		try {
			String query = "update question set visitCount = visitCount + 1 where q_num = ? ";
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, qnum);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("Exception[insertVisitCount]:" + e.getMessage());
		}
		return result;
	}

	public QuestionDTO getCodingQuestionList(int qNum) {
		QuestionDTO dto = null;
		try {
			String query = "select * from question where q_num = ?";
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, qNum);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new QuestionDTO();
				dto.setQ_num(rs.getInt("q_num"));
				dto.setQ_title(rs.getString("q_title"));

			}
		} catch (Exception e) {
			System.out.println("Exception[getQuestionList]:" + e.getMessage());
		}
		return dto;
	}

	public List<QuestionDTO> getKakaoQuestionList() {
		List<QuestionDTO> list = new ArrayList<QuestionDTO>();
		try {
			String query = "select * from question where company = '카카오'";
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				QuestionDTO dto = new QuestionDTO();
				dto.setQ_num(rs.getInt("q_num"));
				dto.setQ_level(rs.getString("q_level"));
				dto.setQ_title(rs.getString("q_title"));
				dto.setQ_language(rs.getString("q_language"));
				dto.setQ_info(rs.getString("q_info"));
				dto.setQ_anwserpercent(rs.getString("q_anwserpercent"));
				dto.setVisitCount(rs.getInt("visitCount"));
				dto.setCompany(rs.getString("company"));
				list.add(dto);
			}
		} catch (Exception e) {
			System.out.println("Exception[getQuestionList]:" + e.getMessage());
		}
		return list;
	}

	public List<QuestionDTO> getPastQuestionList() {
		List<QuestionDTO> list = new ArrayList<QuestionDTO>();
		try {
			String query = "select * from past_q";
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				QuestionDTO dto = new QuestionDTO();
				dto.setPast_num(rs.getInt("past_num"));
				dto.setPast_title(rs.getString("past_title"));
				list.add(dto);
			}
		} catch (Exception e) {
			System.out.println("Exception[getPastQuestionList()]:" + e.getMessage());
		}
		return list;
	}

	public QuestionDTO getPastQuestionList(int pastnum) {
		QuestionDTO dto = null;
		try {
			String query = "select * from past_q where past_num = ? ";
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, pastnum);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new QuestionDTO();
				dto.setPast_title(rs.getString("past_title"));
			}
		} catch (Exception e) {
			System.out.println("Exception[getPastQuestionList()]:" + e.getMessage());
		}
		return dto;
	}

	public QuestionDTO firstQuestion() {
		QuestionDTO dto = new QuestionDTO();
		try {
			// String query = "select * from board where num=?";
			String query = "SELECT question.*, answeruserinfo.q_answer FROM answeruserinfo right JOIN question ON answeruserinfo.q_num = question.q_num ORDER BY visitCount DESC, q_title ASC LIMIT 0, 1";
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setQ_num(rs.getInt("q_num"));
				dto.setQ_level(rs.getString("q_level"));
				dto.setQ_title(rs.getString("q_title"));
				dto.setQ_language(rs.getString("q_language"));
				dto.setVisitCount(rs.getInt("visitCount"));
				dto.setQ_answer(rs.getInt("q_answer"));
				dto.setQ_info(rs.getString("q_info"));
				dto.setCompany(rs.getString("company"));
				dto.setQ_anwserpercent(rs.getString("q_anwserpercent"));
			}
		} catch (Exception e) {
			System.out.println("Exception[firstChatroom]:" + e.getMessage());
		}
		return dto;
	}

	public QuestionDTO secondQuestion() {
		QuestionDTO dto = new QuestionDTO();
		try {
			// String query = "select * from board where num=?";
			String query = "SELECT question.*, answeruserinfo.q_answer FROM answeruserinfo right JOIN question ON answeruserinfo.q_num = question.q_num ORDER BY visitCount DESC, q_title ASC LIMIT 1, 1";
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setQ_num(rs.getInt("q_num"));
				dto.setQ_level(rs.getString("q_level"));
				dto.setQ_title(rs.getString("q_title"));
				dto.setQ_language(rs.getString("q_language"));
				dto.setVisitCount(rs.getInt("visitCount"));
				dto.setQ_answer(rs.getInt("q_answer"));
				dto.setQ_info(rs.getString("q_info"));
				dto.setCompany(rs.getString("company"));
				dto.setQ_anwserpercent(rs.getString("q_anwserpercent"));
			}
		} catch (Exception e) {
			System.out.println("Exception[firstChatroom]:" + e.getMessage());
		}
		return dto;
	}

	public QuestionDTO thirdQuestion() {
		QuestionDTO dto = new QuestionDTO();
		try {
			// String query = "select * from board where num=?";
			String query = "SELECT question.*, answeruserinfo.q_answer FROM answeruserinfo right JOIN question ON answeruserinfo.q_num = question.q_num ORDER BY visitCount DESC, q_title ASC LIMIT 2, 1";
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setQ_num(rs.getInt("q_num"));
				dto.setQ_level(rs.getString("q_level"));
				dto.setQ_title(rs.getString("q_title"));
				dto.setQ_language(rs.getString("q_language"));
				dto.setVisitCount(rs.getInt("visitCount"));
				dto.setQ_answer(rs.getInt("q_answer"));
				dto.setQ_info(rs.getString("q_info"));
				dto.setCompany(rs.getString("company"));
				dto.setQ_anwserpercent(rs.getString("q_anwserpercent"));
			}
		} catch (Exception e) {
			System.out.println("Exception[firstChatroom]:" + e.getMessage());
		}
		return dto;
	}

	public QuestionDTO fourthQuestion() {
		QuestionDTO dto = new QuestionDTO();
		try {
			// String query = "select * from board where num=?";
			String query = "SELECT question.*, answeruserinfo.q_answer FROM answeruserinfo right JOIN question ON answeruserinfo.q_num = question.q_num ORDER BY visitCount DESC, q_title ASC LIMIT 3, 1";
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setQ_num(rs.getInt("q_num"));
				dto.setQ_level(rs.getString("q_level"));
				dto.setQ_title(rs.getString("q_title"));
				dto.setQ_language(rs.getString("q_language"));
				dto.setVisitCount(rs.getInt("visitCount"));
				dto.setQ_answer(rs.getInt("q_answer"));
				dto.setQ_info(rs.getString("q_info"));
				dto.setCompany(rs.getString("company"));
				dto.setQ_anwserpercent(rs.getString("q_anwserpercent"));
			}
		} catch (Exception e) {
			System.out.println("Exception[firstChatroom]:" + e.getMessage());
		}
		return dto;
	}

	public QuestionDTO fifthQuestion() {
		QuestionDTO dto = new QuestionDTO();
		try {
			// String query = "select * from board where num=?";
			String query = "SELECT question.*, answeruserinfo.q_answer FROM answeruserinfo right JOIN question ON answeruserinfo.q_num = question.q_num ORDER BY visitCount DESC, q_title ASC LIMIT 4, 1";
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setQ_num(rs.getInt("q_num"));
				dto.setQ_level(rs.getString("q_level"));
				dto.setQ_title(rs.getString("q_title"));
				dto.setQ_language(rs.getString("q_language"));
				dto.setVisitCount(rs.getInt("visitCount"));
				dto.setQ_answer(rs.getInt("q_answer"));
				dto.setQ_info(rs.getString("q_info"));
				dto.setCompany(rs.getString("company"));
				dto.setQ_anwserpercent(rs.getString("q_anwserpercent"));
			}
		} catch (Exception e) {
			System.out.println("Exception[firstChatroom]:" + e.getMessage());
		}
		return dto;
	}

	public String solveCheck(int check) {
		String pass = "";
		if (check == 0) {
			pass = "미완료";
		} else {
			pass = "완료";
		}
		return pass;
	}
	
	public int totalquestion() {
		  int result = 0;
		   String query = "select COUNT(*) from question";
		   try {
			   pstmt = con.prepareStatement(query);
			   rs =pstmt.executeQuery();
				 rs.next();
				 result = rs.getInt("count(*)");
		   }catch(Exception e) {
			   System.out.println("Exception[insertLogout] : "+ e.getMessage());
		   }
		  return result;
	  }
}
