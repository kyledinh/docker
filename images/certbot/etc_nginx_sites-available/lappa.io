server {
        listen 80;
        listen [::]:80;

        root /var/www/lappa.io/html;
        index index.html index.htm index.nginx-debian.html;

        server_name lappa.io demo.lappa.io;

        location / {
                try_files $uri $uri/ =404;
        }
}
