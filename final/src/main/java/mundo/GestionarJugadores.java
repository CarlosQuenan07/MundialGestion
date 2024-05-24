package mundo;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletContext;

public class GestionarJugadores {
    
    // Contenedor de Jugadores
    public static ArrayList<Jugador> misJugadores = new ArrayList<>();

    public GestionarJugadores(ArrayList<Jugador> misJugadores) {
        this.misJugadores = new ArrayList<>();
    }
    
    // Constructor vacío
    public GestionarJugadores() {
    }

    // Método agregarJugadores
    public static ArrayList<Jugador> agregarJugadores(String nombreJugador, int edad, double altura, double peso, double salario, String posicion, String foto,String NombreEquipo, ArrayList jugadores) {
        Jugador miJugador = new Jugador(nombreJugador, edad, altura, peso, salario, posicion, foto ,NombreEquipo);
        jugadores.add(miJugador);
        return jugadores;
    } 
    
      public static void escribirJugadoresEnArchivo(ArrayList<Jugador> jugadores, ServletContext context) {
        String rutaRelativa = "data/jugadores.txt";
        String rutaAbsoluta = context.getRealPath(rutaRelativa);
        File archivo = new File(rutaAbsoluta);

        try (PrintWriter writer = new PrintWriter(new FileWriter(archivo))) {
            for (Jugador jugador : jugadores) {
                writer.println(jugador.getNombreJugador() + "," + jugador.getEdad() + "," + jugador.getAltura() + "," + jugador.getPeso() + "," + jugador.getSalario() + "," + jugador.getPosicion() + "," + jugador.getFoto()+ "," + jugador.getNombreEquipo());
            }
        } catch (IOException e) {
            System.out.println("No se puede escribir en el archivo: " + e.getMessage());
        }
    }
    
    public static ArrayList<Jugador> leerJugadoresDesdeArchivo(ServletContext context) {
    ArrayList<Jugador> jugadores = new ArrayList<>();
    String rutaRelativa = "data/jugadores.txt";
    String rutaAbsoluta = context.getRealPath(rutaRelativa);
    File archivo = new File(rutaAbsoluta);

    try (BufferedReader reader = new BufferedReader(new FileReader(archivo))) {
        String linea;
        while ((linea = reader.readLine()) != null) {
            // Divide la línea en campos separados por comas
            String[] campos = linea.split(",");
            if (campos.length == 8) { // Asegura que la línea tiene la estructura correcta
                String nombreJugador = campos[0];
                int edad = Integer.parseInt(campos[1]);
                double altura = Double.parseDouble(campos[2]);
                double peso = Double.parseDouble(campos[3]);
                double salario = Double.parseDouble(campos[4]);
                String posicion = campos[5];
                String foto = campos[6];
                String NombreEquipo = campos [7];
                // Crea un nuevo objeto Jugador y agrégalo al ArrayList
                jugadores.add(new Jugador(nombreJugador, edad, altura, peso, salario, posicion, foto, NombreEquipo));
            }
        }
    } catch (IOException e) {
        System.out.println("No se puede leer el archivo: " + e.getMessage());
    }

    return jugadores;
}

    // Método para obtener la lista de jugadores
    public static ArrayList<Jugador> getmisJugadores() {
        return misJugadores;
    }

    // Método modificarJugadores
public static void modificarJugadores(String nombreJugador, int edad, double altura, double peso, double salario, String posicion, String foto,String NombreEquipo) {
    for (Jugador miJugador : misJugadores) {
        if (miJugador.getNombreJugador().equals(nombreJugador)) {
            // Actualizar los atributos del jugador encontrado
            miJugador.setEdad(edad);
            miJugador.setAltura(altura);
            miJugador.setPeso(peso);
            miJugador.setSalario(salario);
            miJugador.setPosicion(posicion);
            miJugador.setFoto(foto);
            miJugador.setNombreEquipo(NombreEquipo);
            break; // Terminar el bucle una vez que se ha encontrado y modificado el jugador
        }
    }
}

    
    public static ArrayList<Jugador> eliminarJugador(String nombreJugador, ArrayList<Jugador> jugadores) {
    jugadores.removeIf(jugador -> jugador.getNombreJugador().equals(nombreJugador));
    return jugadores;
}
 public static double calcularNominaPorEquipo(String nombreEquipo) {
        double nomina = 0.0;

        for (Jugador jugador : misJugadores) {
            if (jugador.getNombreEquipo().equalsIgnoreCase(nombreEquipo)) {
                nomina += jugador.getSalario();
            }
        }

        return nomina;
    }
  }
