# Todo Backend - Dart Shelf Server

This repository contains a Dart Shelf server implementation for managing a Todo application. It includes endpoints for creating, updating, deleting, and retrieving todos. It can accept requests in both JSON and Protobuf formats.

POST /api/v1/tasks - Создать задачу (принимает JSON/Protobuf)
GET /api/v1/tasks - Получить все задачи
PUT /api/v1/tasks/:id - Обновить задачу
DELETE /api/v1/tasks/:id - Удалить задачу

## Run on production

To run the server, use the following command:

```bash
# move .env.example to .env, make sure that it has correct environment variable values
cp .env.example .env

# runs in background
docker-compose up -d
# rebuild containers
docker-compose up --build
# shot down containers
docker-compose down
```

## Useful Commands

```bash
dart run build_runner build --delete-conflicting-outputs
```
