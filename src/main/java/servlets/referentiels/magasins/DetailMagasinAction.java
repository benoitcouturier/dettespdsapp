package servlets.referentiels.magasins;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import Entites.referentiels.magasins.Magasin;
import getFromApi.referentiels.magasins.GetMagasinApi;

public class DetailMagasinAction extends org.apache.struts.action.Action{

	private final static String SUCCESS = "success";

	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response) throws Exception {

		System.out.println("Action TestStruts");
		DetailMagasinActionForm magasinForm = (DetailMagasinActionForm) form;
		int magasin = 0;
		if (request.getParameter("mag")!=null){
			magasin = Integer.parseInt(request.getParameter("mag"));
		}

		GetMagasinApi objet = new GetMagasinApi();
		Magasin mag = objet.find(magasin);
		request.setAttribute("mag", mag);

		return mapping.findForward(SUCCESS);

	}
}
