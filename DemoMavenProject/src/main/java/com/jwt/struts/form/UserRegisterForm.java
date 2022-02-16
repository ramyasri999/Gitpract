package com.jwt.struts.form;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;  


public class UserRegisterForm extends ActionForm implements SessionAware
{

	private static final long serialVersionUID = 1L;
	private String Userid;
	private String userName;
	private String password;
	SessionMap sessionmap;  
	public ActionErrors validate(ActionMapping mapping,HttpServletRequest request) 
	{
		ActionErrors errors = new ActionErrors();
		if (Userid == null || Userid.length() < 1) 
		{
			errors.add("UserId", new ActionMessage("error.Userid.required"));

		}
		if (userName == null || userName.length() < 1)
		{
			errors.add("userName", new ActionMessage("error.userName.required"));

		}
		if (password == null || password.length() < 1) {
			errors.add("password", new ActionMessage("error.password.required"));

		}
		return errors;
	}
	
	
	public String getUserid()
	{
		return Userid;
	}

	public void setUserid(String userid) 
	{
		Userid = userid;
		
	}
	public String getUserName()
	{
		return userName;
	}
	public void setUserName(String userName) 
	{
		this.userName = userName;
	}

	public String getPassword() 
	{
		return password;
	}

	public void setPassword(String password) 
	{
		this.password = password;
	}
	public void setSession(Map map) 
	{  
	    sessionmap=(SessionMap)map;  
	    sessionmap.put("login","true");  
	}  
	  
	public String logout()
	{  
	    sessionmap.invalidate();  
	    return "success";  
	}  
}
