package servlets.referentiels.tarifsLivraison;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.*;

import Entites.referentiels.tarifsLivraison.Withdrawal_method;
import getFromApi.referentiels.tarifsLivraison.GetApi;


public class TarifLivraisonAction extends org.apache.struts.action.Action {


	    private final static String SUCCESS = "success";

	    public ActionForward execute(ActionMapping mapping,ActionForm form,
	           HttpServletRequest request,HttpServletResponse response) throws Exception {

	    	System.out.println("Passage à l'onglet tarifs livraison");
	    	
	    	Formulaire formulaire = (Formulaire) form;
	        GetApi objet = new GetApi();
	        Withdrawal_method[] wms = objet.getWMs();
	        String [] wmNames = objet.getWMNames();
	        //formulaire.setWms(wms);
	        request.setAttribute("wms", wms);
	        
	        return mapping.findForward(SUCCESS);

	    }
	
}
