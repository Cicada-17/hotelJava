package action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import model.Money;
import model.Staff;
import net.sf.json.JSONObject;

import org.apache.struts2.interceptor.ServletRequestAware;

import service.moneyservice;
import service.staffservice;
import serviceimpl.moneyserviceimpl;
import serviceimpl.staffserviceimpl;

import com.opensymphony.xwork2.ActionSupport;

public class moneyaction extends ActionSupport implements ServletRequestAware{



	public String getLiu() {
		return liu;
	}

	public void setLiu(String liu) {
		this.liu = liu;
	}

	/**
	 * 
	 */
	private HttpServletRequest request;
	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	private String liu;
	private static final long serialVersionUID = 1L;
	moneyservice ms = new moneyserviceimpl();
	staffservice ss = new staffserviceimpl();
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		request = arg0;
	}
	public String findmbymnd()
	{
		try {
			String department = request.getParameter("department");
			String year = request.getParameter("year");
			String month = request.getParameter("month");
			List<Staff> liststaff = ss.findbybumen(department);
			List<Money> listmoney   = new ArrayList<Money>();
			for(int i =  0 ;i<liststaff.size();i++)
			{
				Money money = new Money();
				money.setStaffname(liststaff.get(i).staffname);
				money.setYear(year);
				money.setMonth(month);
				if(ms.findbynameym(money).staffname!=null)
				listmoney.add(ms.findbynameym(money));
				
			}
			Map<String,Object> map = new HashMap<String,Object>();
			
			map.put("listmoney", listmoney);
			JSONObject json = JSONObject.fromObject(map);
			liu = json.toString();
			if(listmoney.size()==0)liu="13";
			System.out.println(liu);
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return "ok";
	}
	public String fagongzi()
	{
		try {
			String department = request.getParameter("department");
			String year = request.getParameter("year");
			String month = request.getParameter("month");
			List<Staff> liststaff = ss.findbybumen(department);
			for(int i =  0 ;i<liststaff.size();i++)
			{
				Money money = new Money();
				money.setStaffid(liststaff.get(i).getStaffid());
				money.setYear(year);
				money.setMonth(month);
				ms.addmoney(money);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return "ok";
	}
	public String acc()
	{
		try {
			
			String staffname=request.getParameter("staffname");
			String year = request.getParameter("year");
			String month = request.getParameter("month");
			System.out.println(staffname+"  "+year+"  "+month);
			Money money = new Money();
			money.setStaffname(staffname);
			money.setYear(year);
			money.setMonth(month);
			Money asd = ms.findbynameym(money);
			
			JSONObject json = JSONObject.fromObject(asd);
			liu = json.toString();
			System.out.print(liu);
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return "qw";
		
	}
	public String jing()
	{
		try {
			String year = request.getParameter("year");
			String month = request.getParameter("month");
			
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return "asd";
	}
	
}
