package servlets.referentiels.client;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import Entites.portail.gererSonCompteClient.Customer;
import getFromApi.referentiels.client.GetClientApi;


// import Entites.portail.gererSonCompteClient.Person;


public class SearchClientAction extends org.apache.struts.action.Action{

    private final static String SUCCESS = "success";

    public ActionForward execute(ActionMapping mapping,ActionForm form,
           HttpServletRequest request,HttpServletResponse response) throws Exception {

    	System.out.println("Action TestStruts");
        SearchClientActionForm s_clientForm = (SearchClientActionForm) form;
        
        return mapping.findForward(SUCCESS);

    }
}
