<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel de Control - Hospital Ricardo Palma</title>
        <style>
            body { font-family: Arial, sans-serif; margin: 0; background-color: #f4f7f6; }
            .header { background-color: #0056b3; color: white; padding: 20px; display: flex; justify-content: space-between; align-items: center; }
            .header h1 { margin: 0; font-size: 24px; }
            .btn-logout { background-color: #dc3545; color: white; padding: 10px 15px; text-decoration: none; border-radius: 5px; font-weight: bold; }
            .container { padding: 40px; }
            .card-grid { display: flex; gap: 20px; margin-top: 30px; flex-wrap: wrap; }
            .card { background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); flex: 1; min-width: 250px; text-align: center; border-top: 4px solid #0056b3; }
            .card h3 { color: #333; }
            .card p { color: #666; font-size: 14px; }
            .btn-modulo { display: inline-block; margin-top: 15px; padding: 10px 20px; background-color: #0056b3; color: white; text-decoration: none; border-radius: 4px; }
        </style>
    </head>
    <body>

        <div class="header">
            <h1>Hospital Ricardo Palma - Sistema de Gestión Clínica (MVC)</h1>
            <a href="login.jsp" class="btn-logout">Cerrar Sesión</a>
        </div>

        <div class="container">
            <h2 style="color: #333;">Bienvenido al panel principal</h2>
            <p style="color: #666; font-size: 16px;">
                Proyecto de automatización de procesos para la excelencia en el servicio de atención hospitalaria.
            </p>

            <div class="card-grid">
                
                <div class="card">
                    <h3>Atención al Usuario</h3>
                    <p>Gestión de citas, triaje y reducción de tiempos de espera en ventanilla.</p>
                    <a href="#" class="btn-modulo">Ingresar al Módulo</a>
                </div>
                
                <div class="card">
                    <h3>Historiales Médicos</h3>
                    <p>Sistema centralizado para evitar registros duplicados y optimizar la búsqueda.</p>
                    <a href="#" class="btn-modulo">Ingresar al Módulo</a>
                </div>
                
                <div class="card">
                    <h3>Mantenimiento y Seguridad</h3>
                    <p>Monitoreo de la infraestructura tecnológica y accesos a bases de datos.</p>
                    <a href="#" class="btn-modulo">Ingresar al Módulo</a>
                </div>

            </div>
        </div>

    </body>
</html>