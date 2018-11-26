package servlets.referentiels.produitsVendus;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import Entites.referentiels.produitsVendus.*;
import getFromApi.referentiels.produitsVendus.*;;


public class FormulaireAction extends org.apache.struts.action.Action {

	
    private final static String SUCCESS = "success";

    public ActionForward execute(ActionMapping mapping,ActionForm form,
           HttpServletRequest request,HttpServletResponse response) throws Exception {
    	
    	Formulaire helloWorldForm = (Formulaire) form;
       System.out.println("Action Form"); 
       GetApiProduct objet = new GetApiProduct();
       Product[] p = objet.getP();
       helloWorldForm.setP(p);
       request.setAttribute("p", p);
       return mapping.findForward(SUCCESS);

    }
}
