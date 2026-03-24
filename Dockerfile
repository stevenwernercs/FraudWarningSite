FROM nginx:1.27-alpine
ARG BUILD_REF=unknown
ENV BUILD_REF=${BUILD_REF}

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html/
COPY docker-entrypoint.d/ /docker-entrypoint.d/

RUN find /usr/share/nginx/html -name .gitignore -delete
RUN rm -rf /usr/share/nginx/html/.git /usr/share/nginx/html/cloudflared /usr/share/nginx/html/bin
RUN chmod +x /docker-entrypoint.d/*.sh
