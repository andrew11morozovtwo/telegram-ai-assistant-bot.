<div align="center">

# Telegram AI Assistant Bot

Модернизированный Telegram-бот с интеграцией OpenAI (GPT, Vision, Whisper) и удобным деплоем.

[![Made with Python](https://img.shields.io/badge/Made%20with-Python-3776AB.svg?logo=python&logoColor=white)](https://www.python.org/)
[![Telegram Bot](https://img.shields.io/badge/Telegram-Bot-26A5E4?logo=telegram&logoColor=white)](https://t.me/BotFather)
[![Docker Ready](https://img.shields.io/badge/Docker-Ready-2496ED?logo=docker&logoColor=white)](https://www.docker.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)

</div>

## Возможности

- 📝 Обработка текстовых сообщений (поддержка URL)
- 🖼️ Анализ изображений через OpenAI Vision
- 📄 Извлечение текста из документов: PDF, DOCX, PPTX, XLSX, TXT/CSV, MD/LOG
- 🎤 Транскрипция голосовых/аудио (Whisper)
- 📊 Обработка опросов
- 💬 История диалогов
- 🧠 Fallback API‑ключей при ошибке оплаты (402) для всех подсистем
- 🗃️ Логирование в `logs/telegram_bot_logs.csv`

## Быстрый старт

1) Установите Python 3.9+ (рекомендован 3.10).
2) Клонируйте репозиторий и перейдите в папку проекта.
3) Скопируйте `config.env` → `.env` и заполните значения.
4) Установите зависимости:
```bash
pip install -r requirements.txt
```
5) Запустите бота:
```bash
python bot.py
```

## Переменные окружения

Создайте файл `.env` (или переименуйте `config.env`):
```env
TELEGRAM_BOT_TOKEN=ваш_токен_бота
OPENAI_API_KEY=ваш_api_ключ_openai
BACKUP_OPENAI_API_KEY=резервный_api_ключ_опционально
GEMINI_API_KEY=ваш_api_ключ_gemini_опционально
```

> Никогда не коммитьте реальные ключи. `config.env` добавлен в `.gitignore`.

## Запуск на Windows

```cmd
:: Простой способ
start.bat

:: Через консоль
python run_bot.py
```

## Linux/Mac

```bash
chmod +x start.sh
./start.sh

# или
python3 run_bot.py
# или напрямую
python3 bot.py
```

## Docker

### Docker Compose (рекомендуется)
```bash
cp .env.example .env   # если у вас есть .env.example
docker-compose up -d
docker-compose logs -f
# Остановка
docker-compose down
```

### Ручная сборка образа
```bash
docker build -t telegram-bot .
docker run --rm --env-file .env -v $(pwd)/logs:/app/logs telegram-bot

# Фоновый режим
docker run -d --name telegram-bot --env-file .env -v $(pwd)/logs:/app/logs telegram-bot
```

## Развёртывание

### Публикация образа
```bash
./deploy-to-hub.sh
# или вручную
docker build -t your-username/telegram-bot .
docker push your-username/telegram-bot
```

### На сервере
```bash
./server-deploy.sh
# или
docker-compose -f docker-compose.prod.yml up -d
```

### Управление на сервере
```bash
docker logs -f telegram-bot
docker restart telegram-bot
docker stop telegram-bot
```

## Поддерживаемые форматы

- PDF, DOCX, PPTX, XLSX, TXT/CSV (автоопределение кодировки), MD/LOG

## Требования и зависимости

- Python 3.9+
- `requirements.txt` включает: `telebot`, `openai`, `PyPDF2`, `requests`, `beautifulsoup4`, `python-dotenv`, `python-docx`, `python-pptx`, `openpyxl`, `chardet`

## Структура проекта

```
├── bot.py               # Основной файл бота
├── run_bot.py           # Запуск с установкой зависимостей
├── start.bat            # Windows
├── start.ps1            # PowerShell
├── start.sh             # Linux/Mac
├── requirements.txt     # Зависимости
├── config.env           # Пример env (не коммитить с ключами)
├── logs/
│   └── telegram_bot_logs.csv
├── README.md            # Документация
└── QUICK_START.md       # Быстрый старт
```

## Особенности версии для Cursor

- Убрана зависимость от Google Colab
- Локальные логи в `logs/`
- Загрузка `.env` через `python-dotenv`
- Улучшенная обработка ошибок
- Fallback на резервный ключ при ошибке оплаты (402)

## Логирование

Все взаимодействия сохраняются в `logs/telegram_bot_logs.csv` со столбцами:
`chat_id`, `datetime`, `message`, `message_type`, `ai_response`.

## Устранение неполадок

1. Нет переменных окружения: проверьте наличие `.env` и значения без лишних пробелов
2. Импорт не работает: `pip install -r requirements.txt`
3. Проблемы с OpenAI: проверьте ключ и доступ

## Дорожная карта

- Поддержка мульти‑LLM провайдеров (опционально)
- Расширенная память диалога (персистентность)
- Веб‑панель администрирования

## Вклад и обратная связь

Смотрите `CONTRIBUTING.md` и создавайте `Pull Request`. Для багов и идей — Issues.

## Лицензия

Проект распространяется по лицензии MIT — см. `LICENSE`.

---

Версия: 19_10_2025


