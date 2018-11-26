package servlets.referentiels.produitsVendus;

import Entites.referentiels.produitsVendus.*;


public class Formulaire extends org.apache.struts.action.ActionForm {

	private static final long serialVersionUID = 1L;
	
	private String message;
	private Product[] p;
	

	public Formulaire() {
		super();
	}

	
	public Product[] getP() {
		return p;
	}


	public void setP(Product[] p) {
		this.p = p;
	}


	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}



}
