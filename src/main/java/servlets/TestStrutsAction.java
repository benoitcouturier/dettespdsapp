package servlets;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.*;

import Entites.Personne;
import getFromApi.GetApi;

public class TestStrutsAction extends org.apache.struts.action.Action {


	    private final static String SUCCESS = "success";

	    public ActionForward execute(ActionMapping mapping,ActionForm form,
	           HttpServletRequest request,HttpServletResponse response) throws Exception {

	    	System.out.println("Action TestStruts");
	        TestStrutsActionForm helloWorldForm = (TestStrutsActionForm) form;
	        helloWorldForm.setMessage("Hello!");
	        
	        GetApi objet = new GetApi();
	        Personne[] p = objet.get();
	        helloWorldForm.setP(p);
	        request.setAttribute("p", p);
	        
	        return mapping.findForward(SUCCESS);

	    }
	
}
