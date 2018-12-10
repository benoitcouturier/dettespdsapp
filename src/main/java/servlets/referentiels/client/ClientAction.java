package servlets.referentiels.client;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import Entites.portail.gererSonCompteClient.Person;
import getFromApi.referentiels.client.GetClientApi;


public class ClientAction extends org.apache.struts.action.Action {

	private final static String SUCCESS = "success";

	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response) throws Exception {

		System.out.println("Action TestStruts");
		ClientActionForm clientForm = (ClientActionForm) form;
		GetClientApi objet = new GetClientApi();
		// recup
		//Person[] pers = objet.get();
		//request.setAttribute("pers", pers);
		
		if(request.getParameter("source")!=null){
			String var = clientForm.getName();
			System.out.println(var);
			request.setAttribute("var", var);
		}

		return mapping.findForward(SUCCESS);

	}
	
}
