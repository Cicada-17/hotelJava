package action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import model.Dwage;
import model.Gwage;
import model.Staff;
import net.sf.json.JSONObject;

import org.apache.struts2.interceptor.ServletRequestAware;

import service.dwageservice;
import service.staffservice;
import serviceimpl.dwageserviceimpl;
import serviceimpl.staffserviceimpl;

import com.opensymphony.xwork2.ActionSupport;

public class dwageaction extends ActionSupport implements ServletRequestAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private HttpServletRequest request;
	private String result;
	
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
		
	}
	
	staffservice ss = new staffserviceimpl();
	dwageservice ds = new dwageserviceimpl();
	public String findbyid()
	{

		try {
			String staffid = request.getParameter("staffid");
			Staff staff = ss.findbyid(staffid);
			Dwage dwage = ds.findbyid(staffid); 
			Map<String,Object> map= new HashMap<String,Object>();
			map.put("staff", staff);
			map.put("dwage", dwage);
			JSONObject json = JSONObject.fromObject(map);
			result = json.toString();
			} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return "ok";
	}
	public String upddwage()
	{
		try {
			Dwage dwage = new Dwage();
			dwage.setBingjia(request.getParameter("bingjia").toString());
			dwage.setChidao(request.getParameter("chidao").toString());
			dwage.setShijia(request.getParameter("shijia").toString());
			dwage.setStaffid(request.getParameter("staffid").toString());
			System.out.println(dwage.getChidao()+" "+dwage.getShijia());
			
			ds.upddwage(dwage);
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return "ok";
	}
	public String begin()
	{
		try {
			dwageservice ds = new dwageserviceimpl();
			String asd = request.getParameter("department");
			System.out.print(asd+"asd");
			Map<String ,Object> map =ds.findbybumen(asd);
			
			JSONObject json = JSONObject.fromObject(map);
			result = json.toString();
			System.out.print(result);
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return "ok";
	}

}
