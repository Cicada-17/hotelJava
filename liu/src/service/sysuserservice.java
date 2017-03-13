package service;

import model.Sysuser;

public interface sysuserservice {
	public  Sysuser findsysuserbynp(String name,String password);//µÇÂ¼ÑéÖ¤
	public boolean updsysuser(Sysuser user);
}
