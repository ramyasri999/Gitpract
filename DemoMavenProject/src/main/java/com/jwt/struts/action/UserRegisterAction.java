package com.jwt.struts.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.jwt.struts.dao.UserRegisterDAO;
import com.jwt.struts.form.UserRegisterForm;

public class UserRegisterAction extends Action 
{
	public ActionForward execute(ActionMapping mapping, ActionForm form,HttpServletRequest request, HttpServletResponse response)throws Exception 
	{
		HttpSession ses = request.getSession(true);

		UserRegisterForm registerForm = (UserRegisterForm) form;
		String Userid = registerForm.getUserid();
		String userName = registerForm.getUserName();
		String password = registerForm.getPassword();
		UserRegisterDAO dao = new UserRegisterDAO();
		dao.insertData(Userid, userName, password);
		ses.setAttribute("Userid", Userid);
		ses.setAttribute("userName", userName);
		ses.setAttribute("password",password);
		String temp_user = null;
		try
		{
	            Class.forName("oracle.jdbc.driver.OracleDriver");
	            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "system", "oracle");
	            Statement st12 = con.createStatement();
	            ResultSet rs12 = st12.executeQuery("select userid from users");
	            while (rs12.next())
	            {

	                temp_user = rs12.getString(Userid); 
	                //System.out.println(temp_user);
	                if(temp_user.equals(Userid))
	               
	                {
	           
	        			//System.out.println("error for if block");
	                	return mapping.findForward("error");
	                }
	               // System.out.println(Userid);
	              // request.getRequestDispatcher("/success.jsp").forward(request, response);
	                return mapping.findForward("success");
	               
	               
	            }
	           st12.close();
        } 
		catch (Exception e)
		{
            e.printStackTrace();
        }
//		if(!Userid.equals(temp_user))
//        {
//			return mapping.findForward("success");
//        }
		return mapping.findForward("welcome");
		
	}
	
}
