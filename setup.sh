#!/data/data/com.termux/files/usr/bin/bash

set -e

echo "[+] Updating packages..."
pkg update -y
pkg upgrade -y

echo "[+] Installing Python..."
pkg install python -y

echo "[+] Installing Python libraries..."
python -m pip install --upgrade pip
python -m pip install requests pycryptodome urllib3

echo "[+] Installation completed!"