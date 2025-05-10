#!/data/data/com.termux/files/usr/bin/bash

yes | pkg update && yes | pkg upgrade
yes | pkg install libjansson nano git

git clone https://github.com/khiem11/ccminer.git
chmod +x ccminer/start.sh ccminer/ccminer

mkdir -p ~/.termux/boot

cat > ~/.termux/boot/termux.sh << 'EOF'
#!/data/data/com.termux/files/usr/bin/sh
termux-wake-lock
~/ccminer/start.sh
EOF

chmod +x ~/.termux/boot/termux.sh

echo "✅ Cài đặt hoàn tất! Hãy đảm bảo bạn đã cài app Termux:Boot."
