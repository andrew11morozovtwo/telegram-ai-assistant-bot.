#!/bin/bash

# Скрипт для остановки бота в Docker

echo "🛑 Остановка Telegram AI Bot..."

# Останавливаем контейнер
docker-compose down

if [ $? -eq 0 ]; then
    echo "✅ Бот успешно остановлен!"
else
    echo "❌ Ошибка при остановке бота"
    exit 1
fi


