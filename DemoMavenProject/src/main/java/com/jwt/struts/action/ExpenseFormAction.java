package com.jwt.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.jwt.struts.dao.ExpenseFormDao;
import com.jwt.struts.form.ExpenseForm;

public class ExpenseFormAction extends Action 
{
	public ActionForward execute(ActionMapping mapping, ActionForm form,HttpServletRequest request, HttpServletResponse response)throws Exception 
	{
		HttpSession ses = request.getSession(true);

		ExpenseForm expenseForm = (ExpenseForm)form;
		String EXP_ID = expenseForm.getEXP_ID();
		String USER_ID = expenseForm.getUSER_ID();
		String EXP_RECORD_DATE = expenseForm.getEXP_RECORD_DATE();
		String EXP_DATE = expenseForm.getEXP_DATE();
		String EXP_CATEGORY_ID = expenseForm.getEXP_CATEGORY_ID();
		String EXP_DESC = expenseForm.getEXP_DESC();
		String COST = expenseForm.getCOST();
		
			
		ExpenseFormDao dao = new ExpenseFormDao();
		dao.insertData( EXP_ID , USER_ID, EXP_RECORD_DATE, EXP_DATE, EXP_CATEGORY_ID, EXP_DESC,COST);
		ses.setAttribute("EXP_ID", EXP_ID);
		ses.setAttribute("USER_ID", USER_ID);
		ses.setAttribute("EXP_RECORD_DATE", EXP_RECORD_DATE);
		ses.setAttribute("EXP_DATE", EXP_DATE);
		ses.setAttribute("EXP_CATEGORY_ID", EXP_CATEGORY_ID);
		ses.setAttribute("EXP_DESC", EXP_DESC);
		ses.setAttribute("COST", COST);
		
		if (EXP_ID.equals("") || USER_ID.equals("") || EXP_RECORD_DATE.equals("")|| EXP_DATE.equals("") || EXP_CATEGORY_ID.equals("") || EXP_DESC.equals("") || COST.equals(""))
		{
			return mapping.findForward("error");
		}
		return mapping.findForward("success");

	}

}
