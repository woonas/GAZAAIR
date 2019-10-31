package kr.gaza.home;

import java.io.IOException;
import java.io.Reader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConn {
	public Connection conn = null;
	public PreparedStatement pstmt = null;
	public ResultSet rs = null;
	
	//DB연결
	public void dbConn() {
		try {
			Context ctx = new InitialContext();
			Context ctxEnv = (Context)ctx.lookup("java:comp/env");
			DataSource ds = (DataSource)ctxEnv.lookup("jdbc/myoracle");
			conn = ds.getConnection();
		}catch(Exception e) {
			System.out.println("DB연결 에러...");
			e.printStackTrace();
		}
	}
	//DB종료
	public void dbClose() {
		try {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}catch(Exception e) {
			System.out.println("DB종료 에러...");
			e.printStackTrace();
		}
	}
	// DAO에서 사용예제 vo.setContent(readClobData(rs.getCharacterStream(4))); 
	public static String readClobData(Reader reader) throws IOException {
        StringBuffer data = new StringBuffer();
        char[] buf = new char[1024];
        int cnt = 0;
        if (null != reader) {
            while ( (cnt = reader.read(buf)) != -1) {
                data.append(buf, 0, cnt);
            }
        }
        return data.toString();
    }
}
