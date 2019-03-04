package servlets.referentiels.administrateur;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.*;


public class administrateurAction extends org.apache.struts.action.Action {


	    private final static String SUCCESS = "success";

	    public ActionForward execute(ActionMapping mapping,ActionForm form,
	           HttpServletRequest request,HttpServletResponse response) throws Exception {

	    	System.out.println("Passage à l'onglet administrateur");
	    	
	        
	        return mapping.findForward(SUCCESS);

	    }
	
}
