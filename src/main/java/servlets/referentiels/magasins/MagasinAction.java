package servlets.referentiels.magasins;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import Entites.Personne;
import Entites.referentiels.magasins.Magasin;
import getFromApi.GetApi;
import getFromApi.referentiels.magasins.GetMagasinApi;
import servlets.TestStrutsActionForm;

public class MagasinAction extends org.apache.struts.action.Action{

    private final static String SUCCESS = "success";

    public ActionForward execute(ActionMapping mapping,ActionForm form,
           HttpServletRequest request,HttpServletResponse response) throws Exception {

    	System.out.println("Action TestStruts");
        MagasinActionForm magasinForm = (MagasinActionForm) form;
        
        
        GetMagasinApi objet = new GetMagasinApi();
        Magasin[] mag = objet.get();
        request.setAttribute("mag", mag);
        
        return mapping.findForward(SUCCESS);

    }
}
