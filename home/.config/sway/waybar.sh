config_file=$(mktemp)
style_file=$(mktemp)
jq '. + input' /etc/swayos/waybar $HOME/.config/swayos/waybar > $config_file
cat /etc/swayos/style.css $HOME/.config/swayos/style.css > $style_file
waybar -c $config_file -s $style_file
