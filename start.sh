#!/usr/bin/env bash
# SobbahTech NMS - nyalakan (Linux/macOS).  ./start.sh
set -euo pipefail
cd "$(dirname "$0")"

if [ ! -f .env ]; then
  echo "Membuat .env dari template..."
  cp .env.docker.example .env
  echo "PENTING: edit .env dan ubah DB_PASSWORD sebelum dipakai produksi."
fi

echo "Menjalankan SobbahTech NMS (docker compose)..."
docker compose up -d --build

PORT="$(grep -E '^APP_PORT=' .env | cut -d= -f2 | tr -d '[:space:]')"
PORT="${PORT:-8080}"
echo
echo "SobbahTech NMS aktif → http://localhost:${PORT}"
echo "Cek status : docker compose ps"
echo "Lihat log  : docker compose logs -f app"
echo "Hentikan   : docker compose down"
