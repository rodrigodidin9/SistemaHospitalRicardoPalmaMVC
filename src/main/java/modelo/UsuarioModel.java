package modelo;

public class UsuarioModel {
    
    // Método simulado para validar usuario
    public boolean validarUsuario(String usuario, String password) {
        // En la realidad, aquí harías una consulta a la Base de Datos
        // Simularemos que el usuario correcto es "admin" y la clave "1234"
        return usuario.equals("admin") && password.equals("1234");
    }
}