package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;

public class JDBConnect {
	public Connection con;
    public Statement stmt;  
    public PreparedStatement pstmt;  
    public ResultSet rs;

    // 疫꿸퀡�궚 占쎄문占쎄쉐占쎌쁽
    public JDBConnect() {
        try {
            // JDBC 占쎈굡占쎌뵬占쎌뵠甕곤옙 嚥≪뮆諭�
            Class.forName("oracle.jdbc.OracleDriver");

            // DB占쎈퓠 占쎈염野껓옙
            String url = "jdbc:oracle:thin:@localhost:1521:xe";  
            String id = "musthave";
            String pwd = "1234"; 
            con = DriverManager.getConnection(url, id, pwd); 

            System.out.println("DB 연결완료(DBConnPool)");
        }
        catch (Exception e) {            
        	System.out.println("연결실패(DBConnPool)" + e.getMessage());	
        }
    }

    // 占쎈あ 甕곕뜆�럮 占쎄문占쎄쉐占쎌쁽
    public JDBConnect(String driver, String url, String id, String pwd) {
        try {
            // JDBC 占쎈굡占쎌뵬占쎌뵠甕곤옙 嚥≪뮆諭�
            Class.forName(driver);  

            // DB占쎈퓠 占쎈염野껓옙
            con = DriverManager.getConnection(url, id, pwd);

            System.out.println("DB 연결완료(JDBC)");
        }
        catch (Exception e) {            
        	System.out.println("연결실패(JDBC)" + e.getMessage());	
        }
    }

    // 占쎄쉭 甕곕뜆�럮 占쎄문占쎄쉐占쎌쁽
    public JDBConnect(ServletContext application) {
        try {
        	String driver = application.getInitParameter("mariadbDriver");;
        	String url = application.getInitParameter("mariadbUrl");
        	String id = application.getInitParameter("mariadbId");
        	String pwd = application.getInitParameter("mariadbPwd");

            Class.forName(driver); 


            con = DriverManager.getConnection(url, id, pwd);

            System.out.println("DB(JDBC application) 연결");
        }
        catch (Exception e) {
        	System.out.println("연결실패(JDBC applicastion)" + e.getMessage());	
        }
    }

    // 占쎈염野껓옙 占쎈퉸占쎌젫(占쎌쁽占쎌뜚 獄쏆꼶沅�)
    public void close() { 
        try {            
            if (rs != null) rs.close(); 
            if (stmt != null) stmt.close();
            if (pstmt != null) pstmt.close();
            if (con != null) con.close(); 

            System.out.println("DB 종료 완료");
        }
        catch (Exception e) {
        	System.out.println("DB 종료 실패" + e.getMessage());	
        }
    }
}
