package servlets;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;


public class FormulaireAction extends org.apache.struts.action.Action {

	
    private final static String SUCCESS = "success";

    public ActionForward execute(ActionMapping mapping,ActionForm form,
           HttpServletRequest request,HttpServletResponse response) throws Exception {

       System.out.println("Action Form"); 
        return mapping.findForward(SUCCESS);

    }
}
