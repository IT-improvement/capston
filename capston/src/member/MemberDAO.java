package member;

import java.sql.Timestamp;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class MemberDAO extends JDBConnect{
	 public MemberDAO(ServletContext application) {
	        super(application);
	    }
	  public MemberDTO getMemberDTO(String uid, String upass) {
	    	MemberDTO dto = null;
	    	String query = "select * from user where id=? and pwd=?";
	        try {
	        	pstmt = con.prepareStatement(query);
	        	pstmt.setString(1, uid);
	        	pstmt.setString(2, upass);
	        	rs = pstmt.executeQuery();
	        	if(rs.next()) {
	        		dto = new MemberDTO();
	        		dto.setSolveNum(rs.getInt("solveNum"));
	        		dto.setId(rs.getString("id"));
	        		dto.setPwd(rs.getString("pwd"));
	        	}
	        }catch(Exception e) {
	        	System.out.println("Exception[MemberDAO]:" + e.getMessage());
	        }    	
	    	return dto;
	    }
	  
	  public MemberDTO getSolveNum(String Uid) {
          MemberDTO dto = null;
          String query = "select * from user where id=?";
          try {
              pstmt = con.prepareStatement(query);
              pstmt.setString(1, Uid);
              rs = pstmt.executeQuery();
              if(rs.next()) {
                  dto = new MemberDTO();
                  dto.setId(rs.getString("id"));
                  dto.setSolveNum(rs.getInt("solveNum"));
                  dto.setEmail(rs.getString("email"));
                  dto.setPhoneNum(rs.getString("phoneNum"));
              }
          }catch(Exception e) {
              System.out.println("Exception[MemberDAO]:" + e.getMessage());
          }
          return dto;
      }
	  
	  public MemberDTO getComfile(String Uid) {
          MemberDTO dto = null;
          String query = "select * from user where id=?";
          try {
              pstmt = con.prepareStatement(query);
              pstmt.setString(1, Uid);

              rs = pstmt.executeQuery();
              if(rs.next()) {

                  dto = new MemberDTO();

                  dto.setId(rs.getString("id"));

                  dto.setComfile(rs.getInt("comfile"));

              }
          }catch(Exception e) {
              System.out.println("Exception[MemberDAO]:" + e.getMessage());
          }
          return dto;
      }
	  
	  public MemberDTO getPasswordChangeDTO(String uid, String upass) {
          MemberDTO dto = null;
          String query = "select * from user where id=? and pwd=?";
          try {
              pstmt = con.prepareStatement(query);
              pstmt.setString(1, uid);
              pstmt.setString(2, upass);
              rs = pstmt.executeQuery();
              if(rs.next()) {

                  dto = new MemberDTO();

                  dto.setId(rs.getString("id"));
                  dto.setPwd(rs.getString("pwd"));
              }
          }catch(Exception e) {
              System.out.println("Exception[getPasswordChangeDTO]:" + e.getMessage());
          }
          return dto;
      }


    public int updatePassword(String uid, String upass) {
          int res = 0;
          String query = "UPDATE user SET pwd = ? WHERE id = ?";
          try {
              pstmt = con.prepareStatement(query);
              pstmt.setString(1, upass);
              pstmt.setString(2, uid);

              res = pstmt.executeUpdate();

          }catch(Exception e) {
              System.out.println("Exception[updatePassword]:" + e.getMessage());
          }
          return res;
      }
	  
	  public int insertLog(MemberDTO dto) {
		  int result = 0;
		  String query = "INSERT INTO `capston`.`logfile` (`logDate`, `id`) VALUES(?,?)";
		  try {
			  pstmt=con.prepareStatement(query);
			  pstmt.setTimestamp(1, dto.getLogDate());
			  pstmt.setString(2, dto.getId());
			 result = pstmt.executeUpdate();
		  }catch(Exception e) {
			  
		  }
		  return result;
	  }

	  public int insertLogout(MemberDTO dto) {
		  int result = 0;
		   String query = "update logfile set logOutDate=? where logOutDate is null and id = ?";
		   try {
			   pstmt = con.prepareStatement(query);
			   pstmt.setTimestamp(1, dto.getLogOutDate());
			   pstmt.setString(2, dto.getId());
			   result = pstmt.executeUpdate();
		   }catch(Exception e) {
			   System.out.println("Exception[insertLogout] : "+ e.getMessage());
		   }
		  return result;
	  }
	  
	  public int totaluser() {
		  int result = 0;
		   String query = "select COUNT(*) from logfile where logOutDate is NULL";
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
	  
	  public Timestamp totaljoin(String id) {
		  Timestamp logtime = null;
		  String query = "select * from logfile where id=? and logOutDate is NULL";
		  try {
			  pstmt = con.prepareStatement(query);
			  rs = pstmt.executeQuery();
			  rs.next();
			  logtime = rs.getTimestamp("logDate");
		  }catch (Exception e) {
		}
		  
		  return logtime;
	  }
	  
	  public int checkid(String id) {
		  int result = 0;
		  String query = "select id from user where id=?";
		  try {
			  pstmt = con.prepareStatement(query);
			  pstmt.setString(1, id);
			  rs = pstmt.executeQuery();
			  if(rs.next()) {
				  result=1;
			  }else {
				  result=0;
			  }
		  }catch(Exception e) {
			  
		  }
		  return result;
	  }
	  public int insertUser(String id, String pwd, String email, String phoneNum, String zipcode, String address, String question, String answer) {
		  int result = 0;
		  String query = "INSERT INTO user(id, pwd, email, phoneNum, zipcode, address, question, answer) VALUES(?,?,?,?,?,?,?,?)";
		  try {
			  pstmt=con.prepareStatement(query);
			  pstmt.setString(1, id);
			  pstmt.setString(2, pwd);
			  pstmt.setString(3, email);
			  pstmt.setString(4, phoneNum);
			  pstmt.setString(5, zipcode);
			  pstmt.setString(6, address);
			  pstmt.setString(7, question);
			  pstmt.setString(8, answer);
			 result = pstmt.executeUpdate();
		  }catch(Exception e) {
			  
		  }
		  return result;
	  }
	  
	  public MemberDTO findpwd(String id, String question, String answer) {
		  MemberDTO dto = null;
		  String query="select * from user where id=? and question=? and answer=?";
		  try {
			  dto = new MemberDTO();
			  pstmt=con.prepareStatement(query);
			  pstmt.setString(1, id);
			  pstmt.setString(2, question);
			  pstmt.setString(3, answer);
			  rs=pstmt.executeQuery();
			  if(rs.next()) {
			  dto.setPwd(rs.getString("pwd"));
			  }
		  }catch(Exception e) {
			  
		  }
		  
		  
		  return dto;
	  }
	  
	  public int alluser() {
		  int result = 0;
		  String query = "SELECT COUNT(*) FROM user";
		  try {
			 pstmt=con.prepareStatement(query);
			 rs =pstmt.executeQuery();
			 rs.next();
			 result = rs.getInt("count(*)");
		  }catch(Exception e) {
			  
		  }
		  return result;
	  }
	  
}