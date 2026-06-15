# Etapa 1: Construir la aplicación con Maven y Java 17
FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app

# Copiamos el pom.xml y la carpeta src al contenedor
COPY . .

# Ejecutamos Maven para compilar tu proyecto y generar el archivo .war
RUN mvn clean package -DskipTests

# Etapa 2: Desplegar en el servidor Apache Tomcat 10
FROM tomcat:10.1-jdk1

# Limpiamos las aplicaciones por defecto de Tomcat para que no haya conflictos
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiamos tu proyecto ya compilado y lo renombramos a ROOT.war
# (Esto hace que tu página cargue directo en el link principal sin poner subrutas)
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Abrimos el puerto 8080 (el que usa Railway por defecto)
EXPOSE 8080

# Arrancamos Tomcat
CMD ["catalina.sh", "run"]
