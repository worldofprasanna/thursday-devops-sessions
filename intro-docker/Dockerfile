FROM nginx:1.15.9-alpine
COPY index.html /usr/share/nginx/html
EXPOSE 80
ENV NODE_ENV production
CMD ["nginx", "-g", "daemon off;"]
