package service;

import java.util.List;
import java.util.Map;

import model.Gwage;

public interface gwageservice {
	public Gwage findbystaffid(String staffid);
	public Map<String,Object> findbybumen(String department);
	public boolean updgwage(Gwage gwage);
}
