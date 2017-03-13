package dao;

import model.Gwage;

public interface gwagedao {
	public Gwage findbystaffid(String staffid);
	public boolean updgwage(Gwage gwage);
	public boolean addgwage(Gwage gwage);
	public boolean delgwage(String id);
}
