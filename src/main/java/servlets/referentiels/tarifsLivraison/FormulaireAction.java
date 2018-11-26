package servlets.referentiels.tarifsLivraison;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import Entites.referentiels.tarifsLivraison.Withdrawal_price;
import getFromApi.referentiels.tarifsLivraison.GetApi;


public class FormulaireAction extends org.apache.struts.action.Action {

	
    private final static String SUCCESS = "success";

    public ActionForward execute(ActionMapping mapping,ActionForm form,
           HttpServletRequest request,HttpServletResponse response) throws Exception {
    	
       Formulaire helloWorldForm = (Formulaire) form;
       System.out.println("Action Form"); 
       GetApi objet = new GetApi();
       Withdrawal_price[] wps = objet.getWPs();
       helloWorldForm.setWps(wps);
       request.setAttribute("wps", wps);
       return mapping.findForward(SUCCESS);

    }
}
