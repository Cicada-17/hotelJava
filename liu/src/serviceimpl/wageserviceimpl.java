package serviceimpl;

import java.util.List;

import dao.wagedao;
import dao.impl.wagedaoimpl;

import model.Gwage;
import model.Wage;
import service.wageservice;

public class wageserviceimpl implements wageservice{

	wagedao wd = new wagedaoimpl();
	
	public List<Wage> selwage() {
		// TODO Auto-generated method stub
		return wd.selwage();
	}
	
	public List<Wage> selguding() {
		// TODO Auto-generated method stub
		return wd.findbytype("¹Ì¶¨ÏîÄ¿");
	}
	
	

}
