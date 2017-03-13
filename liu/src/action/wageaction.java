package action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import com.opensymphony.xwork2.ActionSupport;

import service.wageservice;
import serviceimpl.wageserviceimpl;
import model.Wage;

public class wageaction extends ActionSupport{
	/**
	 * 
	 */
	private String liu ;
	public String getLiu() {
		return liu;
	}
	public void setLiu(String liu) {
		this.liu = liu;
	}
	private static final long serialVersionUID = 1L;
	public wageservice ws = new wageserviceimpl();
	
	public wageservice getWs() {
		return ws;
	}
	public void setWs(wageservice ws) {
		this.ws = ws;
	}
	public List<Wage> getListwage() {
		return listwage;
	}
	public void setListwage(List<Wage> listwage) {
		this.listwage = listwage;
	}
	public List<Wage> listwage = new ArrayList<Wage>();
	public String sel()
	{
		listwage=ws.selwage();
		return "asd";
	}
	public String selg()
	{
		try {
			listwage = ws.selguding();
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("gwage", listwage);
			JSONObject json =  JSONObject.fromObject(map);
			liu = json.toString();
		} catch (Exception e) {
		e.printStackTrace();
		}
		return "g";
	}
	
}
