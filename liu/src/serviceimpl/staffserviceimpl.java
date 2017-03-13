package serviceimpl;

import java.util.List;

import dao.dwagedao;
import dao.gwagedao;
import dao.staffdao;
import dao.sysuserdao;
import dao.impl.dwagedaoimpl;
import dao.impl.gwagedaoimpl;
import dao.impl.staffdaoimpl;
import dao.impl.sysuserdaoimpl;

import model.Dwage;
import model.Gwage;
import model.Staff;
import model.Sysuser;
import service.staffservice;

public class staffserviceimpl implements staffservice{

	sysuserdao ssd = new sysuserdaoimpl();
	staffdao  sd = new staffdaoimpl();
	dwagedao dd = new dwagedaoimpl();
	gwagedao gd = new gwagedaoimpl();
	public List<Staff> findbybumen(String department) {
		// TODO Auto-generated method stub
		return sd.findbybumen(department);
	}
	@Override
	public List<Staff> findbybz(String deparment, String zhiwu) {
		// TODO Auto-generated method stub
		return sd.findbybz(deparment, zhiwu);
	}
	@Override
	public boolean addstaff(Staff staff) {
		boolean a  =sd.addstaff(staff);
		Sysuser user = new Sysuser();
		String staffid = sd.findbyname(staff.getStaffname()).getStaffid();
		user.setUsername(staff.getStaffname());
		user.setPower("1");
		user.setPassword("123");
		ssd.adduser(user);
		Gwage gwage = new Gwage();
		Dwage dwage = new Dwage();
		gwage.setStaffid(staffid);
		gwage.setCainuan("500");
		gwage.setJiben("5000");
		
		dwage.setStaffid(staffid);
		dwage.setBingjia("0");
		dwage.setChidao("0");
		dwage.setShijia("0");
		gd.addgwage(gwage);
		dd.adddwage(dwage);
		return a;
	}
	@Override
	public Staff findbyname(String staffname) {
		// TODO Auto-generated method stub
		return sd.findbyname(staffname);
	}
	@Override
	public Staff findbyid(String staffid) {
		// TODO Auto-generated method stub
		return sd.findbyid(staffid);
	}
	@Override
	public boolean updstaff(Staff staff) {
		// TODO Auto-generated method stub
		return sd.altstaff(staff);
	}
	@Override
	public boolean delstaffbyid(String staffid) {
		Staff staff = new Staff();
		staff.setStaffid(staffid);
		dd.deldwagebyid(staffid);
		gd.delgwage(staffid);
		return sd.delstaff(staff);
	}

}
