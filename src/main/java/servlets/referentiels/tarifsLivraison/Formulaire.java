package servlets.referentiels.tarifsLivraison;

import Entites.Personne;
import Entites.referentiels.tarifsLivraison.Withdrawal_price;

public class Formulaire extends org.apache.struts.action.ActionForm {

	private static final long serialVersionUID = 1L;
	
	private String message;
	private Personne[] p;
	private String idCommande;
	private Withdrawal_price[] wps;
	

	public Formulaire() {
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


	public String getIdCommande() {
		return idCommande;
	}


	public void setIdCommande(String idCommande) {
		this.idCommande = idCommande;
	}


	public Withdrawal_price[] getWps() {
		return wps;
	}


	public void setWps(Withdrawal_price[] wps) {
		this.wps = wps;
	}

}
