FROM python:3.10-slim

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir --default-timeout=200 --retries=10 -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
