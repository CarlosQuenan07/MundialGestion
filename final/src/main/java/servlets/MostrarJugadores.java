package servlets;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mundo.GestionarJugadores;
import mundo.Jugador;

@WebServlet(name = "MostrarJugadores", urlPatterns = {"/MostrarJugadores"})
public class MostrarJugadores extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json;charset=UTF-8");

        String nombreEquipoSeleccionado = request.getParameter("equipo");

        ArrayList<Jugador> jugadores = GestionarJugadores.leerJugadoresDesdeArchivo(getServletContext());

        ArrayList<Jugador> jugadoresEquipoSeleccionado = new ArrayList<>();
        for (Jugador jugador : jugadores) {
            if (jugador.getNombreEquipo().equals(nombreEquipoSeleccionado)) {
                jugadoresEquipoSeleccionado.add(jugador);
            }
        }

        Gson gson = new Gson();
        String jsonJugadores = gson.toJson(jugadoresEquipoSeleccionado);

        PrintWriter out = response.getWriter();
        out.print(jsonJugadores);
        out.flush();
    }
}
