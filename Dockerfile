# Используем базовый образ Alpine
FROM nginx:alpine

# Копируем нашу кастомную страницу внутрь образа
COPY custom-page.html /usr/share/nginx/html/

# Настраиваем Nginx и копируем конфигурационный файл
COPY nginx.conf /etc/nginx/nginx.conf
