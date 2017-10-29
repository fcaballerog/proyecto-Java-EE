package es.fcg.multimedia;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public final class ClaseES {

	public static byte[] obtenerBytes(InputStream entrada) throws IOException {
		byte[] buffer = new byte[8192];
		int leerBytes;
		ByteArrayOutputStream salida = new ByteArrayOutputStream();
		while ((leerBytes = entrada.read(buffer)) != -1) {
			salida.write(buffer, 0, leerBytes);
		}
		return salida.toByteArray();
	}

}
