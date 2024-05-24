package servlets;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mundo.GestionarJugadores;
import mundo.Jugador;

@WebServlet(name = "EliminarJugador", urlPatterns = {"/EliminarJugador"})
public class EliminarJugador extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext context = getServletContext();
        String nombreJugador = request.getParameter("nombreJugador");

        // Obtener la lista actual de jugadores del archivo
        ArrayList<Jugador> jugadores = GestionarJugadores.leerJugadoresDesdeArchivo(context);

        // Buscar el jugador por nombre
        Jugador jugadorAEliminar = null;
        for (Jugador jugador : jugadores) {
            if (jugador.getNombreJugador().equals(nombreJugador)) {
                jugadorAEliminar = jugador;
                break;
            }
        }

        if (jugadorAEliminar != null) {
            // Eliminar el jugador de la lista
            jugadores.remove(jugadorAEliminar);

            // Escribir la lista actualizada de jugadores en el archivo
            GestionarJugadores.escribirJugadoresEnArchivo(jugadores, context);

            // Obtener la ruta de la imagen del jugador
            String rutaImagen = jugadorAEliminar.getFoto();

            // Eliminar la imagen del jugador del directorio
            if (rutaImagen != null && !rutaImagen.isEmpty()) {
                File imagenJugador = new File(context.getRealPath(rutaImagen));
                if (imagenJugador.exists()) {
                    imagenJugador.delete(); // Eliminar la imagen
                }
            }
        }

        // Redireccionar de vuelta al index.jsp
        response.sendRedirect("index.jsp");
    }
}
