FROM mcr.microsoft.com/playwright/python:v1.41.0-jammy

WORKDIR /app

# Bağımlılıkları kur
COPY requirements.txt .
RUN python3 -m pip install --no-cache-dir -r requirements.txt

# Chromium ve sistem bağımlılıklarını yükle
RUN playwright install --with-deps chromium

COPY . .

CMD ["python3", "run.py"]
