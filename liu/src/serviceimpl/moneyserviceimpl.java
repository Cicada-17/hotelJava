package serviceimpl;

import dao.dwagedao;
import dao.moneydao;
import dao.impl.dwagedaoimpl;
import dao.impl.moneydaoimpl;
import model.Dwage;
import model.Money;
import service.moneyservice;

public class moneyserviceimpl implements moneyservice{

	moneydao md = new moneydaoimpl();
	dwagedao dd = new dwagedaoimpl();
	public Money findbynameym(Money m) {
		// TODO Auto-generated method stub
		return md.findbynameym(m);
	}
	@Override
	public boolean addmoney(Money m) {
		boolean a = md.addmoney(m);
		Dwage dwage = new Dwage();
		dwage.setStaffid(m.getStaffid());
		dwage.setBingjia("0");
		dwage.setChidao("0");
		dwage.setShijia("0");
		dd.upddwage(dwage);
		return a;
	}

}
