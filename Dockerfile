# Базовый образ с Python
FROM python:3.9-slim

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app


# Копируем файл зависимостей (например, requirements.txt)
COPY requirements.txt /app/

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем все файлы проекта в контейнер
COPY . /app/

# Открываем порт, на котором будет работать Flask
EXPOSE 5000

# Указываем команду для запуска приложения
CMD ["python", "main.py"]
