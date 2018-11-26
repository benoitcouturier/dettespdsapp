package servlets;

import Entites.Personne;

public class TestStrutsActionForm extends org.apache.struts.action.ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String message;
	private Personne[] p;
	

	public TestStrutsActionForm() {
		super();
	}

	
	public Personne[] getP() {
		return p;
	}


	public void setP(Personne[] p) {
		this.p = p;
	}


	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
