package kpu.web.club.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kpu.web.club.domain.MemberVO;

public class MemberDAO {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost/jspdb?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC";
	
	void connect() {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "jspbook","passwd");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	public String[] login(String id, String passwd) {
		connect();
		String sql = "select * from Membership where id=? and passwd=?";
		String[] arr1 = new String[2];
		//String nickname = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				arr1[0] = rs.getString("nickname");
				arr1[1] = rs.getString("mobile");
			}
			rs.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return arr1;
		
	}
	
	
	public boolean add( MemberVO vo ) {
		connect();
		String sql = "insert into Membership values (?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPasswd() );
			pstmt.setString(3, vo.getNickname());
			pstmt.setString(4, vo.getMobile());
			pstmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}
	
	
	public MemberVO read(String id) {
		connect();
		
		MemberVO vo = new MemberVO();
		String sql = "select * from Membership where id='"+id+"'";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				vo.setId(rs.getString("id"));
				vo.setPasswd(rs.getString("passwd"));
				vo.setNickname(rs.getString("nickname"));
				vo.setMobile(rs.getString("mobile"));
			}
			rs.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return vo;
	}
	
	
	
	public boolean update(MemberVO vo) {
		connect();
		String sql = "update Membership set id=?, passwd=?, nickname=?, mobile=? where id = '"+ vo.getId()+"'";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPasswd());
			pstmt.setString(3, vo.getNickname());
			pstmt.setString(4, vo.getMobile());
			pstmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}
	
	
	public boolean delete(MemberVO vo) {
		connect();
		String sql = "delete from Membership where id=? AND passwd=?;";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPasswd());
			pstmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}
	
	
	/*
	public ArrayList<MemberVO> getMemberList() {
		connect();
		ArrayList<MemberVO> memberList = new ArrayList<MemberVO>();
		String sql = "select * from Membership";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MemberVO vo = new MemberVO();
				vo.setId(rs.getString("id"));
				vo.setPasswd(rs.getString("passwd"));
				vo.setNickname(rs.getString("nickname"));
				vo.setMobile(rs.getString("mobile"));
				memberList.add(vo);
			}
			rs.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return memberList;
	}
	*/
}
