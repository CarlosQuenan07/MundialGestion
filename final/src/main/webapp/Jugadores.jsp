<%@page import="java.util.List"%>
<%@page import="mundo.Equipo"%>
<%@page import="mundo.GestionarEquipos"%>
<%@page import="mundo.GestionarJugadores"%>
<%@page import="mundo.Jugador"%>
<%@include file="lib/header.jsp" %>
<%@include file="lib/Estilos.jsp" %>
<div class="container sepa">
    <div class="row">
        <!-- Título -->
        <div class="col-md-12">
            <div class="titel-container sepa">
                <center><p>JUGADORES</p></center>
            </div>
        </div>
    </div>
</div>

<div class="text1-container">
    <div class="row justify-content-center">
        <!-- Desplegable de Equipos -->
        <div class="col-md-6 mb-4">
            <form id="equipoForm">
                <label for="equipo">Seleccionar Equipo</label>
                <div class="select-container">
                    <select name="equipo" id="equipoSelect" class="select-style">
                        <option value="" disabled selected>Selecciona un equipo</option>
                        <% List<Equipo> equipos = GestionarEquipos.leerEquiposDesdeArchivo(getServletContext());
                            if (equipos != null && !equipos.isEmpty()) {
                                for (Equipo equipo : equipos) {
                        %>
                        <option value="<%=equipo.getNombreEquipo()%>"><%=equipo.getNombreEquipo()%></option>
                        <% }
                            }%>
                    </select>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="col-md-12">
    <div class="text1-container sepatop">
        <center><p>Listado de Jugadores</p></center>
        <div id="jugadoresContainer" class="row sepa"></div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $('#equipoSelect').change(function () {
            var equipoSeleccionado = $(this).val();

            $.getJSON('MostrarJugadores', {equipo: equipoSeleccionado}, function (data) {
                var jugadoresHtml = '';
                if (data && data.length > 0) {
                    $.each(data, function (index, jugador) {
                        jugadoresHtml += '<div class="col-md-4 mb-4">\n';
                        jugadoresHtml += '    <div class="fut-player-card">\n';
                        jugadoresHtml += '        <div class="player-card-top">\n';
                        jugadoresHtml += '            <div class="player-master-info">\n';
                       
                        jugadoresHtml += '            </div>\n';
                        jugadoresHtml += '            <div class="player-picture">\n';
                        jugadoresHtml += '                <img src="imagenesJugadores/' + jugador.foto + '" alt="Foto del jugador" draggable="false"/>\n';
                        jugadoresHtml += '                <div class="player-extra">\n';
                        jugadoresHtml += '                    <span>' + jugador.posicion + '</span>\n';
                        jugadoresHtml += '                </div>\n';
                        jugadoresHtml += '            </div>\n';
                        jugadoresHtml += '        </div>\n';
                        jugadoresHtml += '        <div class="player-card-bottom">\n';
                        jugadoresHtml += '            <div class="player-info">\n';
                        jugadoresHtml += '                <div class="player-name">\n';
                        jugadoresHtml += '                    <span>' + jugador.nombreJugador + '</span>\n';
                        jugadoresHtml += '                </div>\n';
                        jugadoresHtml += '                <div class="player-features">\n';
                        jugadoresHtml += '                    <div class="player-features-col">\n';
                        jugadoresHtml += '                        <span>\n';
                        jugadoresHtml += '                            <div class="player-feature-value">Edad:</div>\n';
                        jugadoresHtml += '                            <div class="player-feature-title">' + jugador.edad + '</div>\n';
                        jugadoresHtml += '                        </span>\n';
                        jugadoresHtml += '                        <span>\n';
                        jugadoresHtml += '                            <div class="player-feature-value">Altura:</div>\n';
                        jugadoresHtml += '                            <div class="player-feature-title">' + jugador.altura + '</div>\n';
                        jugadoresHtml += '                        </span>\n';
                        jugadoresHtml += '                        <span>\n';
                        jugadoresHtml += '                            <div class="player-feature-value">Peso:</div>\n';
                        jugadoresHtml += '                            <div class="player-feature-title">' + jugador.peso + '</div>\n';
                        jugadoresHtml += '                        </span>\n';
                        jugadoresHtml += '                    </div>\n';
                        jugadoresHtml += '                </div>\n';
                        jugadoresHtml += '            </div>\n';
                        jugadoresHtml += '        </div>\n';
                        jugadoresHtml += '    </div>\n';
                        jugadoresHtml += '</div>\n';
                    });
                } else {
                    jugadoresHtml = '<div class="col-md-12 mb-4">No hay jugadores disponibles para este equipo.</div>';
                }
                $('#jugadoresContainer').html(jugadoresHtml);
            });
        });
    });
</script>
<!-- Agrega aquí tus enlaces a JavaScript, jQuery u otros scripts -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<%@include file="lib/footer.jsp" %>
