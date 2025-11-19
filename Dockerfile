# Gunakan image dasar Python
FROM python:3.9-slim

# Setel direktori kerja di dalam container
WORKDIR /app

# Salin file requirements.txt dan install dependencies
COPY backend/requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt

# Salin semua file aplikasi ke dalam container
COPY backend /app

# Tentukan port yang digunakan
EXPOSE 8000

# Perintah untuk menjalankan aplikasi FastAPI
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
