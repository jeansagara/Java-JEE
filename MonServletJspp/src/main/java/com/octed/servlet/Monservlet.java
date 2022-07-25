package com.octed.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import Classe.Utilisateur;

/**
 * Servlet implementation class Monservlet
 */
public class Monservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
    public Monservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getNamedDispatcher("WEB-INF/Inscrire.jsp").forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		String mdps = request.getParameter("mdps");
		String cmdps = request.getParameter("cmdps");
	
		HttpSession session=request.getSession();
        List<Utilisateur> liste=(List)session.getAttribute("liste");
        if(liste==null){
            liste=new ArrayList<Utilisateur>();
        }
        
        Utilisateur user=new Utilisateur(nom,prenom,email,mdps,mdps);
        
        liste.add(user);
        session.setAttribute("liste", liste);
	
	
	
	
        request.getRequestDispatcher("/Accueil.jsp").forward(request, response);
	
	
	}

}
