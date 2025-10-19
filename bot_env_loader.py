# Загрузка переменных окружения из .env для локального запуска
from dotenv import load_dotenv
import os

load_dotenv()

# Пример использования:
# API_KEY = os.getenv('API_KEY')
# BACKUP_API_KEY = os.getenv('BACKUP_API_KEY')
