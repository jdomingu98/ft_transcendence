FROM nginx:alpine

# Update and Install openssl
RUN apk update && apk add --no-cache openssl

# Generate a self-signed SSL certificate
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/tr-private.key -out /etc/ssl/certs/tr-cert.crt -subj "/C=ES/ST=Andalucia/L=Malaga/O=42Malaga/OU=42Malaga/CN=transcendence"

# Copy the nginx configuration file
COPY ./nginx.conf /etc/nginx/nginx.conf
