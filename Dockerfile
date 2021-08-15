## A PARTIR DE UNA IMAGEN
FROM node:14
# ESPACIO DE TRABAJO
WORKDIR /dockertest
## AÑADIR PACKAGE
ADD package.json package-lock.json /dockertest/
## INSTALAR DEPENDENCIAS
RUN npm install
# COPIAR EL CÓDIGO
ADD . /dockertest
## EXPOSE (DÓNDE CORRA MI APP)
EXPOSE 5000
## CORRER EL CONTENEDOR 
CMD ["node", "app.js"]
