.PHONY: bash build dev show  

build:
	docker-compose build
dev:
	docker-compose up -d
stop:
	docker-compose down
show:
	docker-compose ps
bash:
	docker-compose exec -it laravel bash
install:
	docker-compose exec -T laravel bash -c "composer install"
update:	
	docker-compose exec -T laravel bash -c "composer update"
genkey:
	docker-compose exec -T laravel bash -c "php artisan key:generate"
optimize:
	docker-compose exec -T laravel bash -c "php artisan optimize"
migrate:
	docker-compose exec -T laravel bash -c "php artisan migrate:fresh"
serve:
	docker compose exec -T laravel bash -c "php artisan serve"
artisan:
	docker compose exec -T laravel bash 


