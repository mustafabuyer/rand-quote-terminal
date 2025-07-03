function ayet_kutu_ustalt() {
  local ayet=$(grep -vE '^[+-] ' ./random_quotes.txt | shuf -n 1)
  echo "$ayet" > ./son_ayet.txt

  local term_width=$(tput cols)
  local color="%F{180}"
  local color2="%F{144}"	
  local reset="%f"
  local bold="%B"
  local unbold="%b"

  local iç_genişlik=$((term_width - 5))
  local kenar_uzunluk=$(((term_width - 41) / 2))
  local çizgi=$(printf '─%.0s' $(seq 1 $kenar_uzunluk))

  print -P "${bold}${color2}╭✧$çizgi ❀ ┈ ❁ ┈ ✿ ┈ ✧═✧  ☪  ✧═✧ ┈ ✿ ┈ ❁ ┈ ❀ $çizgi✧╮${reset}${unbold}"

  echo "$ayet" | fold -s -w $iç_genişlik | while IFS= read -r line; do
    local line_len=${#line}
    local pad_left=$(((iç_genişlik - line_len) / 2))
    local pad_right=$((iç_genişlik - line_len - pad_left))
    local boşluk_sol=$(printf ' %.0s' $(seq 1 $pad_left))
    local boşluk_sağ=$(printf ' %.0s' $(seq 1 $pad_right))
    print -P "${color2}✶ ${color}${boşluk_sol}${line}${boşluk_sağ} ${color2}✶${reset}"
  done

  print -P "${bold}${color2}╰✧════✧$çizgi┐ ╚═⚛═══❖═╗🜂🜃🜁🜃🜂╔═❖═══⚛═╝ ┌$çizgi✧════✧╯${reset}${unbold}"
}
