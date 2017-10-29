package es.fcg.principal;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import es.fcg.conexion.Conexion;
import es.fcg.modelo.Instalador;

/**
 * Servlet implementation class autentificacion
 */
// @WebServlet("/autentificacion")
public class Autentificacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Autentificacion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		
		System.out.println(request.getParameter("usuario"));
		System.out.println(request.getParameter("clave"));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		Session sesion = Conexion.getSessionFactory().openSession();
		List<Instalador> listaInstaladores = sesion.createQuery("from Instalador").list();
		try {
			Instalador instalador = listaInstaladores.stream()
				    .filter(i -> i.getN_Canet() == Integer.parseInt(request.getParameter("clave"))).findFirst().get();
			
			if(!instalador.getNombre().equals(request.getParameter("usuario")))throw new Exception();
			System.out.println("Nombre: " + instalador.getNombre());
			System.out.println("Clave: " + instalador.getN_Canet());
			
		}catch (Exception e) {
			System.out.println("No existe.");
		}
		
		sesion.close();
		
	}

}
