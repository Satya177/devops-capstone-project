# Gunakan image Python resmi sebagai dasar
FROM python:3.9-slim

# Tetapkan direktori kerja di dalam container
WORKDIR /app

# Copy file requirements dulu untuk optimasi cache
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy semua kode aplikasi ke dalam container
COPY . .

# Jalankan aplikasi menggunakan Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "service:app"]
