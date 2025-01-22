FROM python:3.9-slim

# Installer les dépendances nécessaires
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    && apt-get clean

# Installer face_recognition
RUN pip install face_recognition

# Copier ton script dans l'image Docker
COPY app.py /app.py

# Lancer le script
CMD ["python", "/app.py"]
