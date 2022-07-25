package Classe;

public class Utilisateur {
	private String nom;
	private String prenom;
	private String email;
	private String mdps;
	private String cmdps;
	public Utilisateur(String nom2, String prenom2, String email2, String mdps2, String mdps3) {
		// TODO Auto-generated constructor stub
		
		this.nom=nom2;
		this.prenom=prenom2;
		this.email=email2;
		this.mdps=mdps2;
		this.cmdps=mdps3;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMdps() {
		return mdps;
	}
	public void setMdps(String mdps) {
		this.mdps = mdps;
	}
	public String getCmdps() {
		return cmdps;
	}
	public void setCmdps(String cmdps) {
		this.cmdps = cmdps;
	}
}
