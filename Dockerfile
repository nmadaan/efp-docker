FROM nginx:latest

COPY index.html /usr/share/nginx/html
COPY linux.png /usr/share/nginx/html
RUN chown nginx:nginx /usr/share/nginx/html/*

EXPOSE 80 443 	

CMD ["nginx", "-g", "daemon off;"]
