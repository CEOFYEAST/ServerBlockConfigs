server {
	listen 80;
	listen [::]:80;

	server_name factorio-production-calculator.com www.factorio-production-calculator.com;

	location / {

		index index.html index.htm index.nginx-debian.html;		

		root /home/ubuntu/FactorioProductionCalculator/client/dist;

		try_files $uri $uri/ =404;
	}

	location /favicon.ico {
		
		root /home/ubuntu/FactorioProductionCalculator/client/dist;
		
		try_files $uri $uri/ =404;
	}
}
