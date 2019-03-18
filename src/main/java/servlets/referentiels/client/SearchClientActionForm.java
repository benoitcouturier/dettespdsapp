package servlets.referentiels.client;

public class SearchClientActionForm extends org.apache.struts.action.ActionForm {


	private static final long serialVersionUID = 1L;
	private int ID;
	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}	
}
