# Быстрый старт

Этот гайд поможет вам запустить Telegram AI Assistant Bot за 5 минут.

## 🚀 Минимальная настройка

### 1. Получите токены

**Telegram Bot Token:**
1. Найдите [@BotFather](https://t.me/BotFather) в Telegram
2. Отправьте `/newbot`
3. Следуйте инструкциям
4. Скопируйте токен

**OpenAI API Key:**
1. Зайдите на [platform.openai.com](https://platform.openai.com)
2. Войдите в аккаунт
3. Перейдите в [API Keys](https://platform.openai.com/api-keys)
4. Создайте новый ключ
5. Скопируйте ключ

### 2. Настройте проект

```bash
# Клонируйте репозиторий
git clone <your-repo-url>
cd bot_assistant

# Скопируйте файл конфигурации
cp config.env.example .env

# Отредактируйте .env файл и добавьте ваши токены
# TELEGRAM_BOT_TOKEN=ваш_токен_бота
# OPENAI_API_KEY=ваш_api_ключ_openai
```

### 3. Установите зависимости

```bash
# Создайте виртуальное окружение (рекомендуется)
python -m venv .venv

# Активируйте окружение
# Windows:
.venv\Scripts\activate
# Linux/Mac:
source .venv/bin/activate

# Установите зависимости
pip install -r requirements.txt
```

### 4. Запустите бота

```bash
python bot.py
```

## 🐳 Docker (еще быстрее)

```bash
# 1. Настройте .env файл (см. выше)
cp config.env.example .env
# Отредактируйте .env

# 2. Запустите через Docker Compose
docker-compose up -d

# 3. Проверьте логи
docker-compose logs -f
```

## ✅ Проверка работы

1. Найдите вашего бота в Telegram по имени
2. Отправьте `/start`
3. Отправьте текстовое сообщение
4. Попробуйте отправить изображение
5. Проверьте логи в папке `logs/`

## 🔧 Возможные проблемы

**"ModuleNotFoundError"** → Запустите `pip install -r requirements.txt`

**"Необходимо установить переменную окружения"** → Проверьте файл `.env`

**"Invalid token"** → Проверьте правильность токенов в `.env`

**"API key not found"** → Проверьте OpenAI API ключ

## 📱 Тестирование функций

- **Текст**: Отправьте любое сообщение
- **Изображения**: Отправьте фото с вопросом
- **Документы**: Отправьте PDF, DOCX, TXT файл
- **Аудио**: Отправьте голосовое сообщение
- **Опросы**: Создайте опрос в группе

## 🚀 Готово!

Ваш бот готов к работе! Для продакшена смотрите раздел "Развёртывание" в основном README.
