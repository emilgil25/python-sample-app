# Используем базовый образ Python
FROM python:3.8-slim
# Устанавливаем рабочую директорию
WORKDIR /app
# Копируем файлы приложения
COPY . /app
# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt
# Открываем порт, который будет использовать Flask
EXPOSE 5000
# Устанавливаем переменные окружения
ENV FLASK_APP=app.py
# Команда для запуска приложения
CMD ["flask", "run", "--host=0.0.0.0"]
