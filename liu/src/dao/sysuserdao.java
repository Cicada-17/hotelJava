package dao;

import model.Sysuser;

public interface sysuserdao {
	public  Sysuser findsysuserbynp(String name,String password);//根据用户名与密码查找用户
	public boolean adduser(Sysuser user);
	public boolean upd(Sysuser user);
}
