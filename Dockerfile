FROM python:3.11-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir flask flask_sqlalchemy werkzeug

RUN mkdir -p /app/instance && chmod -R 777 /app/instance




RUN useradd -m bhanu
USER bhanu
CMD ["python", "main.py"]
