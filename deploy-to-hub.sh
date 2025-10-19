#!/bin/bash

# Скрипт для загрузки бота в Docker Hub

echo "🐳 Загрузка Telegram AI Bot в Docker Hub..."

# Проверяем авторизацию
if ! docker info > /dev/null 2>&1; then
    echo "❌ Docker не запущен или не авторизован"
    echo "Выполните: docker login"
    exit 1
fi

# Запрашиваем имя репозитория
read -p "Введите имя репозитория (например: andrew11morozov/telegram-bot): " REPO_NAME

if [ -z "$REPO_NAME" ]; then
    echo "❌ Имя репозитория не может быть пустым"
    exit 1
fi

# Собираем образ
echo "🔨 Сборка образа..."
docker build -t $REPO_NAME .

if [ $? -ne 0 ]; then
    echo "❌ Ошибка при сборке образа"
    exit 1
fi

# Загружаем в Docker Hub
echo "📤 Загрузка в Docker Hub..."
docker push $REPO_NAME

if [ $? -eq 0 ]; then
    echo "✅ Образ успешно загружен в Docker Hub!"
    echo "🔗 Ссылка: https://hub.docker.com/r/$REPO_NAME"
    echo ""
    echo "📋 Для запуска на сервере используйте:"
    echo "docker run -d --name telegram-bot --env-file .env $REPO_NAME"
else
    echo "❌ Ошибка при загрузке в Docker Hub"
    exit 1
fi
