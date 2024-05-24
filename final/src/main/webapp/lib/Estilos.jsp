<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Saira+Semi+Condensed:300,400,700"/>

<style>
 .action-buttons {
    display: flex;
    justify-content: center;
    margin-top: 0.3rem; /* Espaciado entre los botones y el contenido de la carta */
}



  .fut-player-card {
    position: relative;
    width: 300px;
    height: 485px;
    background-image: url(https://selimdoyranli.com/cdn/fut-player-card/img/card_bg.png);
    background-position: center center;
    background-size: 100% 100%;
    background-repeat: no-repeat;
    padding: 3.8rem 0;
    z-index: 2;
    -webkit-transition: 200ms ease-in;
    -o-transition: 200ms ease-in;
    transition: 200ms ease-in;
  }

  .fut-player-card .player-card-top {
    position: relative;
    display: flex;
    color: #e9cc74;
    padding: 0 1.5rem;
}

.fut-player-card .player-card-top .player-master-info {
    position: absolute;
    font-weight: 300;
    padding: 1.5rem 0;
    text-transform: uppercase;
    font-size: 0.9rem; /* Reducir el tamaño de fuente */
    line-height: 1.2rem; /* Ajustar la altura de línea */
    overflow-wrap: break-word; /* Forzar salto de línea */
    word-wrap: break-word;
    width: 40%; /* Reducir aún más el ancho del contenedor */
    display: block; /* Cambiar el tipo de visualización para que ocupe el ancho completo */
}





  .fut-player-card .player-card-top .player-master-info .player-position {
    font-size: 0.9rem; /* Reducir el tamaño de fuente */
    word-wrap: break-word;
    line-height: 1.1; /* Ajustar la altura de línea si es necesario */
}




  .fut-player-card .player-card-top .player-master-info .player-nation {
    display: block;
    width: 2rem;
    height: 25px;
    margin: 0.3rem 0;
  }

  .fut-player-card .player-card-top .player-master-info .player-nation img {
    width: 100%;
    height: 100%;
    -o-object-fit: contain;
    object-fit: contain;
  }

  .fut-player-card .player-card-top .player-master-info .player-club {
    display: block;
    width: 2.1rem;
    height: 40px;
  }

  .fut-player-card .player-card-top .player-master-info .player-club img {
    width: 100%;
    height: 100%;
    -o-object-fit: contain;
    object-fit: contain;
  }

  .fut-player-card .player-card-top .player-picture {
    width: 200px;
    height: 200px;
    margin: 0 auto;
    overflow: hidden;
  }

  .fut-player-card .player-card-top .player-picture img {
    width: 100%;
    height: 100%;
    -o-object-fit: contain;
    object-fit: contain;
    position: relative;
    right: -1.5rem;
    bottom: 0;
  }

  .fut-player-card .player-card-top .player-picture .player-extra {
    position: absolute;
    right: 0;
    bottom: -0.5rem;
    overflow: hidden;
    font-size: 1rem;
    font-weight: 700;
    text-transform: uppercase;
    width: 100%;
    height: 2rem;
    padding: 0 1.5rem;
    text-align: right;
    background: none;
  }

  .fut-player-card .player-card-top .player-picture .player-extra span {
    margin-left: 0.6rem;
    text-shadow: 2px 2px #333;
  }

  .fut-player-card .player-card-bottom {
    position: relative;
  }

  .fut-player-card .player-card-bottom .player-info {
    display: block;
    padding: 0.3rem 0;
    color: #e9cc74;
    width: 90%;
    margin: 0 auto;
    height: auto;
    position: relative;
    z-index: 2;
  }

  .fut-player-card .player-card-bottom .player-info .player-name {
    width: 100%;
    display: block;
    text-align: center;
    font-size: 1.6rem;
    text-transform: uppercase;
    border-bottom: 2px solid rgba(233, 204, 116, 0.1);
    padding-bottom: 0.3rem;
    overflow: hidden;
  }

  .fut-player-card .player-card-bottom .player-info .player-name span {
    display: block;
    text-shadow: 2px 2px #111;
  }

  .fut-player-card .player-card-bottom .player-info .player-features {
    margin: 0.5rem auto;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
  }

  .fut-player-card .player-card-bottom .player-info .player-features .player-features-col {
    border-right: 2px solid rgba(233, 204, 116, 0.1);
    padding: 0 2.3rem;
  }

  .fut-player-card .player-card-bottom .player-info .player-features .player-features-col span {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    font-size: 1.2rem;
    text-transform: uppercase;
  }

  .fut-player-card .player-card-bottom .player-info .player-features .player-features-col span .player-feature-value {
    margin-right: 0.3rem;
    font-weight: 700;
  }

  .fut-player-card .player-card-bottom .player-info .player-features .player-features-col span .player-feature-title {
    font-weight: 300;
  }

  .fut-player-card .player-card-bottom .player-info .player-features .player-features-col:last-child {
    border: 0;
  }
</style>