FROM debian:buster
RUN apt-get update
RUN apt install nginx -y
RUN apt-get install openssl -y
# Nous allons ensuite créer un dossier qui nous permettra de stocker les fichiers de config de NGINX.
COPY ./tools/scriptng.sh /
RUN chmod +x /scriptng.sh
CMD [ "/scriptng.sh" ]

