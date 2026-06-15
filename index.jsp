<%-- 
    Document   : login
    Created on : 15 jun. 2026, 07:33:10
    Author     : C2A601-08
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospital Ricardo Palma - Acceso</title>
    </head>
    <body style="background-color: #f0f4f8; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; font-family: Arial, sans-serif;">
        
        <div style="background: white; padding: 40px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); width: 320px;">
            <h2 style="color: #0056b3; text-align: center;">Hospital Ricardo Palma</h2>
            
            <% 
                if (request.getAttribute("error") != null) { 
            %>
                <div style="color: red; text-align: center; margin-bottom: 15px; font-size: 14px;">
                    <%= request.getAttribute("error") %>
                </div>
            <% 
                } 
            %>
            
            <form action="LoginServlet" method="POST">
                <label style="font-size: 14px; color: #555;">Usuario:</label><br>
                <input type="text" name="txtUsuario" required style="width: 100%; padding: 10px; margin-top: 5px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;"><br>
                
                <label style="font-size: 14px; color: #555;">Contraseña:</label><br>
                <input type="password" name="txtPassword" required style="width: 100%; padding: 10px; margin-top: 5px; margin-bottom: 25px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;"><br>
                
                <button type="submit" style="background-color: #0056b3; color: white; width: 100%; padding: 12px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px; font-weight: bold;">Iniciar Sesión</button>
            </form>
        </div>

    </body>
</html>
