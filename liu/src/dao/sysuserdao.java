package dao;

import model.Sysuser;

public interface sysuserdao {
	public  Sysuser findsysuserbynp(String name,String password);//�����û�������������û�
	public boolean adduser(Sysuser user);
	public boolean upd(Sysuser user);
}
