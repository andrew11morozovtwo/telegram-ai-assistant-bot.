#!/bin/bash

# Скрипт для быстрого запуска бота в Docker

echo "🤖 Запуск Telegram AI Bot в Docker..."

# Проверяем наличие .env файла
if [ ! -f .env ]; then
    echo "❌ Файл .env не найден!"
    echo "📝 Создайте файл .env на основе .env.example:"
    echo "   cp .env.example .env"
    echo "   # Затем отредактируйте .env файл с вашими ключами"
    exit 1
fi

# Создаем директорию для логов
mkdir -p logs

# Запускаем через docker-compose
echo "🚀 Запуск бота..."
docker-compose up -d

# Проверяем статус
if [ $? -eq 0 ]; then
    echo "✅ Бот успешно запущен!"
    echo "📊 Для просмотра логов: docker-compose logs -f"
    echo "🛑 Для остановки: docker-compose down"
else
    echo "❌ Ошибка при запуске бота"
    exit 1
fi

