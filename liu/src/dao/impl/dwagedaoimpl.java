package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DButil;
import model.Dwage;
import dao.dwagedao;

public class dwagedaoimpl implements dwagedao{

	@Override
	public Dwage findbystaffid(String staffid) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		Dwage dwage = new Dwage();
		String sql = "select * from dwage where staffid=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, staffid);
			rs = ps.executeQuery();
			if(rs.next())
			{
				dwage.setBingjia(rs.getString("bingjia"));
				dwage.setBufa(rs.getString("bufa"));
				dwage.setChidao(rs.getString("chidao"));
				dwage.setShijia(rs.getString("shijia"));
				dwage.setStaffid(rs.getString("staffid"));
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
		return dwage;
	}

	@Override
	public boolean adddwage(Dwage dwage) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		int a = 0;
		String sql = "insert into dwage values(?,?,?,?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, dwage.getStaffid());
			ps.setString(2, dwage.getShijia());
			ps.setString(3, dwage.getBingjia());
			ps.setString(4, dwage.getBufa());
			ps.setString(5, dwage.getChidao());
			a = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(a==0)return false;
		else
		return true;
	}

	@Override
	public boolean upddwage(Dwage dwage) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		int a =0;
		String  sql = "update dwage set shijia=?,bingjia=? ,chidao=? where staffid=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, dwage.getShijia());
			ps.setString(2, dwage.getBingjia());
			ps.setString(3, dwage.getChidao());
			ps.setString(4, dwage.getStaffid());
			a = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(a==0)return false;
		else return true;
	}

	@Override
	public boolean deldwagebyid(String id) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		int a =0;
		String  sql = "delete from dwage where staffid=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1,id);
			
			a = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(a==0)return false;
		else return true;
	}

}
