package serviceimpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dao.gwagedao;
import dao.staffdao;
import dao.impl.gwagedaoimpl;
import dao.impl.staffdaoimpl;
import model.Gwage;
import model.Staff;
import service.gwageservice;

public class gwageserviceimpl implements gwageservice{

	
	gwagedao gd = new gwagedaoimpl();
	staffdao sd = new staffdaoimpl();
	public Gwage findbystaffid(String staffid) {
		// TODO Auto-generated method stub
		return gd.findbystaffid(staffid);
	}
	@Override
	public Map<String,Object> findbybumen(String department) {
		List<Staff> liststaff = sd.findbybumen(department);
		List<Gwage> listgwage = new ArrayList<Gwage>();
		for(int i = 0;i<liststaff.size();i++)
		{
			Gwage gwage = gd.findbystaffid(liststaff.get(i).staffid);
			if(gwage.getStaffid()!=null)
			listgwage.add(gwage);
		}
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("liststaff", liststaff);
		map.put("listgwage", listgwage);
		return map;
	}
	@Override
	public boolean updgwage(Gwage gwage) {
		// TODO Auto-generated method stub
		return gd.updgwage(gwage);
	}

}
