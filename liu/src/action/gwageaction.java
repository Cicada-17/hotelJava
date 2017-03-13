package action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import model.Gwage;
import model.Staff;
import net.sf.json.JSONObject;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import service.gwageservice;
import service.staffservice;
import serviceimpl.gwageserviceimpl;
import serviceimpl.staffserviceimpl;

public class gwageaction extends ActionSupport implements ServletRequestAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public gwageservice gs = new gwageserviceimpl();
	public staffservice ss = new staffserviceimpl();
	private String result;
	private HttpServletRequest request;
	public String updgwage()
	{
		try {
			Gwage gwage = new Gwage();
			gwage.setCainuan(request.getParameter("cainuan").toString());
			gwage.setJiben(request.getParameter("jiben").toString());
			gwage.setStaffid(request.getParameter("staffid").toString());
			gs.updgwage(gwage);
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return "ok";
	}
	public String findbyid()
	{
		try {
			String staffid = request.getParameter("staffid");
			Staff staff = ss.findbyid(staffid);
			Gwage gwage = gs.findbystaffid(staffid);
			Map<String,Object> map= new HashMap<String,Object>();
			map.put("staff", staff);
			map.put("gwage", gwage);
			JSONObject json = JSONObject.fromObject(map);
			result = json.toString();
			} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return "ok";
	}
	public String money2()
	{
		try {
			
			String asd = request.getParameter("department");
			System.out.print(asd+"asd");
			Map<String ,Object> map =gs.findbybumen(asd);
			
			JSONObject json = JSONObject.fromObject(map);
			result = json.toString();
			System.out.print(result);
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return "money2";
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request=arg0;
		
	}
}
