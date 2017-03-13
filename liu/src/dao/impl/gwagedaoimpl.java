package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DButil;
import model.Gwage;
import dao.gwagedao;

public class gwagedaoimpl implements gwagedao{

	@Override
	public Gwage findbystaffid(String staffid) {
		DButil db =DButil.getDButil();
		Connection conn =db.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		Gwage gwage = new Gwage();
		String sql = "select * from gwage where staffid =?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, staffid);
			rs  = ps.executeQuery();
			if(rs.next())
			{
				gwage.setStaffid(rs.getString("staffid"));
				gwage.setCainuan(rs.getString("cainuan"));
				gwage.setJiben(rs.getString("jiben"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			try {
				rs.close();
				ps.close();
				db.closeConnection(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return gwage;
	}

	@Override
	public boolean updgwage(Gwage gwage) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		int a = 0;
		String  sql = "update gwage set jiben=? ,cainuan =? where staffid = ?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, gwage.getJiben());
			ps.setString(2, gwage.getCainuan());
			ps.setString(3, gwage.getStaffid());
			a = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(a==0)return false;
		else return true;
	}

	@Override
	public boolean addgwage(Gwage gwage) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		int a = 0;
		String sql = "insert into gwage values(?,?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, gwage.getStaffid());
			ps.setString(2, gwage.getJiben());
			ps.setString(3,gwage.getCainuan());
			a = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(a==0)return false;
		else return true;
	}

	@Override
	public boolean delgwage(String id) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		int a = 0;
		String  sql = "delete from gwage where staffid=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			
			a = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(a==0)return false;
		else return true;
	}

}
