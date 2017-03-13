package serviceimpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dao.dwagedao;
import dao.staffdao;
import dao.impl.dwagedaoimpl;
import dao.impl.staffdaoimpl;

import model.Dwage;
import model.Gwage;
import model.Staff;
import service.dwageservice;

public class dwageserviceimpl implements dwageservice{

	
	dwagedao dd = new dwagedaoimpl();
	staffdao sd = new staffdaoimpl();
	public boolean upddwage(Dwage dwage) {
		// TODO Auto-generated method stub
		return dd.upddwage(dwage);
	}

	@Override
	public Map<String, Object> findbybumen(String department) {
		List<Staff> liststaff = sd.findbybumen(department);
		List<Dwage> listdwage = new ArrayList<Dwage>();
		for(int i = 0;i<liststaff.size();i++)
		{
			Dwage dwage = dd.findbystaffid(liststaff.get(i).staffid);
			if(dwage.getStaffid()!=null)
			listdwage.add(dwage);
		}
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("liststaff", liststaff);
		map.put("listdwage", listdwage);
		return map;
	}

	@Override
	public Dwage findbyid(String staffid) {
		// TODO Auto-generated method stub
		return dd.findbystaffid(staffid);
	}

}
