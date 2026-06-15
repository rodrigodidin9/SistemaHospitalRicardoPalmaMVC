package controlador;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelo.UsuarioModel;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Capturar los datos enviados desde el formulario de login.jsp
        // El texto entre comillas DEBE coincidir exactamente con el atributo "name" del HTML
        String usuarioIngresado = request.getParameter("txtUsuario");
        String passwordIngresado = request.getParameter("txtPassword");

        // 2. Instanciar tu modelo para aplicar la lógica de negocio
        UsuarioModel modelo = new UsuarioModel();
        
        // 3. Validar las credenciales
        boolean accesoConcedido = modelo.validarUsuario(usuarioIngresado, passwordIngresado);

        // 4. Decidir qué hacer a continuación
        if (accesoConcedido) {
            // Credenciales correctas: Redirigir a la pantalla principal del hospital
            response.sendRedirect("dashboard.jsp"); 
        } else {
            // Credenciales incorrectas: Enviar un mensaje de error y recargar el login
            request.setAttribute("error", "Usuario o contraseña incorrectos. Intente nuevamente.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}