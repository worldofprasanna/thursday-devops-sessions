FROM nginx:1.15.9-alpine
COPY index.html /usr/share/nginx/html/
RUN echo "This would be printed"
CMD echo "This would not be printed"
ENV enviroment production
CMD ["nginx", "-g", "daemon off;"]
