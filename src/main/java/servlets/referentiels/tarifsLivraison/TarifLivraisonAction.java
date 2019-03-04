package servlets.referentiels.tarifsLivraison;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.*;

import Entites.referentiels.tarifsLivraison.Withdrawal_method;
import getFromApi.referentiels.tarifsLivraison.GetApiTarif;
import servlets.referentiels.tarifsLivraison.Formulaire;


public class TarifLivraisonAction extends org.apache.struts.action.Action {


	    private final static String SUCCESS = "success";

	    public ActionForward execute(ActionMapping mapping,ActionForm form,
	           HttpServletRequest request,HttpServletResponse response) throws Exception {

	    	System.out.println("Passage à l'onglet tarifs livraison");
	    	
	    	Formulaire formulaire = (Formulaire) form;
	        GetApiTarif objet = new GetApiTarif();
	        Withdrawal_method[] wms = objet.getWMs();
	        String [] wmNames = objet.getWMNames();
	        //Withdrawal_method[] wmsByName = objet.getWMByNames();
	        //formulaire.setWms(wms);
	        request.setAttribute("wms", wms);
	        request.setAttribute("wmNames", wmNames);
	       /* request.setAttribute("wmsByNames", wmsByName)*/
	        
	        return mapping.findForward(SUCCESS);

	    }
	
}
