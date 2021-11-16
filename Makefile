build:
	docker build -t acceptjs_client:latest .
run:
	docker run --rm -d -p 11443:443 -v /Users/kirin/Projects/acceptjs/client:/var/www/html --name acceptjs_client acceptjs_client:latest
stop:
	docker stop acceptjs_client