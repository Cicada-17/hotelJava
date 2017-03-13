package service;

import java.util.Map;

import model.Dwage;

public interface dwageservice {
	public boolean upddwage(Dwage dwage);
	public Map<String,Object> findbybumen(String department);
	public Dwage findbyid(String staffid);
}
