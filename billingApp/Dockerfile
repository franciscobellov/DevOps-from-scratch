FROM nginx:stable-alpine

# Limpia contenido HTML por defecto
RUN rm -rf /usr/share/nginx/html/*

# Copia configuración de nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY mime.types /etc/nginx/mime.types

# Copia archivos del frontend
COPY dist/billingApp /usr/share/nginx/html

# Instala Java 17
RUN apk --no-cache add openjdk17-jre

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk \
    PATH=$JAVA_HOME/bin:$PATH \
    JAVA_OPTS=""

# Verifica instalación de Java
RUN java -version

# Copia el JAR (recuerda pasar --build-arg JAR_FILE=nombre.jar al construir)
ARG JAR_FILE
ADD ${JAR_FILE} app.jar

# Copia script de entrada
COPY appshell.sh /appshell.sh

# Entrada
ENTRYPOINT ["sh", "/appshell.sh"]



