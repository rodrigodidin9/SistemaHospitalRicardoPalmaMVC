package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    // Cambia "bd_hospital" por el nombre de tu base de datos, y tu usuario/clave
    private final String URL = "jdbc:mysql://localhost:3306/bd_hospital";
    private final String USER = "root";
    private final String PASSWORD = "tu_contraseña";
    
    public Connection conectar() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("¡Conexión exitosa al Hospital Ricardo Palma!");
        } catch (SQLException e) {
            System.out.println("Error de conexión: " + e.getMessage());
        }
        return con;
    }
}