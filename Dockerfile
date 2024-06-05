#FROM nginxbase:latest
#ADD nginx-proxy.conf /opt/app-root/etc/nginx.default.d/nginx-proxy.conf

FROM nginx:1.17
COPY nginx-proxy.conf /etc/nginx/nginx.conf
EXPOSE 8080:8080
CMD ["nginx", "-g", "daemon off;"]
