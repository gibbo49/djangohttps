server {
    listen 800;
    server_name ${DOMAIN} www.${DOMAIN};

    location /.well-known/acme-challenge/ {
        allow all;
        root /vol/www;
    }

    location / {
        return 301 https://$host$request_uri;
    }
}
