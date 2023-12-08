# LARAVEL DOCKER


## SERVER
- Larevel: http://localhost:9000/ or http://localhost:8000/
- Phpmyadmin:http://localhost:8080/

## IDE
- php7.4
- mysql
- phpmyadmin
- laravel
- nginx
- git



## Initial Setup
1. Copy the `.env.example` file and rename it to `.env`.
2. Update the `DB_PASSWORD` in the `.env` file to match the MySQL password in the `docker-compose.yml` file.

## Running the Environment
- build: Builds the Docker containers.
- dev: Starts the Docker containers in detached mode.
- stop: Stops and removes the Docker containers.
- show: Shows the status of the Docker containers.
- bash: Opens a shell inside the laravel-app container.
- install: Runs composer install inside the laravel-app container.
- update: Runs composer update inside the laravel-app container.
- genkey: Generates an application key using php artisan key:generate.
- optimize: Optimizes the application using php artisan optimize.
- migrate-fresh: Runs a fresh database migration using php artisan migrate:fresh.
- serve: Serves the application using php artisan serve.
- artisan: Runs arbitrary php artisan commands. Example: make artisan migrate.

You can use these commands by running make <target> in your terminal. For example, make dev to start the development environment.

Other Command
### Build
```
bash
docker-compose build


## BUILD
```
docker-compose build
```

*start
```
docker-compose up -d
docker-compose ps
```

### Laravel

***Bash

```
docker exec -it <container-image-id> sh
composer install
php artisan
php artisan key:generate
php artisan serve

```

*STOP SERVER

```
docker-compose down
```

## RUNNING SERVER

```
docker-compose ps
```