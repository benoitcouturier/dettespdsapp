package servlets.referentiels.client;

public class ClientActionForm extends org.apache.struts.action.ActionForm {

	private static final long serialVersionUID = 1L;
	
	private int ID;
	public int getID() {
		return ID;
	}
	
	private String name;
	public String getName() {
		return name;
	}	
}
