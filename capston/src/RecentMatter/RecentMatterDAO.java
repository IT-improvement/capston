package RecentMatter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class RecentMatterDAO extends JDBConnect {
    public RecentMatterDAO(ServletContext application) {
        super(application);
    }

    public List<RecentMatterDTO> getRecentDataList() {
        List<RecentMatterDTO> dataList = new ArrayList<>();

        try {
            // SQL 쿼리 실행하여 결과를 DTO 객체로 변환 후 반환하는 로직 작성
            Statement statement = con.createStatement();
            String query = "SELECT * FROM studylist ORDER BY createTime DESC LIMIT 4";
            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {
                // DTO 객체 생성 및 필드 설정
                RecentMatterDTO dto = new RecentMatterDTO();
                dto.setNum(resultSet.getInt("study_num"));
                dto.setTitle(resultSet.getString("title"));
                dto.setLanguage(resultSet.getString("language"));
                dto.setContents(resultSet.getString("contents"));
                dto.setCreateTime(resultSet.getDate("createTime"));

                dataList.add(dto);
            }

            resultSet.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dataList;
    }
}
