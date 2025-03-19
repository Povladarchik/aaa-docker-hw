# Используем базовый образ Python 3.8
FROM python:3.8-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы приложения
COPY . .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Открываем порт 8080
EXPOSE 8080

# Запускаем сервер
CMD ["python", "server.py"]
