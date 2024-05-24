package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mundo.GestionarJugadores;

@WebServlet("/CalcularNominaServlet")
public class CalcularNominaServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String equipoSeleccionado = request.getParameter("equipo");

        // Leer jugadores desde archivo si misJugadores está vacío
        if (GestionarJugadores.getmisJugadores().isEmpty()) {
            GestionarJugadores.misJugadores = GestionarJugadores.leerJugadoresDesdeArchivo(getServletContext());
        }

        double nomina = GestionarJugadores.calcularNominaPorEquipo(equipoSeleccionado);

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<head>");
        out.println("<title>Nómina del Equipo</title>");
        out.println("<link rel='stylesheet' href='styles.css'>");
        out.println("</head>");
        out.println("<body>");
        out.println("<div class='container'>");
        out.println("<h2>Nómina del Equipo: " + equipoSeleccionado + "</h2>");
        if (nomina > 0) {
            out.println("<p>La nómina total es: $" + nomina + "</p>");
        } else {
            out.println("<p>No se encontraron jugadores para el equipo seleccionado.</p>");
        }
        out.println("<a href='CalcularNomina.jsp'>Volver</a>");
        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
    }
}