package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import util.DButil;
import model.Dwage;
import model.Gwage;
import model.Money;
import model.Staff;
import dao.dwagedao;
import dao.gwagedao;
import dao.moneydao;
import dao.staffdao;

public class moneydaoimpl implements moneydao{

	
	public Money findbynameym(Money m) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		Money money = new Money();
		String sql = "select * from money where staffname=? and year=? and month=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, m.getStaffname());
			ps.setString(2, m.getYear());
			ps.setString(3, m.getMonth());
			rs = ps.executeQuery();
			if(rs.next())
			{
				money.setBingjia(rs.getString("bingjia"));
				money.setBingjiakou(rs.getString("bingjiakou"));
				money.setCaidao(rs.getString("chidao"));
				money.setCainuan(rs.getString("cainuan"));
				money.setChidaokou(rs.getString("chidaokou"));
				money.setGerengongjijin(rs.getString("gerengongjijin"));
				money.setGerenshui(rs.getString("gerenshui"));
				money.setGerenyanglao(rs.getString("gerenyanglao"));
				money.setGongsiyanglao(rs.getString("gongsiyanglao"));
				money.setJiben(rs.getString("jiben"));
				money.setMoney(rs.getString("money"));
				money.setMonth(rs.getString("month"));
				money.setShijia(rs.getString("shijia"));
				money.setShijiakou(rs.getString("shijiakou"));
				money.setStaffid(rs.getString("staffid"));
				money.setStaffname(rs.getString("staffname"));
				money.setYear(rs.getString("year"));
				
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
		return money;
	}

	@Override
	public boolean addmoney(Money m) {
		DButil db = DButil.getDButil();
		Connection conn = db.getConnection();
		PreparedStatement ps = null;
		dwagedao dd = new dwagedaoimpl();
		gwagedao gd = new gwagedaoimpl();
		staffdao sd = new staffdaoimpl();
		Staff staff = sd.findbyid(m.getStaffid());
		Dwage dwage = dd.findbystaffid(m.getStaffid());
		Gwage gwage = gd.findbystaffid(m.getStaffid());
		double jiben = Double.parseDouble(gwage.getJiben());
		double cainuan = Double.parseDouble(gwage.getCainuan());
		int  bingjia =Integer.parseInt(dwage.getBingjia());
		int shijia = Integer.parseInt(dwage.getShijia());
		int chidao = Integer.parseInt(dwage.getChidao());
		double bingjiakou = bingjia*20.0;
		double shijiakou = shijia*50.0;
		double chidaokou =chidao * 10;
		double gerenshui = jiben*0.1;
		double gerengongjijin = jiben*0.1;
		double gerenyanglao = jiben*0.08;
		double gongsiyanglao = gerenyanglao;
		double zong = jiben+cainuan-bingjiakou-shijiakou-chidaokou-gerenshui-gerengongjijin-gerenyanglao;
		int a = 0;
		String sql = "insert into money (year ,month,staffid,staffname,money,jiben,cainuan,bingjia," +
				"shijia,chidao,bingjiakou,shijiakou,chidaokou,gerenyanglao,gongsiyanglao," +
				"gerengongjijin,gerenshui)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, m.getYear());
			ps.setString(2, m.getMonth());
			ps.setString(3, m.getStaffid());
			ps.setString(4, staff.getStaffname());
			ps.setDouble(5, zong);
			ps.setDouble(6, jiben);
			ps.setDouble(7, cainuan);
			ps.setDouble(8, bingjia);
			ps.setDouble(9, shijia);
			ps.setDouble(10, chidao);
			ps.setDouble(11, bingjiakou);
			ps.setDouble(12, shijiakou);
			ps.setDouble(13, chidaokou);
			ps.setDouble(14, gerenyanglao);
			ps.setDouble(15, gongsiyanglao);
			ps.setDouble(16, gerengongjijin);
			ps.setDouble(17, gerenshui);
			a = ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(a==0)return false;
		else return true;
	}


	
}
