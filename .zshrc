# ===============================
#  CYBER EXPLORE TERMINAL vFINAL
# ===============================

matrix_rain() {
    echo -e "\e[1;31mMengaktifkan MATRIX SYSTEM...\e[0m"
    tput civis
    clear
    timeout 5 cmatrix -b -C red -u 2
    tput cnorm
    clear
}

loading_bar() {
    echo ""
    echo -e "\e[1;31mBERANI\e[0m \e[1;97mBEBAS BERKARYA\e[0m"
    echo ""
    local width=30
    for ((i=0; i<=100; i+=10)); do
        filled=$((i * width / 100))
        bar=""
        kosong=""
        for ((j=0; j<filled; j++)); do
            bar="${bar}█"
        done
        for ((j=filled; j<width; j++)); do
            kosong="${kosong}░"
        done
        printf "\r\e[1;31m[ SYSTEM LOADING ]\e[0m ➜ \e[1;97m[%s%s] %3d%%\e[0m" "$bar" "$kosong" "$i"
        sleep 0.1
    done
    echo ""
    echo ""
}

show_banner() {
    echo -e "\e[1;31m$(figlet -f standard "Cyber Explore")\e[0m"
    echo -e "\e[1;97m$(figlet -f standard "HeriKeyzenlocker")\e[0m"
}

show_target() {
    while IFS= read -r line; do
        echo -e "$line"
    done < ~/.target_ascii.txt
}

show_full() {
    echo ""
    echo -e "\e[1;31m════════════════════════════════════════════════════════\e[0m"
    echo -e "\e[1;96m🔥 CYBER EXPLORE MODE: ACTIVATED 🔥\e[0m" | lolcat
    echo -e "\e[1;31m════════════════════════════════════════════════════════\e[0m"
    echo ""
    echo -e "  \e[1;96m\e[1m💪 SETIAP ERROR ADALAH PELAJARAN.\e[0m"
    echo -e "  \e[1;96m\e[1mTERUSLAH BERJUANG, CYBER EXPLORE!\e[0m"
    echo -e "  \e[1;96m\e[1mJANGAN PERNAH MENYERAH, TERUSLAH MENCOBA.\e[0m"
    echo -e "  \e[1;96m\e[1mBELAJAR LOGIKA, KREATIVITAS, DAN SETERUSNYA.\e[0m"
    echo -e "  \e[1;97m\e[1m💪 ANDA HEBAT, BOS! 💪\e[0m" | lolcat
    echo ""
    echo -e "\e[1;31m════════════════════════════════════════════════════════\e[0m"
    echo ""
    sleep 2

    matrix_rain
    command clear
    show_banner
    echo -e "\e[1;31m============================================================\e[0m"
    show_target
    echo -e "\e[1;31m============================================================\e[0m"
    loading_bar
    echo -e "\e[1;31m============================================================\e[0m"
    echo "🌀 HERIKEYZENLOCKER ONLINE. SIAP MELAKSANAKAN PERINTAH. 🌀" | lolcat
    echo -e "\e[1;31m============================================================\e[0m"
}

alias clear='show_full'
show_full

export ZSH="$HOME/.oh-my-zsh"
if [ -f "$ZSH/oh-my-zsh.sh" ]; then
    ZSH_THEME="robbyrussell"
    plugins=(git zsh-autosuggestions)
    source $ZSH/oh-my-zsh.sh
fi

PROMPT="%F{red}┌─[%F{white}⌐■_■%F{red}]─[%F{white}CyberExplore%F{red}@%F{white}HeriKeyzenlocker%F{red}]─[%F{white}%~%F{red}]─%F{white}➜%f
%F{red}└─[%F{white}::%F{red}]──>%f "
