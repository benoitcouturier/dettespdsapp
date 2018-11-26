package servlets.referentiels.produitsVendus;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.*;

public class ActionServlet extends org.apache.struts.action.Action {


	    private final static String SUCCESS = "success";

	    public ActionForward execute(ActionMapping mapping,ActionForm form,
	           HttpServletRequest request,HttpServletResponse response) throws Exception {

	    	System.out.println("Action TestStruts");
	        Formulaire helloWorldForm = (Formulaire) form;
	        helloWorldForm.setMessage("Hello!");
	        
	        
	        return mapping.findForward(SUCCESS);

	    }
	
}
