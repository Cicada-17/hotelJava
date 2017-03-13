package service;

import java.util.List;

import model.Staff;

public interface staffservice {
	public List<Staff> findbybumen(String department);
	public List<Staff> findbybz(String deparment,String zhiwu);
	public boolean addstaff(Staff staff);
	public boolean updstaff(Staff staff);
	public Staff findbyname(String staffname);
	public Staff findbyid(String staffid);
	public boolean delstaffbyid(String staffid);
}
