#!/data/data/com.termux/files/usr/bin/bash

yes | pkg update && yes | pkg upgrade
yes | pkg install libjansson nano git

git clone https://github.com/khiem11/ccminer.git
chmod +x ccminer/start.sh ccminer/ccminer

echo "✅ Cài đặt hoàn tất! Hãy đảm bảo bạn đã cài app Termux:Boot."
