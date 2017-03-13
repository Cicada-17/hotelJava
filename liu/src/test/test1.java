package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import model.Dwage;
import model.Gwage;
import model.Money;
import model.Staff;
import model.Sysuser;

import dao.dwagedao;
import dao.gwagedao;
import dao.moneydao;
import dao.staffdao;
import dao.sysuserdao;
import dao.impl.dwagedaoimpl;
import dao.impl.gwagedaoimpl;
import dao.impl.moneydaoimpl;
import dao.impl.staffdaoimpl;
import dao.impl.sysuserdaoimpl;

import util.DButil;

public class test1 {
	public static void main(String [] args)
	{
		Money money = new Money();
		money.setStaffid("1");
		money.setYear("2014");
		money.setMonth("11");
		moneydao md = new moneydaoimpl();
		md.addmoney(money);
	}
}

