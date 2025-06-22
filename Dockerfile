FROM python:3.11-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir flask flask_sqlalchemy werkzeug
RUN useradd -m bhanu
USER bhanu
CMD ["python", "app.py"]
