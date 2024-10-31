server {
	listen 80;
	listen [::]:80;

	server_name ceofyeast.com www.ceofyeast.com;

	location / {

		index index.html index.htm index.nginx-debian.html;		

		root /home/ubuntu/ceofyeast.com/client/dist;

		try_files $uri $uri/ =404;
	}
}
