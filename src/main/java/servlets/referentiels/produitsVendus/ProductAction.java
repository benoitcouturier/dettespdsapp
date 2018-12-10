package servlets.referentiels.produitsVendus;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;


import Entites.referentiels.produitsVendus.Product;
import getFromApi.referentiels.produitsVendus.GetApiProduct;

public class ProductAction extends org.apache.struts.action.Action{

    private final static String SUCCESS = "success";

    public ActionForward execute(ActionMapping mapping,ActionForm form,
           HttpServletRequest request,HttpServletResponse response) throws Exception {

    	System.out.println("Action TestStruts");
        ProductActionForm proForm = (ProductActionForm) form;
        
        
        GetApiProduct objet = new GetApiProduct();
        Product[] p = objet.get();
        request.setAttribute("pro", p);
        
        return mapping.findForward(SUCCESS);

    }
}
