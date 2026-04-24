FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# 🔥 IMPORTANT FIX
RUN chmod +x bgmi

ENV PYTHONUNBUFFERED=1

CMD ["python", "smit.py"]
