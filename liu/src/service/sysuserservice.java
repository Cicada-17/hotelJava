package service;

import model.Sysuser;

public interface sysuserservice {
	public  Sysuser findsysuserbynp(String name,String password);//��¼��֤
	public boolean updsysuser(Sysuser user);
}
