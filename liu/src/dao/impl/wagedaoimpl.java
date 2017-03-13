package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DButil;

import model.Wage;
import dao.wagedao;

public class wagedaoimpl implements wagedao{

	
	@Override
	public List<Wage> selwage() {
		DButil db = DButil.getDButil();
		List<Wage> listwage = new ArrayList<Wage>();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from wage";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next())
			{
				Wage wage = new Wage();
				wage.setWageformula(rs.getString("wageformula"));
				wage.setWageiord(rs.getString("wageiord"));
				wage.setWagename(rs.getString("wagename"));
				wage.setWagenumber(rs.getString("wagenumber"));
				wage.setWagerm(rs.getString("wagerm"));
				wage.setWagetype(rs.getString("wagetype"));
				wage.setWageyn(rs.getString("wageyn"));
				listwage.add(wage);
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
		return listwage;
	}

	@Override
	public List<Wage> findbytype(String wagetype) {
		DButil db = DButil.getDButil();
		List<Wage> listwage = new ArrayList<Wage>();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		ResultSet rs =null;
		String sql  = "select * from wage where wagetype=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, wagetype);
			rs = ps.executeQuery();
			while(rs.next())
			{
				Wage wage = new Wage();
				wage.setWageformula(rs.getString("wageformula"));
				wage.setWageiord(rs.getString("wageiord"));
				wage.setWagename(rs.getString("wagename"));
				wage.setWagenumber(rs.getString("wagenumber"));
				wage.setWagerm(rs.getString("wagerm"));
				wage.setWagetype(rs.getString("wagetype"));
				wage.setWageyn(rs.getString("wageyn"));
				listwage.add(wage);
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
		
		return listwage;
	}

}
