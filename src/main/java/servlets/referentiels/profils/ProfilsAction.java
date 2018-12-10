package servlets.referentiels.profils;
import getFromApi.referentiels.profils.GetApiProfils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProfilsAction extends org.apache.struts.action.Action {

    private final static String SUCCESS = "success";

    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) throws Exception {

        System.out.println("Action TestStruts");
        ProfilsActionForm profilsForm = (ProfilsActionForm) form;
        GetApiProfils objet = new GetApiProfils();

        if (request.getParameter("source") != null) {
            String name = profilsForm.getName();
            System.out.println(name);
            request.setAttribute("name", name);
        }

        return mapping.findForward(SUCCESS);

    }
}