package dao;

import model.Dwage;

public interface dwagedao {
	public Dwage findbystaffid(String staffid);
	public boolean adddwage(Dwage dwage);
	public boolean upddwage(Dwage dwage);
	public boolean deldwagebyid(String id);

}
