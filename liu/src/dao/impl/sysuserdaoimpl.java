package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DButil;
import model.Sysuser;
import dao.sysuserdao;

public class sysuserdaoimpl implements sysuserdao{

	@Override
	public Sysuser findsysuserbynp(String name, String password) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		Sysuser sysuser = new Sysuser();
		String sql = "select * from sysuser where username=?  and password = ?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, password);
			rs = ps.executeQuery();
			if(rs.next())
			{
				sysuser.setUsername(rs.getString("username"));
				sysuser.setPassword(rs.getString("password"));
				sysuser.setPower(rs.getString("power"));
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
		return sysuser;
	}

	@Override
	public boolean adduser(Sysuser user) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		int a = 0;
		String sql = "insert into sysuser (username,password,power) values(?,?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.username);
			ps.setString(2, user.password);
			ps.setString(3, user.power);
			a = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			try {
				ps.close();
				db.closeConnection(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		if(a==0)return false;
		else return true;
	}

	@Override
	public boolean upd(Sysuser user) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		int a = 0;
		String sql = "update sysuser set password=? where username=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.password);
			ps.setString(2, user.username);
			
			a = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			try {
				ps.close();
				db.closeConnection(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		if(a==0)return false;
		else return true;
	}

}
