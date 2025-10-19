#!/bin/bash

# Скрипт для развёртывания бота на сервере

echo "🚀 Развёртывание Telegram AI Bot на сервере..."

# Запрашиваем имя репозитория
read -p "Введите имя репозитория (например: andrew11morozov/telegram-bot): " REPO_NAME

if [ -z "$REPO_NAME" ]; then
    echo "❌ Имя репозитория не может быть пустым"
    exit 1
fi

# Создаём директорию для логов
mkdir -p logs

# Останавливаем существующий контейнер (если есть)
echo "🛑 Остановка существующего контейнера..."
docker stop telegram-bot 2>/dev/null || true
docker rm telegram-bot 2>/dev/null || true

# Запускаем новый контейнер
echo "🚀 Запуск бота..."
docker run -d \
    --name telegram-bot \
    --restart unless-stopped \
    --env-file .env \
    -v $(pwd)/logs:/app/logs \
    -v $(pwd)/telegram_bot_logs.csv:/app/telegram_bot_logs.csv \
    $REPO_NAME

if [ $? -eq 0 ]; then
    echo "✅ Бот успешно запущен на сервере!"
    echo "📊 Для просмотра логов: docker logs -f telegram-bot"
    echo "🛑 Для остановки: docker stop telegram-bot"
else
    echo "❌ Ошибка при запуске бота"
    exit 1
fi
