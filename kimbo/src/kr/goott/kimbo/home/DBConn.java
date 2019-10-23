package kr.goott.kimbo.home;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConn {
	public Connection conn=null;
	public PreparedStatement pstmt=null;
	public ResultSet rs=null;
	
	public void dbConn() {
		try {
			Context ctx = new InitialContext();
			Context ctxEnv = (Context)ctx.lookup("java:comp/env");
			DataSource ds = (DataSource)ctxEnv.lookup("jdbc/myoracle");
			conn = ds.getConnection();
		}catch(Exception e) {
			System.out.println("DB���ῡ��..."+e.getMessage());
			e.printStackTrace();
		}
	}
	
	public void dbClose() {
		try {
			if(rs != null)rs.close();
			if(pstmt != null)pstmt.close();
			if(conn != null)conn.close();
		}catch(Exception e) {
			System.out.println("DB���� ���� ����..."+e.getMessage());
			e.printStackTrace();
		}
	}
}
