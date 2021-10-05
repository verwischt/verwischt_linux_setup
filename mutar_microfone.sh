# MUTAR O MICROFONE E ENVIAR NOTIFICAÇÃO -----------------------------
amixer set Capture toggle; 
data=$(amixer get Capture | grep -c '\[on\]') ; 
if [ $data -ge 1 ]; 
then
    notify-send -i "audio-input-microphone" "Microfone ligado!" "O microfone principal foi desmutado." ; 
else
    notify-send -i "audio-input-microphone-muted" "Microfone desligado!" "O microfone principal foi mutado."; 
fi

# COMANDO EM UMA LINHA -----------------------------------------------
# amixer set Capture toggle; data=$(amixer get Capture | grep -c '\[on\]') ; if [ $data -ge 1 ]; then     notify-send -i "audio-input-microphone" "Microfone ligado!" "O microfone principal foi desmutado." ; else     notify-send -i "audio-input-microphone-muted" "Microfone desligado!" "O microfone principal foi mutado."; fi

# ESTE COMANDO DEPENDE DE: -------------------------------------------
# Pacote "libnotify-bin" https://command-not-found.com/notify-send
# sudo apt install libnotify-bin
