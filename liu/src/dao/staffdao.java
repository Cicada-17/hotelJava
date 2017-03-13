package dao;

import java.util.List;

import model.Staff;

public interface staffdao {
	public List<Staff> findbybumen(String department);
	public List<Staff> findbybz(String deparment,String zhiwu);
	public boolean addstaff(Staff staff);
	public boolean delstaff(Staff staff);
	public boolean altstaff(Staff staff);
	public Staff findbyname(String staffname);
	public Staff findbyid(String staffid);
}
