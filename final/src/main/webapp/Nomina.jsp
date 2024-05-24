<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="mundo.Equipo" %>
<%@ page import="mundo.GestionarEquipos" %>
<%@ include file="lib/header.jsp" %>

<div class="text1-container">
    <div class="row justify-content-center">
        <div class="col-md-6 mb-4">
            <p>Seleccionar Equipo</p>
            <form id="equipoForm" action="CalcularNominaServlet" method="post">
                <div class="select-container">
                    <select name="equipo" id="equipoSelect" class="select-style">
                        <option class="select-style option" disabled selected>Selecciona un equipo</option>
                        <% 
                            List<Equipo> equipos = GestionarEquipos.leerEquiposDesdeArchivo(getServletContext());
                            if (equipos != null && !equipos.isEmpty()) {
                                for (Equipo equipo : equipos) {
                        %>
                        <option class="select-style option" value="<%= equipo.getNombreEquipo() %>">
                            <%= equipo.getNombreEquipo() %>
                        </option>
                        <% 
                                }
                            } 
                        %>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary mt-3">Calcular Nómina</button>
            </form>
            <div class="d-flex justify-content-center mt-3">
                <a onclick="window.location.href = 'Equipos.jsp'" class="btn btn-custom me-3">Equipos</a>
                <a onclick="window.location.href = 'Jugadores.jsp'" class="btn btn-custom me-3">Jugadores</a>
                <a onclick="window.location.href = 'CalcularNomina.jsp'" class="btn btn-custom">Calcular Nómina</a>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <% 
        String equipoSeleccionado = (String) request.getAttribute("equipoSeleccionado");
        Double nomina = (Double) request.getAttribute("nomina");
        if (equipoSeleccionado != null) {
    %>
    <h2>Nómina del Equipo: <%= equipoSeleccionado %></h2>
    <% if (nomina != null && nomina > 0) { %>
    <p>La nómina total es: $<%= nomina %></p>
    <% } else { %>
    <p>No se encontraron jugadores para el equipo seleccionado.</p>
    <% } %>
    <a href="CalcularNomina.jsp">Volver</a>
    <% } %>
</div>

<%@ include file="lib/footer.jsp" %>
