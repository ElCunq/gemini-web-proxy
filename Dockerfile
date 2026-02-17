# Python ve Playwright'ın hazır olduğu resmi imaj
FROM mcr.microsoft.com/playwright/python:v1.41.0-jammy

# Çalışma dizinini ayarla
WORKDIR /app

# Önce sadece bağımlılıkları kopyala (Build cache için daha hızlıdır)
COPY requirements.txt .

# Bağımlılıkları kur
RUN python3 -m pip install --no-cache-dir -r requirements.txt

# Geri kalan tüm kodları içeri kopyala
COPY . .

# Uygulamayı başlat
CMD ["python3", "run.py"]
