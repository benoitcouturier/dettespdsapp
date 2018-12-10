package servlets.referentiels.profils;

public class ProfilsActionForm extends org.apache.struts.action.ActionForm {

    private static final long serialVersionUID = 1L;
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}

