#!/data/data/com.termux/files/usr/bin/bash

yes | pkg update && yes | pkg upgrade
yes | pkg install libjansson nano git

git clone https://github.com/khiem11/ccminer.git
chmod +x ccminer/start.sh ccminer/ccminer
mkdir -p ~/.termux/boot && echo -e '#!/data/data/com.termux/files/usr/bin/sh\ntermux-wake-lock\n~/ccminer/start.sh' > ~/.termux/boot/termux.sh && chmod +x ~/.termux/boot/termux.sh && echo -e '\ntermux-wake-lock\ncd ~/ccminer && ./start.sh' >> $PREFIX/etc/bash.bashrc

echo "✅ Cài đặt hoàn tất! Hãy đảm bảo bạn đã cài app Termux:Boot."
