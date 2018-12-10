package servlets.referentiels.produitsVendus;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import Entites.referentiels.produitsVendus.Product;
import getFromApi.referentiels.produitsVendus.GetApiProduct;

public class DetailProductAction extends org.apache.struts.action.Action{

	private final static String SUCCESS = "success";

	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response) throws Exception {

		System.out.println("Action TestStruts");
		DetailProductActionForm pform = (DetailProductActionForm) form;
		int i = 0;
		if (request.getParameter("pro")!=null){
			i = Integer.parseInt(request.getParameter("pro"));
		}

		GetApiProduct objet = new GetApiProduct();
		Product pro = objet.find(i);
		request.setAttribute("pro", pro);

		return mapping.findForward(SUCCESS);

	}
}
