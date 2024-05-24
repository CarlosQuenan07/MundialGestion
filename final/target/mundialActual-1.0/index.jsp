<%@page import="mundo.Jugador"%>
<%@page import="mundo.GestionarJugadores"%>
<%@page import="mundo.GestionarEquipos"%>
<%@page import="java.util.List"%>
<%@page import="mundo.Equipo"%>
<%@include file="lib/header.jsp" %>
<%@include file="lib/Estilos.jsp" %>
<div class="container ">
    <div class="row">
        <!-- CODIGO TITULO. -->
        <div class="col-md-12 ">
            <div class=" titel-container sepa">
                <center><p>GESTION DE EQUIPOS <p></center>
            </div>
            <center><p></p></center>
        </div>
    </div>
</div>
<!-- CODIGO BOTONES (ACCIONES). -->
<div class="col-md-12 sepatop">
    <div class="sepa">

        <!-- Acciones -->
        <center><p></p></center>
        <div class="btn-container sepatop ">
            <button type="button" class="boton-home" data-bs-toggle="modal"  data-bs-target="#agregarEquipoModal">Agregar Equipo</button>
            <button type="button" class="boton-home" data-bs-toggle="modal"  data-bs-target="#agregarJugadorModal">Agregar Jugador</button>
        </div>
    </div>
</div>
<!-- Listados -->
<!-- EQUIPO -->
<div class="col-md-12">
    <div class="text1-container sepatop">
        <center><p>Listado de Equipos de Fútbol</p></center>
        <div class="row sepa">
            <!-- Mostrar cada equipo de la lista -->
            <% List<Equipo> equipos = GestionarEquipos.leerEquiposDesdeArchivo(getServletContext());
                if (equipos != null && !equipos.isEmpty()) {
                    for (Equipo equipo : equipos) {
            %>
            <div class="col-md-4 mb-4">
                <div class="custom-card">
                    <div class="equipo-cell">
                        <!-- Mostrar la imagen del escudo como fondo de la celda -->
                        <div class="equipo-background" style="background-image: url('<%= equipo.getEscudo()%>')">
                            <div class="equipo-text">
                                <p class="card-text"><%= equipo.getNombreEquipo()%></p>
                                <p class="card-text">Técnico: <%= equipo.getDirector()%></p>
                                <div class="card-footer justify-content-center">
                                    <!-- Botones para ver, editar y eliminar -->
                                    <button type="button" class="btn btn-action1" data-bs-toggle="modal" data-bs-target="#verModal<%= equipo.getNombreEquipo()%>"><i class="fa fa-eye"></i></button>
                                    <button type="button" class="btn btn-action1" data-bs-toggle="modal" data-bs-target="#editarEquipoModal" onclick="cargarDatosEdicion('<%= equipo.getNombreEquipo()%>', '<%= equipo.getDirector()%>', '<%= equipo.getEscudo()%>')"><i class="fa fa-pencil"></i></button>
                                    <button type="button" class="btn btn-action1" onclick="eliminarEquipo('<%= equipo.getNombreEquipo()%>')"><i class="fa fa-trash"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="verModal<%= equipo.getNombreEquipo()%>" tabindex="-1" aria-labelledby="verModalLabel<%= equipo.getNombreEquipo()%>" aria-hidden="true">
            </div>
            <% }
            } else {
            %>
            <div class="col-md-12" style="text-align: center;"><h5>No hay equipos registrados</h5></div>
            <% } %>
        </div>
    </div>
</div>
<!-- JUGADOR -->
<div class="col-md-12">
    <div class="text1-container sepatop">
        <center><p>Listado de Jugadores</p></center>
        <div class="row sepa">
            <!-- Mostrar cada jugador de la lista -->
            <% List<Jugador> jugadores = GestionarJugadores.leerJugadoresDesdeArchivo(getServletContext());
                if (jugadores != null && !jugadores.isEmpty()) {
                    for (Jugador jugador : jugadores) {
            %>
            <div class="col-md-4 mb-4">
                <div class="fut-player-card">
                    <div class="player-card-top">
                        <div class="player-master-info">
                            <div class="player-position">
                                <span><%= jugador.getNombreEquipo()%></span>
                            </div>
                        </div>
                        <div class="player-picture">
                            <img src="imagenesJugadores/<%= jugador.getFoto()%>" alt="Foto del jugador" draggable="false"/>
                            <div class="player-extra">
                                <span><%= jugador.getPosicion()%></span>
                            </div>
                        </div>
                    </div>

                    <div class="player-card-bottom">
                        <div class="player-info">
                            <div class="player-name">
                                <span><%= jugador.getNombreJugador()%></span>
                            </div>
                            <div class="player-features">
                                <div class="player-features-col">
                                    <span>
                                        <div class="player-feature-value">Edad:</div>
                                        <div class="player-feature-title"><%= jugador.getEdad()%></div>
                                    </span>
                                    <span>
                                        <div class="player-feature-value">Altura:</div>
                                        <div class="player-feature-title"><%= jugador.getAltura()%></div>
                                    </span>
                                    <span>
                                        <div class="player-feature-value">Peso:</div>
                                        <div class="player-feature-title"><%= jugador.getPeso()%></div>
                                    </span>
                                    <!-- Botones de acción con margen inferior -->
                                    <div class="action-buttons mb-2">
                                        <button type="button" class="btn btn-action" data-bs-toggle="modal" data-bs-target="#editarJugadorModal<%= jugador.getNombreJugador()%>"><i class="fas fa-edit"></i></button>
                                        <button type="button" class="btn btn-action" onclick="eliminarJugador('<%= jugador.getNombreJugador()%>')"><i class="fas fa-trash-alt"></i></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <% }
            } else { %>
            <div class="col-md-12" style="text-align: center;"><h5>No hay Jugadores registrados</h5></div>
            <% } %>
        </div>

        <!-- Modales de edición para cada jugador -->
        <% for (Jugador jugador : jugadores) {%>
        <div class="modal fade" id="editarJugadorModal<%= jugador.getNombreJugador()%>" tabindex="-1" aria-labelledby="editarJugadorModalLabel<%= jugador.getNombreJugador()%>" aria-hidden="true">

        </div>
        <% } %>
    </div>
</div>
<!-- Modals -->
<!-- Agregar Equipo Modal -->
<div class="modal fade" id="agregarEquipoModal" tabindex="-1" aria-labelledby="agregarEquipoModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="agregarEquipoModalLabel">Agregar Equipo</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Formulario para agregar un nuevo equipo -->
                <form action="AgregarEquipo" method="POST" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre del Equipo:</label>
                        <input type="text" class="form-control" id="nombre" name="nombreEquipo" required>
                    </div>
                    <div class="mb-3">
                        <label for="tecnico" class="form-label">Nombre del Técnico:</label>
                        <input type="text" class="form-control" id="tecnico" name="director" required>
                    </div>
                    <div class="mb-3">
                        <label for="escudo" class="form-label">Escudo:</label>
                        <div class="btn-file">
                            <input type="file" id="escudo" name="escudo" accept="image/png, image/jpeg" required>
                            <label class="btn btn-primary" for="escudo"><i class="fas fa-upload"></i> Cargar archivo</label>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Agregar</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Modal para agregar un nuevo Jugador -->
<div class="modal fade" id="agregarJugadorModal" tabindex="-1" aria-labelledby="agregarJugadorModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="agregarJugadorModalLabel">Agregar Jugador</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Formulario para agregar un nuevo jugador -->
                <form action="AgregarJugador" method="POST" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="nombreJugador" class="form-label">Nombre del Jugador:</label>
                            <input type="text" class="form-control" id="nombreJugador" name="nombreJugador" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="posicion" class="form-label">Posición del Jugador:</label>
                            <select class="form-select" id="posicion" name="posicion" required>
                                <option value="" selected disabled>Selecciona la posición</option>
                                <option value="Portero">Portero</option>
                                <option value="Defensa">Defensa</option>
                                <option value="Centrocampista">Centrocampista</option>
                                <option value="Delantero">Delantero</option>
                            </select>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="edad" class="form-label">Edad del Jugador:</label>
                            <input type="text" class="form-control" id="edad" name="edad" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="altura" class="form-label">Altura del Jugador:</label>
                            <input type="number" step="0.01" class="form-control" id="altura" name="altura" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="peso" class="form-label">Peso del Jugador:</label>
                            <input type="number" step="0.01" class="form-control" id="peso" name="peso" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="salario" class="form-label">Salario del Jugador:</label>
                            <input type="text" class="form-control" id="salario" name="salario" required>
                        </div>
                        <div class="col-md-12 mb-3">
                            <label for="equipoSelect" class="form-label">Equipo del Jugador:</label>
                            <select name="NombreEquipo" id="equipoSelect" class="form-select" required>
                                <option value="" selected disabled>Selecciona un equipo</option>
                                <% if (equipos != null && !equipos.isEmpty()) {
                                        for (Equipo equipo : equipos) {%>
                                <option value="<%=equipo.getNombreEquipo()%>"><%=equipo.getNombreEquipo()%></option>
                                <% }
                                    } %>
                            </select>
                        </div>
                        <div class="col-md-12 mb-3">
                            <label for="foto" class="form-label">Foto del Jugador:</label>

                            <input type="file" class="form-control" id="foto" name="foto" accept="image/png, image/jpeg" required>


                        </div>
                    </div>
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                        <button type="submit" class="btn btn-primary">Agregar</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Modal de Edición de Equipo -->
<div class="modal fade" id="editarEquipoModal" tabindex="-1" aria-labelledby="editarEquipoModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editarEquipoModalLabel">Editar Equipo</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Formulario para editar un equipo -->
                <form id="formEditarEquipo" action="EditarEquipo" method="POST" enctype="multipart/form-data">
                    <input type="hidden" id="equipoID" name="equipoID">
                    <div class="mb-3">
                        <label for="nombreEdit" class="form-label">Nombre del Equipo:</label>
                        <input type="text" class="form-control" id="nombreEdit" name="nombreEquipo" required>
                    </div>
                    <div class="mb-3">
                        <label for="directorEdit" class="form-label">Nombre del Director:</label>
                        <input type="text" class="form-control" id="directorEdit" name="director" required>
                    </div>
                    <div class="mb-3">
                        <label for="escudoEdit" class="form-label">Escudo:</label>
                        <input type="file" class="form-control" id="escudoEdit" name="escudo" accept="image/png, image/jpeg">
                    </div>
                    <button type="submit" class="btn btn-primary">Guardar Cambios</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Modal de Edición de jugador -->
<div class="modal fade" id="editarJugadorModal" tabindex="-1" aria-labelledby="editarJugadorModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editarJugadorModalLabel">Editar Jugador</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Formulario para editar un jugador -->
                <form id="formEditarJugador" action="EditarJugador" method="POST" enctype="multipart/form-data">
                    <input type="hidden" id="jugadorID" name="jugadorID">
                    <div class="mb-3">
                        <label for="nombreEdit" class="form-label">Nombre del jugador:</label>
                        <input type="text" class="form-control" id="nombreEdit" name="nombreEquipo" required>
                    </div>
                    <div class="mb-3">
                        <label for="edadEdit" class="form-label">Edad del Jugador:</label>
                        <input type="text" class="form-control" id="edadEdit" name="edad" required>
                    </div>
                    <div class="mb-3">
                        <label for="alturaEdit" class="form-label">Altura del Jugador:</label>
                        <input type="text" class="form-control" id="alturaEdit" name="altura" required>
                    </div>
                    <div class="mb-3">
                        <label for="pesoEdit" class="form-label">Peso del Jugador:</label>
                        <input type="text" class="form-control" id="pesoEdit" name="peso" required>
                    </div>
                    <div class="mb-3">
                        <label for="salarioEdit" class="form-label">Salario del Jugador:</label>
                        <input type="text" class="form-control" id="salarioEdit" name="salario" required>
                    </div>
                    <div class="mb-3">
                        <label for="posicionEdit" class="form-label">Posicion del Jugador:</label>
                        <input type="text" class="form-control" id="posicionEdit" name="posicion" required>
                    </div>
                    <div class="mb-3">
                        <label for="fotoEdit" class="form-label">Escudo:</label>
                        <input type="file" class="form-control" id="fotoEdit" name="foto" accept="image/png, image/jpeg">
                    </div>
                    <button type="submit" class="btn btn-primary">Guardar Cambios</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Toast para mostrar notificaciones al agregar equipo -->
<div id="toastAgregar" class="toast" role="alert" aria-live="polite" aria-atomic="true" style="position: fixed; top: 20px; right: 20px; z-index: 1000;">
    <!-- Contenido del toast -->
</div>
<script>
    function eliminarJugador(nombreJugador) {
        if (confirm('¿Estás seguro de que deseas eliminar este jugador?')) {
            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'EliminarJugador');
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onload = function () {
                if (xhr.status === 200) {
                    // Si se completó con éxito, redirigir a index.jsp
                    window.location.href = 'index.jsp';
                } else {
                    // Manejar cualquier error
                    console.error('Error al eliminar el jugador:', xhr.statusText);
                }
            };
            xhr.send('nombreJugador=' + encodeURIComponent(nombreJugador));
        }
    }
</script>
<script>
    // Función para cargar los datos del equipo en el modal de edición
    function cargarDatosEdicion(nombreEquipo, director, escudo) {
        // Llenar los campos del modal con los datos del equipo
        document.getElementById('nombreEquipoEditar').value = nombreEquipo;
        document.getElementById('directorEditar').value = director;
        document.getElementById('escudoActual').src = escudo;

        // Mostrar el modal de edición
        var modalEditar = new bootstrap.Modal(document.getElementById('editarEquipoModal'));
        modalEditar.show();
    }

    // Asignar la función cargarDatosEdicion a cada botón "Editar"
    var botonesEditar = document.querySelectorAll('.btn-editar-equipo');
    botonesEditar.forEach(function (boton) {
        boton.addEventListener('click', function () {
            var nombreEquipo = this.getAttribute('data-nombre-equipo');
            var director = this.getAttribute('data-director');
            var escudo = this.getAttribute('data-escudo');
            cargarDatosEdicion(nombreEquipo, director, escudo);
        });
    });
</script>
<!-- Función para enviar una confirmación en ventana emergente -->
<script>
    function eliminarEquipo(nombreEquipo) {
        if (confirm("¿Estás seguro de que quieres eliminar este equipo?")) {
            // Hacer una solicitud GET al servlet EliminarEquipo con el nombre del equipo como parámetro
            var url = "EliminarEquipo?nombreEquipo=" + encodeURIComponent(nombreEquipo);
            fetch(url)
                    .then(response => {
                        if (!response.ok) {
                            throw new Error('Error en la solicitud.');
                        }
                        // Recargar la página después de eliminar el equipo
                        location.reload();
                    })
                    .catch(error => {
                        console.error('Error:', error);
                    });
        }
    }
</script>
<!-- Scripts para controlar los toasts -->
<script>
    $(document).ready(function () {
        // Función para mostrar el toast correspondiente a la acción realizada (agregar, actualizar o eliminar)
        function mostrarToast() {
    <% String accionAgregar = (String) request.getAttribute("accionAgregar");
        String accionActualizar = (String) request.getAttribute("accionActualizar");
        String accionEliminar = (String) request.getAttribute("accionEliminar");
        String accionDuplicacionID = (String) request.getAttribute("accionDuplicacionID");

        if (accionAgregar != null && accionAgregar.equals("true")) { %>
            // Mostrar el toast de agregar equipo
            $("#toastAgregar").toast('show');
            setTimeout(function () {
                $('#toastAgregar').toast('hide');
            }, 5000);
    <% } else if (accionActualizar != null && accionActualizar.equals("true")) { %>
            // Mostrar el toast de actualizar equipo
            $("#toastActualizar").toast('show');
            setTimeout(function () {
                $('#toastActualizar').toast('hide');
            }, 5000);
    <% } else if (accionEliminar != null && accionEliminar.equals("true")) { %>
            // Mostrar el toast de eliminar equipo
            $("#toastEliminar").toast('show');
            setTimeout(function () {
                $('#toastEliminar').toast('hide');
            }, 5000);
    <% } else if (accionDuplicacionID != null && accionDuplicacionID.equals("true")) { %>
            // Mostrar el toast de duplicación de ID
            $("#toastDuplicacionID").toast('show');
            setTimeout(function () {
                $('#toastDuplicacionID').toast('hide');
            }, 5000);
    <% }%>
        }
        // Llamar a la función para mostrar el toast
        mostrarToast();
    });
</script>
<!-- estilo para botones uno al lado del otro -->
<style>
    .btn-container {
        display: flex;
        justify-content: space-around;
    }
</style>
<%@include file="lib/footer.jsp" %>