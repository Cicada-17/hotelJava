package action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import service.sysuserservice;
import serviceimpl.sysuserserviceimpl;

import com.opensymphony.xwork2.ActionSupport;

import model.Sysuser;

public class sysuseraction extends ActionSupport implements SessionAware ,ServletRequestAware{
	/**
	 * 
	 */
	private Map<String,Object> session;
	sysuserservice su = new sysuserserviceimpl();
	private HttpServletRequest request;
	private static final long serialVersionUID = 1L;
	private String result;
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMsg() {
		return msg;
	}
	public String updpass()
	{
		try {
			String name = request.getParameter("username");
			String pass = request.getParameter("password");
			Sysuser user = new Sysuser();
			user.setPassword(pass);
			user.setUsername(name);
			su.updsysuser(user);
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return "ok";
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String username ;
	public String password ;
	public String msg = " ß∞‹£∫ ‰»Î¥ÌŒÛ";
	
	public String execute()
	{
		
			if(username.equals("")||username==null||password.equals("")||password==null)
			{
				msg=" ß∞‹£∫≤ªƒ‹Œ™ø’";
				return "login";
			}
			
			else if(su.findsysuserbynp(username, password).username==null)
			{
				
				msg=" ß∞‹£∫”√ªß√‹¬Î¥ÌŒÛ";
				return "login";
			}
			
			else
			{
				Sysuser sysuser = su.findsysuserbynp(username, password);
				
				session.put("sysuser", sysuser);
				return "index";
			}
		
		
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		session = arg0;
		
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request=arg0;
		
	}
}
