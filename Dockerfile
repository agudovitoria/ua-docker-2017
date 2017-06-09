# Una imagen de 108Mb con Linux y el JRE 8
docker run -it --name alpine openjdk:8-jre-alpine sh

# Vamos a ejecutar unos comandos en modo interactivo. Recordad que somos ROOT en el contenedor
mkdir /opt
cd /opt
wget http://download.jboss.org/wildfly/10.1.0.Final/wildfly-10.1.0.Final.zip
unzip wildfly-10.1.0.Final.zip
rm wildfly-10.1.0.Final.zip
ln -s wildfly-10.1.0.Final wildfly
cd wildfly/bin
./standalone.sh