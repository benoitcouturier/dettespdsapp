package servlets.referentiels.campagne;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.*;

import Entites.referentiels.campagne.Campaign;
import Entites.referentiels.magasins.Magasin;
import Entites.referentiels.produitsVendus.Product;
import getFromApi.referentiels.campagne.GetCampagneApi;
import getFromApi.referentiels.magasins.GetMagasinApi;
import getFromApi.referentiels.produitsVendus.GetApiProduct;


public class CampagneAction extends org.apache.struts.action.Action {


	    private final static String SUCCESS = "success";

	    public ActionForward execute(ActionMapping mapping,ActionForm form,
	           HttpServletRequest request,HttpServletResponse response) throws Exception {

	    	System.out.println("Passage à l'onglet évènementiel");
	    	
	    	GetMagasinApi magasinApi = new GetMagasinApi();
	        Magasin[] magasin = magasinApi.get();
	        request.setAttribute("magasin", magasin);
	        
	        GetApiProduct objet = new GetApiProduct();
	        Product[] produit = objet.get();
	        request.setAttribute("produit", produit);
	        
	        GetCampagneApi campagneApi = new GetCampagneApi();
	        Campaign[] campagne = campagneApi.get();
	        request.setAttribute("campagne", campagne);
	        
	        return mapping.findForward(SUCCESS);

	    }
	
}
