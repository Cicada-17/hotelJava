package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DButil;

import model.Dwage;
import model.Gwage;
import model.Staff;
import dao.dwagedao;
import dao.gwagedao;
import dao.staffdao;

public class staffdaoimpl implements staffdao{
	
	@Override
	public List<Staff> findbybumen(String department) {
		DButil db = DButil.getDButil();
		List<Staff> liststaff = new ArrayList<Staff>();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from staff where department=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, department);
			rs = ps.executeQuery();
			while(rs.next())
			{
				Staff staff = new Staff();
				staff.setStaffid(rs.getString("staffid"));
				staff.setStaffname(rs.getString("staffname"));
				staff.setDepartment(rs.getString("department"));
				staff.setPosition(rs.getString("position"));
				liststaff.add(staff);
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
		return liststaff;
	}

	@Override
	public List<Staff> findbybz(String deparment, String zhiwu) {
		DButil db = DButil.getDButil();
		List<Staff> liststaff = new ArrayList<Staff>();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from staff where department=? and position =?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1,deparment);
			ps.setString(2, zhiwu);
			rs = ps.executeQuery();
			while(rs.next())
			{
				Staff staff = new Staff();
				staff.setStaffid(rs.getString("staffid"));
				staff.setStaffname(rs.getString("staffname"));
				staff.setDepartment(rs.getString("department"));
				staff.setPosition(rs.getString("position"));
				liststaff.add(staff);
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
		return liststaff;
	}

	@Override
	public boolean addstaff(Staff staff) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		
		int a = 0;
		String sql ="insert into staff(staffid,staffname,department,position) values(sql_s.Nextval,?,?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, staff.getStaffname());
			ps.setString(2, staff.getDepartment());
			ps.setString(3, staff.getPosition());
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
		else 
		return true;
	}

	@Override
	public boolean delstaff(Staff staff) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		int a = 0;
		String sql = "delete from staff where staffid = ?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, staff.staffid);
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
	public boolean altstaff(Staff staff) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		int i = 0;
		String  sql = "update staff set department =? ,position =? where staffid=? and staffname=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, staff.getDepartment());
			ps.setString(2, staff.getPosition());
			ps.setString(3, staff.getStaffid());
			ps.setString(4, staff.getStaffname());
			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(i==0)return false;
		else 
		return true;
	}

	@Override
	public Staff findbyname(String staffname) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		Staff staff = new Staff();
		String sql = "select * from staff where staffname=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, staffname);
			rs = ps.executeQuery();
			if(rs.next())
			{
				staff.setStaffid(rs.getString("staffid"));
				staff.setStaffname(rs.getString("staffname"));
				staff.setDepartment(rs.getString("department"));
				staff.setPosition(rs.getString("position"));
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
		
		return staff;
	}

	@Override
	public Staff findbyid(String staffid) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps= null;
		ResultSet rs = null;
		Staff staff = new Staff();
		String sql = "select * from staff where staffid = ?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, staffid);
			rs = ps.executeQuery();
			if(rs.next())
			{
				staff.setDepartment(rs.getString("department"));
				staff.setPosition(rs.getString("position"));
				staff.setStaffid(rs.getString("staffid"));
				staff.setStaffname(rs.getString("staffname"));
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
		return staff;
	}

}
