package es.fcg.multimedia;

import java.io.BufferedOutputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class multimedia
 */
// @WebServlet("/multimedia")
public class multimedia extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public multimedia() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		if (request.getRequestURI().contains("/img/")) {
			cargarImagen(request, response);
		}

		if (request.getRequestURI().contains("/css/") && !request.getRequestURI().endsWith(".map")) {
			cargarCss(request, response);
		}

		if (request.getRequestURI().contains("/js/") && !request.getRequestURI().endsWith(".map")) {
			cargarJs(request, response);
		}

	}

	private void cargarImagen(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		ServletOutputStream streamImagen = response.getOutputStream();
		String nombreFichero = request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/"),
				request.getRequestURI().length());

		response.setContentType("image/png");
		byte[] img = ClaseES.obtenerBytes(getServletContext().getResourceAsStream("/img" + nombreFichero));

		try (BufferedOutputStream bufferSalidaImagen = new BufferedOutputStream(streamImagen)) {
			bufferSalidaImagen.write(img, 0, img.length);
		}
		streamImagen.close();
	}
	
	private void cargarCss(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ServletOutputStream streamCss = response.getOutputStream();
		String nombreFichero = request.getRequestURI().substring(
				request.getRequestURI().lastIndexOf("/"), request.getRequestURI().length());
		response.setContentType("text/css");
		byte[] bytesCss = ClaseES.obtenerBytes(getServletContext().getResourceAsStream("/css" + nombreFichero));
	    try(BufferedOutputStream bufferSalidaCss = new BufferedOutputStream(streamCss)){
	    	bufferSalidaCss.write(bytesCss, 0, bytesCss.length);
	    }
	    streamCss.close();
	}
	
	private void cargarJs(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ServletOutputStream outJs = response.getOutputStream();
		String nombreArchivo = request.getRequestURI().substring(
				request.getRequestURI().lastIndexOf("/"), request.getRequestURI().length());
		response.setContentType("text/javascript");
		byte[] bytesJs = ClaseES.obtenerBytes(getServletContext().getResourceAsStream("/js" + nombreArchivo));
		try(BufferedOutputStream bufferSalidaJs = new BufferedOutputStream(outJs)){
			bufferSalidaJs.write(bytesJs, 0, bytesJs.length);
		}
	    outJs.close();
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
