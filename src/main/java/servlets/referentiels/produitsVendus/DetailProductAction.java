package servlets.referentiels.produitsVendus;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import Entites.referentiels.produitsVendus.Product;
import getFromApi.referentiels.produitsVendus.GetApiProduct;
import Entites.referentiels.magasins.Magasin;
import getFromApi.referentiels.magasins.GetMagasinApi;

public class DetailProductAction extends org.apache.struts.action.Action{

	private final static String SUCCESS = "success";

	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response) throws Exception {

		System.out.println("Action TestStruts");
		DetailProductActionForm pform = (DetailProductActionForm) form;
		int i = 0;
		if (request.getParameter("prod")!=null){
			i = Integer.parseInt(request.getParameter("prod"));
		}
		
		System.out.println(request.getParameter("prod"));
		
		request.setAttribute("pid", request.getParameter("prod"));
		
		GetApiProduct pAPI = new GetApiProduct();
		Product p = pAPI.find(i);
		GetMagasinApi mAPI = new GetMagasinApi();
		Magasin m = mAPI.find(i);
		request.setAttribute("id", request.getParameter("prod"));
		request.setAttribute("idEmplacement", request.getParameter("prod"));
		return mapping.findForward(SUCCESS);

	}
}
