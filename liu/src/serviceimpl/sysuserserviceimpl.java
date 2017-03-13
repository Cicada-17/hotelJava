package serviceimpl;

import dao.sysuserdao;
import dao.impl.sysuserdaoimpl;
import model.Sysuser;
import service.sysuserservice;

public class sysuserserviceimpl implements sysuserservice{
	sysuserdao sd = new sysuserdaoimpl();
	@Override
	public Sysuser findsysuserbynp(String name, String password) {
		// TODO Auto-generated method stub
		return sd.findsysuserbynp(name, password);
	}
	@Override
	public boolean updsysuser(Sysuser user) {
		// TODO Auto-generated method stub
		return sd.upd(user);
	}

}
