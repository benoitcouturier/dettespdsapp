package servlets.referentiels.tarifsLivraison;

import Entites.referentiels.tarifsLivraison.Withdrawal_method;

public class Formulaire extends org.apache.struts.action.ActionForm {

	private static final long serialVersionUID = 1L;
	
	private String message;
	private Withdrawal_method wm;
	private Withdrawal_method[] wms;
	private String[] wmNames;
	

	public Formulaire() {
		super();
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Withdrawal_method getWm() {
		return wm;
	}


	public void setWm(Withdrawal_method wm) {
		this.wm = wm;
	}


	public Withdrawal_method[] getWms() {
		return wms;
	}


	public void setWms(Withdrawal_method[] wms) {
		this.wms = wms;
	}

	public String[] getWmNames() {
		return wmNames;
	}

	public void setWmNames(String[] wmNames) {
		this.wmNames = wmNames;
	}

}
