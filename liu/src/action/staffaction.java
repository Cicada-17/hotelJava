package action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import net.sf.json.JSONObject;

import org.apache.struts2.interceptor.ServletRequestAware;

import service.staffservice;
import serviceimpl.staffserviceimpl;

import com.opensymphony.xwork2.ActionSupport;

import model.Staff;

public class staffaction extends ActionSupport implements ServletRequestAware{

		/**
	 * 
	 */
	public staffservice ss = new staffserviceimpl();
	private static final long serialVersionUID = 1L;
		public List<Staff> liststaff = new ArrayList<Staff>();
	
		private HttpServletRequest request;
	    private String result;
		public void setServletRequest(HttpServletRequest arg0) {
			this.request=arg0;
			
		}
		public String findbyid()
		{
			try {
				String staffid = request.getParameter("staffid");
				Staff staff = ss.findbyid(staffid);
				
				JSONObject json = JSONObject.fromObject(staff);
				result = json.toString();
			} catch (Exception e) {
				e.printStackTrace();// TODO: handle exception
			}
			return "ok";
		}
		public String add()
		{
			try {
				Staff staff = new Staff();
				System.out.print("asda");
				Staff asqw= ss.findbyname(request.getParameter("staffname").toString());
				
				if(asqw.getStaffname()!=null)
					{
					Map<String,String> map = new HashMap<String,String>();
					map.put("asd", "13");
					JSONObject json = JSONObject.fromObject(map);
					result = json.toString();
					}
				else if(request.getParameter("staffname").toString()=="")
				{
					Map<String,String> map = new HashMap<String,String>();
					map.put("asd", "14");
					JSONObject json = JSONObject.fromObject(map);
					result = json.toString();
				}
				else {
				staff.setStaffname(request.getParameter("staffname"));
				staff.setDepartment(request.getParameter("department"));
				staff.setPosition(request.getParameter("position"));
				System.out.println(request.getParameter("staffname")+"aqwe");
				ss.addstaff(staff);
				System.out.print(request.getParameter("staffname"));
				Map<String,String> map = new HashMap<String,String>();
				map.put("asd", "12");
				JSONObject json = JSONObject.fromObject(map);
				result = json.toString();
				
				}
			} catch (Exception e) {
				e.printStackTrace();// TODO: handle exception
			}
			System.out.println(result);
			return "add";
		}
		public String user()
		{
			try {
				String department = request.getParameter("bumen");
				String position = request.getParameter("zhiwu");
				System.out.println(department+"  "+position);
				List<Staff> list = ss.findbybz(department, position);
				Map<String,Object> map = new HashMap<String,Object>();
				map.put("liststaff", list);
				JSONObject json = JSONObject.fromObject(map);
				result=json.toString();
			} catch (Exception e) {
				e.printStackTrace();// TODO: handle exception
			}
			return "cg";
		}
		public String delstaffbyid()
		{
			try {
				String staffid = request.getParameter("staffid");
				ss.delstaffbyid(staffid);
			} catch (Exception e) {
				e.printStackTrace();// TODO: handle exception
			}
			return "ok";
		}
		public String updstaff()
		{
			try {
				Staff staff = new Staff();
				staff.setDepartment(request.getParameter("department").toString());
				staff.setPosition(request.getParameter("position").toString());
				staff.setStaffid(request.getParameter("staffid").toString());
				staff.setStaffname(request.getParameter("staffname").toString());
				ss.updstaff(staff);
			} catch (Exception e) {
				e.printStackTrace();// TODO: handle exception
			}
			return "ok";
		}
		public String departmentajax()
		{
			try{
				String department = request.getParameter("department");
				System.out.print(department);
				liststaff = ss.findbybumen(department);
				System.out.print("as");
				Map<String,Object> map = new HashMap<String,Object>();
				System.out.print("sd");
				map.put("liststaff", liststaff);
				System.out.print("qweqwe");
				JSONObject json = JSONObject.fromObject(map);
				System.out.print("akjkljlk");
				result = json.toString();
				System.out.println(department+"asdasd"+result);
			}catch(Exception e)
			{
				e.printStackTrace();				
			}
			return SUCCESS;
			
		
		}
		
		public List<Staff> getListstaff() {
			return liststaff;
		}
		public void setListstaff(List<Staff> liststaff) {
			this.liststaff = liststaff;
		}
		public String getResult() {
			return result;
		}
		public void setResult(String result) {
			this.result = result;
		}
		
		
}
