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
	docker-compose exec -it laravel-app sh
install:
	docker-compose exec -T laravel-app sh -c "composer install"
update:	
	docker-compose exec -T laravel-app sh -c "composer update"
genkey:
	docker-compose exec -T laravel-app sh -c "php artisan key:generate"
optimize:
	docker-compose exec -T laravel-app sh -c "php artisan optimize"
migrate-fresh:
	docker-compose exec -T laravel-app sh -c "php artisan migrate:fresh"
serve:
	docker compose exec -T laravel-app sh -c "php artisan serve"
artisan:
	docker-compose exec -T laravel-app sh -c "php artisan $(subst ",\",$(filter-out $@,$(MAKECMDGOALS)))"


