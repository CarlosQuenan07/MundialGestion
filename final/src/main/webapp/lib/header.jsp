<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mundial 2026</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Exo+2:wght@400;700&display=swap" rel="stylesheet">

        <script src="https://kit.fontawesome.com/424ce1386e.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <style>
            /* Estilo para el fondo de la página */
            body {
                position: relative; /* Posición relativa para que el seudoelemento se posicione correctamente */
            }

            /* Seudoelemento para aplicar efectos al fondo */
            body::before {
                content: ''; /* Contenido vacío */
                position: fixed; /* Posición fija para cubrir toda la ventana */
                top: 0; /* Alinear en la parte superior */
                left: 0; /* Alinear en la parte izquierda */
                width: 100%; /* Ancho completo */
                height: 100%; /* Altura completa */
                background-image: url('img/fondo.jpg'); /* Imagen de fondo */
                background-size: cover; /* Cubre todo el tamaño del fondo */
                background-position: center; /* Posición inicial centrada */
                animation: moveBackground 30s linear infinite; /* Animaciones */
                z-index: -1; /* Asegurar que esté detrás del contenido */
            }

            @keyframes moveBackground {
                0% {
                    background-position: center; /* Posición inicial */
                }
                50% {
                    background-position: top right; /* Posición intermedia */
                }
                100% {
                    background-position: center; /* Posición final */
                }
            }



            /* Estilo para el contenedor del encabezado */
            .header-container {

                background-color: rgba(0, 0, 0, 0.9); /* Color de fondo con transparencia */
                /* Bordes redondeados */
                position: relative; /* Posición relativa */
                background-image: url('img/banner.jpg'); /* Imagen de fondo del encabezado */
                background-size: cover; /* Cubre todo el tamaño del fondo */
                background-position: center; /* Posición centrada */
                background-attachment: fixed; /* Fija la imagen de fondo */
                color: white;
                border: 5px solid rgba(0, 0, 0, 0.9); /* Borde */
                border-radius: -20px; /* Bordes redondeados */
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.9); /* Sombra */

            }
            /* Fuente futurista */

            .titel-container {
                font-family: 'Exo 2', sans-serif; /* Fuente futurista */
                color: white; /* Color del texto */
                -webkit-text-stroke: 0px rgba(0, 0, 255, 0.8); /* Contorno del texto */
                font-size: 80px; /* Tamaño de fuente más grande */

                text-shadow:
                    0 0 20px rgba(0, 0, 0, 10),
                    0 0 20px rgba(0, 0, 0, 0.9),
                    0 0 30px rgba(0, 0, 0, 0.7),
                    0 0 40px rgba(0, 0, 0, 0.6),
                    0 0 50px rgba(0, 0, 0, 0.4),
                    0 0 60px rgba(0, 0, 0, 0.3); /* Sombras del texto */

            }


            /* Estilo para el contenedor de texto */
            .text-container {
                background-color: rgba(0, 0, 0, 0.7); /* Color de fondo con transparencia */
                border-radius: 20px; /* Bordes redondeados */
                padding: 20px; /* Espaciado interno */
                margin-bottom: 20px; /* Margen inferior para separar del siguiente elemento */
                font-size: 30px;
            }

            .text1-container {
                background-color: rgba(0, 0, 0, 0.9); /* Color de fondo con transparencia */
                border-radius: 0px; /* Bordes sin redondear */
                padding: 20px; /* Espaciado interno */
                color: white;
                font-size: 60px;
                font-family: 'Exo 2', sans-serif; /* Fuente futurista */
            }

            /* Estilos para la barra desplegable */
            /* Estilo para la barra desplegable */
            .select-style {
                appearance: none; /* Oculta los estilos predeterminados del navegador */
                -webkit-appearance: none;
                -moz-appearance: none;
                background-color: rgba(0, 0, 0, 0.7); /* Color de fondo con transparencia */
                color: white; /* Color del texto */
                border: 2px solid white; /* Borde blanco de 2px */
                border-radius: 20px; /* Bordes redondeados */
                padding: 10px; /* Espaciado interno */
                font-size: 16px; /* Tamaño de fuente */
                width: 100%; /* Ancho completo */
            }

            /* Estilo para las opciones de la barra desplegable */
            .select-style option {
                background-color: rgba(0, 0, 0, 0.7); /* Color de fondo con transparencia */
                color: white; /* Color del texto */
            }

            /* Estilo para las opciones de la barra desplegable cuando están hover */
            .select-style option:hover {
                background-color: rgba(0, 255, 0, 0.3); /* Fondo verde con transparencia */
            }


            .sepatop {
                margin-bottom: 100px; /* Añade margen inferior */
                margin-top: 100px;

            }
            .sepa {
                margin-bottom: 50px; /* Añade margen inferior */
                margin-top: 50px;
            }

            /* Estilo para los botones personalizados */
            .btn-custom {
                background-color: transparent; /* Fondo transparente */
                border: 1px solid white; /* Borde sólido */
                color: white; /* Color de texto */
            }
            .boton-home {
                display: inline-block; /* Mostrar como bloque en línea */
                padding: 10px 20px; /* Relleno interno */
                border: 50px rgba(0, 0, 0, 0.9); /* Borde transparente */
                border-radius: 5px; /* Bordes redondeados */
                background-color: rgba(0, 0, 0, 0.83); /* Fondo transparente */
                color: white; /* Color de texto */
                font-size: 25px; /* Tamaño de fuente */
                cursor: pointer; /* Cursor de apuntador */
                transition: background-color 0.3s ease, border-color 0.3s ease, transform 0.3s ease; /* Transición suave */
                box-shadow: 0 0 30px rgba(0, 0, 0, 0.6); /* Sombra inicial */
            }

            .boton-home:hover {
                background-color: rgba(102, 187, 106, 1); /* Fondo más visible al pasar el cursor */
                border-color: rgba(102, 187, 106, 0.4); /* Borde más visible al pasar el cursor */
                transform: scale(1.10); /* Aumento suave de tamaño al pasar el cursor */
                box-shadow: 0 0 30px rgba(102, 187, 106, 0.7); /* Sombra inicial */

            }


            /* Estilo para el icono de búsqueda activo */
            .search-icon.active {
                margin-left: 10px; /* Desplazamiento del icono hacia la izquierda */
            }

            /* Estilo para la barra de búsqueda activa */
            .search-bar.active {
                background-color: rgba(0, 0, 0, 0.5);
                color: white;
                width: 200px; /* Ancho de la barra de búsqueda */
                margin-left: 10px; /* Desplazamiento hacia la izquierda */
                visibility: visible; /* Visibilidad */
                z-index: 0;
            }
            /* Estilo para la barra de búsqueda */
            .search-bar {
                background-color: rgba(0, 0, 0, 0.5); /* Color de fondo con transparencia */
                border-radius: 20px; /* Bordes redondeados */
                border: none; /* Sin borde */
                color: white; /* Color de texto */
                padding: 10px; /* Espaciado interno */
                width: 0; /* Ancho inicialmente oculto */
                overflow: hidden; /* Oculta el contenido que excede el ancho */
                visibility: hidden; /* Oculta la barra de búsqueda */
                transition: width 0.5s ease, visibility 0.5s ease; /* Transición suave */
            }

            /* Estilo para el icono de búsqueda */
            .search-icon {
                color: white; /* Color del icono */
                cursor: pointer; /* Cursor de apuntador */
                position: relative; /* Posición relativa */
                left: -10px; /* Desplazamiento hacia la izquierda */
                z-index: 4; /* Posicionamiento en capas */
                transition: margin-left 0.5s ease; /* Transición suave */
            }

            /* Estilo para el contenedor de la barra de búsqueda */
            .search-bar-container {

                display: flex; /* Contenedor de tipo flex */
                align-items: center; /* Alineación vertical */
                justify-content: center; /* Alineación horizontal */
                position: relative; /* Posición relativa */
            }



            /* Estilos para el modal de agregar un nuevo equipo */
            #agregarEquipoModal .modal-content {
                background-color: rgba(0, 0, 0, 1); /* Color de fondo con transparencia */
                color: white; /* Color de texto */
            }

            #agregarEquipoModal .btn-file {
                position: relative; /* Posición relativa */
                overflow: hidden; /* Oculta el desbordamiento */
                margin-top: 10px; /* Margen superior */
            }

            #agregarEquipoModal .btn-file input[type=file] {
                position: absolute; /* Posición absoluta */
                top: 0; /* Posicionamiento en la parte superior */
                right: 0; /* Posicionamiento en la parte derecha */
                min-width: 100%; /* Ancho mínimo */
                min-height: 100%; /* Altura mínima */
                font-size: 100px; /* Tamaño de fuente grande */
                text-align: right; /* Alineación del texto a la derecha */
                filter: alpha(opacity=0); /* Filtro de opacidad */
                opacity: 0; /* Opacidad */
                outline: none; /* Sin contorno */
                background: white; /* Fondo blanco */
                cursor: inherit; /* Herencia de cursor */
                display: block; /* Mostrar como bloque */
            }
            #editarEquipoModal .modal-content {
                background-color: rgba(0, 0, 0, 1); /* Color de fondo con transparencia */
                color: white; /* Color de texto */
            }

            #editarEquipoModal .btn-file {
                position: relative; /* Posición relativa */
                overflow: hidden; /* Oculta el desbordamiento */
                margin-top: 10px; /* Margen superior */
            }

            #editarEquipoModal .btn-file input[type=file] {
                position: absolute; /* Posición absoluta */
                top: 0; /* Posicionamiento en la parte superior */
                right: 0; /* Posicionamiento en la parte derecha */
                min-width: 100%; /* Ancho mínimo */
                min-height: 100%; /* Altura mínima */
                font-size: 100px; /* Tamaño de fuente grande */
                text-align: right; /* Alineación del texto a la derecha */
                filter: alpha(opacity=0); /* Filtro de opacidad */
                opacity: 0; /* Opacidad */
                outline: none; /* Sin contorno */
                background: white; /* Fondo blanco */
                cursor: inherit; /* Herencia de cursor */
                display: block; /* Mostrar como bloque */
            }
            #editarJugadorModal .modal-content {
                background-color: rgba(0, 0, 0, 1); /* Color de fondo con transparencia */
                color: white; /* Color de texto */
            }

            #editarJugadorModal .btn-file {
                position: relative; /* Posición relativa */
                overflow: hidden; /* Oculta el desbordamiento */
                margin-top: 10px; /* Margen superior */
            }

            #editarJugadorModal .btn-file input[type=file] {
                position: absolute; /* Posición absoluta */
                top: 0; /* Posicionamiento en la parte superior */
                right: 0; /* Posicionamiento en la parte derecha */
                min-width: 100%; /* Ancho mínimo */
                min-height: 100%; /* Altura mínima */
                font-size: 100px; /* Tamaño de fuente grande */
                text-align: right; /* Alineación del texto a la derecha */
                filter: alpha(opacity=0); /* Filtro de opacidad */
                opacity: 0; /* Opacidad */
                outline: none; /* Sin contorno */
                background: white; /* Fondo blanco */
                cursor: inherit; /* Herencia de cursor */
                display: block; /* Mostrar como bloque */
            }
            #agregarEquipoModal .modal-content {
                background-color: rgba(0, 0, 0, 1); /* Color de fondo con transparencia */
                color: white; /* Color de texto */
            }

            #agregarEquipoModal .btn-file {
                position: relative; /* Posición relativa */
                overflow: hidden; /* Oculta el desbordamiento */
                margin-top: 10px; /* Margen superior */
            }

            #agregarEquipoModal .btn-file input[type=file] {
                position: absolute; /* Posición absoluta */
                top: 0; /* Posicionamiento en la parte superior */
                right: 0; /* Posicionamiento en la parte derecha */
                min-width: 100%; /* Ancho mínimo */
                min-height: 100%; /* Altura mínima */
                font-size: 100px; /* Tamaño de fuente grande */
                text-align: right; /* Alineación del texto a la derecha */
                filter: alpha(opacity=0); /* Filtro de opacidad */
                opacity: 0; /* Opacidad */
                outline: none; /* Sin contorno */
                background: white; /* Fondo blanco */
                cursor: inherit; /* Herencia de cursor */
                display: block; /* Mostrar como bloque */
            }
            #agregarJugadorModal .modal-content {
                background-color: rgba(0, 0, 0, 1); /* Color de fondo con transparencia */
                color: white; /* Color de texto */
            }
            #agregarJugadorModal .btn-file {
                position: relative; /* Posición relativa */
                overflow: hidden; /* Oculta el desbordamiento */
                margin-top: 10px; /* Margen superior */
            }

            #agregarJugadorModal .btn-file input[type=file] {
                position: absolute; /* Posición absoluta */
                top: 0; /* Posicionamiento en la parte superior */
                right: 0; /* Posicionamiento en la parte derecha */
                min-width: 100%; /* Ancho mínimo */
                min-height: 100%; /* Altura mínima */
                font-size: 100px; /* Tamaño de fuente grande */
                text-align: right; /* Alineación del texto a la derecha */
                filter: alpha(opacity=0); /* Filtro de opacidad */
                opacity: 0; /* Opacidad */
                outline: none; /* Sin contorno */
                background: white; /* Fondo blanco */
                cursor: inherit; /* Herencia de cursor */
                display: block; /* Mostrar como bloque */
            }

            .equipo-cell {
                position: relative;

                width: 250px; /* Ancho de la celda */
                height: 250px; /* Altura de la celda */
                overflow: hidden;
                border-radius: 50%; /* Hacer la celda circular */
                box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.3);
                margin: 0 auto; /* Centrar horizontalmente */
            }



            .equipo-background {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                width: 100%;
                height: 100%;
                border-radius: 50%; /* Hacer el fondo circular */
                background-size: cover;
                background-position: center;

            }


            .equipo-text {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                color: white;
                text-align: center;
                z-index: 1;
                font-weight: bold; /* Hacer el texto más llamativo */
                font-size: 20px; /* Tamaño de fuente más grande */
                padding: 20px; /* Aumentar el relleno */
                font-style: italic; /* Hacer el texto en cursiva */
                text-shadow: 0 0 10px rgba(0, 0, 0, 0.9); /* Agregar sombra al texto */
                background-color: rgba(0, 0, 0, 0.4); /* Fondo con transparencia */
                border-radius: 20%; /* Bordes circulares */
                box-shadow: 0 0 30px rgba(0, 0, 0, 0.9); /* Sombra difuminada para el fondo */
                width: max-content; /* Ancho máximo según el contenido */
                height: max-content; /* Altura máxima según el contenido */
            }

            .custom-card {
                border: none;
                border-radius: 50%; /* Hacer la carta circular */

            }


            /* Estilo del botón */
            .btn-action1 {
                position: relative; /* Para posicionar correctamente el pseudo-elemento */
            }

            /* Estilo del fondo al pasar el mouse sobre el icono */
            .btn-action1:hover::before {
                content: ''; /* Contenido del pseudo-elemento */
                position: absolute; /* Posicionamiento absoluto */
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(46, 204, 113, 0.5); /* Color de fondo con opacidad */
                box-shadow: 0 0 20px 10px rgba(46, 204, 113, 0.5); /* Sombra con efecto de difuminado */
                z-index: -1; /* Colocar detrás del icono */
                border-radius: 50%; /* Hacer el fondo circular */
                transition: opacity 0.3s; /* Transición suave */
                opacity: 0; /* Ocultar inicialmente el fondo */
            }

            /* Estilo del icono */
            .btn-action1 i {
                position: relative; /* Para mantener el ícono en el primer plano */
                z-index: 1; /* Asegurar que el ícono esté sobre el fondo */
                color: #ffffff; /* Color blanco por defecto */
                transition: transform 0.3s, color 0.3s; /* Transiciones suaves */
            }

            /* Estilo al pasar el mouse sobre el icono */
            .btn-action1:hover i {
                color: #ccffcc; /* Cambiar el color a un verde más bonito */
                transform: scale(1.2); /* Hacer zoom al 120% */
            }

            /* Mostrar el fondo al pasar el mouse sobre el icono */
            .btn-action1:hover::before {
                opacity: 1; /* Mostrar el fondo con la misma opacidad que la sombra */
            }


        </style>
    </head>
    <body>
        <div class="header-container text-white  text-center " background-image: url('img/banner.jpg'); background-size: cover; background-position: center;">
             <div class="text1-container  ">
                <br><p></p>
                <a href="index.jsp">
                    <img src="img/Logo.png" alt="Logo" class="mb-3" style="max-width: 300px;">
                </a>

                <h1 class="display-4" style="color: white;">¡Bienvenido a TeamMaster!</h1>
                <h2 style="color: white;">Encuentra y Organiza Equipos</h2>
                <div class="d-flex justify-content-center mt-3">
                    <a onclick="window.location.href = 'Equipos.jsp'" class="btn btn-custom me-3">Equipos</a> <!-- Botón Equipos -->
                    <a onclick="window.location.href = 'Jugadores.jsp'" class="btn btn-custom me-3">Jugadores</a> <!-- Botón Jugadores -->
                    <a onclick="window.location.href = 'Nomina.jsp'" class="btn btn-custom">Calcular Nómina</a> <!-- Botón Calcular Nómina -->
                </div>

                <div class="input-group mt-3 justify-content-center">
                    <div class="search-bar-container">
                        <input type="text" class="form-control search-bar" placeholder="Buscar..." aria-label="Buscar" aria-describedby="basic-addon2">
                        <button class="btn search-icon" type="button"><i class="fas fa-search"></i></button> <!-- Icono de búsqueda -->
                    </div>
                </div>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                $(".search-icon").click(function () {
                    $(".search-icon").toggleClass("active");
                    $(".search-bar").toggleClass("active").focus();
                });
            });
        </script>

        <!-- Optional JavaScript; choose one of the two! -->
        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>