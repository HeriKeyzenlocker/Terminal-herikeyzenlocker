#!/data/data/com.termux/files/usr/bin/bash
echo "🔧 Memulai pemulihan Termux..."
termux-setup-storage
pkg update -y && pkg upgrade -y
pkg install -y git zsh figlet ruby cmatrix ncurses-utils coreutils toilet
gem install lolcat
if [ ! -d /sdcard/termux_backup ]; then
    git clone https://github.com/HeriKeyzenlocker/Terminal-herikeyzenlocker.git /sdcard/termux_backup
fi
cp /sdcard/termux_backup/.zshrc ~/
cp /sdcard/termux_backup/.target_ascii.txt ~/
if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
fi
if [ "$SHELL" != "$(which zsh)" ]; then
    chsh -s zsh
fi
echo "✅ Selesai. Tutup Termux lalu buka kembali."
