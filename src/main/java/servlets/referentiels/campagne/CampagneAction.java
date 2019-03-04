package servlets.referentiels.campagne;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.*;


public class CampagneAction extends org.apache.struts.action.Action {


	    private final static String SUCCESS = "success";

	    public ActionForward execute(ActionMapping mapping,ActionForm form,
	           HttpServletRequest request,HttpServletResponse response) throws Exception {

	    	System.out.println("Passage à l'onglet évènementiel");
	    	
	        
	        return mapping.findForward(SUCCESS);

	    }
	
}
