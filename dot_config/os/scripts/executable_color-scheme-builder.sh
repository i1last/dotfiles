#!/usr/bin/env bash

theme=$(cat $HOME/.config/gtk-3.0/settings.ini | grep -oP "gtk-theme-name=\K.*")
gtkCss="/usr/share/themes/${theme}/gtk-4.0/gtk.css"

rgba2hex ()
{
  dec2hex ()
  {
    printf "%02X" $1
  }

  rgba=$1
  rgba=${rgba#"rgba("}
  rgba=${rgba%")"}
  IFS=', ' read red green blue alpha <<< "$rgba"

  # Alpha is not used now
  alpha=$(echo "$alpha * 255" | bc)
  alpha=${alpha%.*}

  hex="#$(dec2hex $red)$(dec2hex $green)$(dec2hex $blue)"

  echo $hex
}

color2hex() {
  declare -A cssStandartColors
  cssStandartColors["black"]="#000000"
  cssStandartColors["silver"]="#C0C0C0"
  cssStandartColors["gray"]="#808080"
  cssStandartColors["white"]="#FFFFFF"
  cssStandartColors["maroon"]="#800000"
  cssStandartColors["red"]="#FF0000"
  cssStandartColors["purple"]="#800080"
  cssStandartColors["fuchsia"]="#FF00FF"
  cssStandartColors["green"]="#008000"
  cssStandartColors["lime"]="#00FF00"
  cssStandartColors["olive"]="#808000"
  cssStandartColors["yellow"]="#FFFF00"
  cssStandartColors["navy"]="#000080"
  cssStandartColors["blue"]="#0000FF"
  cssStandartColors["teal"]="#008080"
  cssStandartColors["aqua"]="#00FFFF"

  hex=${cssStandartColors[$1]}

  if [ -z "$hex" ]; then
    echo "#FF0000"  # if color does not found
  else
    echo $hex
  fi
}

getColor ()
{
  incolor=$(cat ${gtkCss} | grep -oP "$1 \K[^;]*" | tail -n 1)

  if [[ ${#incolor} -eq 4 ]]; then  # if #111
    hex=${incolor:1}
    color="#${hex}${hex}"

  elif [[ ${incolor} == *"rgba"* ]]; then  # if rgba(100, 100, 100, 0.85)
    color=$(rgba2hex $incolor)

  elif [[ ${incolor} =~ ^#([0-9a-fA-F]{6})$ ]]; then  # if #111222
    color=$incolor

  else  # if black
    color2hex $incolor
  fi

  echo $color
}

buildBspwm ()
{
  file="${workdir}/_configs/bspwm/colors.sh"
  touch $file

  echo "#!/usr/bin/env bash" > $file
  for key in "${!color[@]}"; do
    echo "${key}='${color[$key]}'" >> $file
  done
}

buildPolybar ()
{
  file="${workdir}/_configs/polybar/colors.ini"
  touch $file

  echo "[colors]" > $file
  for key in "${!color[@]}"; do
    echo "${key} = ${color[$key]}" >> $file
  done
}

buildRofi ()
{
  file="${workdir}/_configs/rofi/colors.rasi"
  touch $file

  echo "* {" > ${file}
  for key in "${!color[@]}"; do
    echo "--${key}: ${color[$key]};" >> $file
  done
  echo "}" >> $file
}

buildKitty ()
{
  file="${workdir}/_configs/kitty/colors.conf"
  touch $file

  echo "" > $file
  echo "background        ${color[bg]}" >> $file
  echo "foreground        ${color[fg]}" >> $file
  echo "cursor            ${color[accent]}" >> $file
  echo "cursor_text_color ${color[bg]}" >> $file
  # first dull color, then bright color
  # black
  echo "color0  ${color[dark5]}" >> $file
  echo "color8  ${color[dark1]}" >> $file
  # red
  echo "color1  ${color[red5]}" >> $file
  echo "color9  ${color[red1]}" >> $file
  # green
  echo "color2  ${color[green5]}" >> $file
  echo "color10 ${color[green1]}" >> $file
  # yellow
  echo "color3  ${color[yellow5]}" >> $file
  echo "color11 ${color[yellow1]}" >> $file
  # blue
  echo "color4  ${color[blueberry5]}" >> $file
  echo "color12 ${color[blueberry1]}" >> $file
  # magenta
  echo "color5  ${color[purple5]}" >> $file
  echo "color13 ${color[purple1]}" >> $file
  # cyan
  echo "color6  ${color[blue5]}" >> $file
  echo "color14 ${color[blue1]}" >> $file
  # white
  echo "color7  ${color[light5]}" >> $file
  echo "color15 ${color[light1]}" >> $file
}

declare -A color
color[strawberry1]=$(getColor STRAWBERRY_100)
color[strawberry2]=$(getColor STRAWBERRY_300)
color[strawberry3]=$(getColor STRAWBERRY_500)
color[strawberry4]=$(getColor STRAWBERRY_700)
color[strawberry5]=$(getColor STRAWBERRY_900)
color[banana1]=$(getColor BANANA_100)
color[banana2]=$(getColor BANANA_300)
color[banana3]=$(getColor BANANA_500)
color[banana4]=$(getColor BANANA_700)
color[banana5]=$(getColor BANANA_900)
color[lime1]=$(getColor LIME_100)
color[lime2]=$(getColor LIME_300)
color[lime3]=$(getColor LIME_500)
color[lime4]=$(getColor LIME_700)
color[lime5]=$(getColor LIME_900)
color[blueberry1]=$(getColor BLUEBERRY_100)
color[blueberry2]=$(getColor BLUEBERRY_300)
color[blueberry3]=$(getColor BLUEBERRY_500)
color[blueberry4]=$(getColor BLUEBERRY_700)
color[blueberry5]=$(getColor BLUEBERRY_900)
color[grape1]=$(getColor GRAPE_100)
color[grape2]=$(getColor GRAPE_300)
color[grape3]=$(getColor GRAPE_500)
color[grape4]=$(getColor GRAPE_700)
color[grape5]=$(getColor GRAPE_900)
color[cocoa1]=$(getColor COCOA_100)
color[cocoa2]=$(getColor COCOA_300)
color[cocoa3]=$(getColor COCOA_500)
color[cocoa4]=$(getColor COCOA_700)
color[cocoa5]=$(getColor COCOA_900)
color[silver1]=$(getColor SILVER_100)
color[silver2]=$(getColor SILVER_300)
color[silver3]=$(getColor SILVER_500)
color[silver4]=$(getColor SILVER_700)
color[silver5]=$(getColor SILVER_900)
color[slate1]=$(getColor SLATE_100) 
color[slate2]=$(getColor SLATE_300) 
color[slate3]=$(getColor SLATE_500) 
color[slate4]=$(getColor SLATE_700) 
color[slate5]=$(getColor SLATE_900) 
color[black1]=$(getColor BLACK_100)
color[black2]=$(getColor BLACK_300)
color[black3]=$(getColor BLACK_500)
color[black4]=$(getColor BLACK_700)
color[black5]=$(getColor BLACK_900)
color[blue1]=$(getColor blue_1)
color[blue2]=$(getColor blue_2)
color[blue3]=$(getColor blue_3)
color[blue4]=$(getColor blue_4)
color[blue5]=$(getColor blue_5)
color[green1]=$(getColor green_1)
color[green2]=$(getColor green_2)
color[green3]=$(getColor green_3)
color[green4]=$(getColor green_4)
color[green5]=$(getColor green_5)
color[yellow1]=$(getColor yellow_1)
color[yellow2]=$(getColor yellow_2)
color[yellow3]=$(getColor yellow_3)
color[yellow4]=$(getColor yellow_4)
color[yellow5]=$(getColor yellow_5)
color[orange1]=$(getColor orange_1)
color[orange2]=$(getColor orange_2)
color[orange3]=$(getColor orange_3)
color[orange4]=$(getColor orange_4)
color[orange5]=$(getColor orange_5)
color[red1]=$(getColor red_1)
color[red2]=$(getColor red_2)
color[red3]=$(getColor red_3)
color[red4]=$(getColor red_4)
color[red5]=$(getColor red_5)
color[purple1]=$(getColor purple_1)
color[purple2]=$(getColor purple_2)
color[purple3]=$(getColor purple_3)
color[purple4]=$(getColor purple_4)
color[purple5]=$(getColor purple_5)
color[brown1]=$(getColor brown_1)
color[brown2]=$(getColor brown_2)
color[brown3]=$(getColor brown_3)
color[brown4]=$(getColor brown_4)
color[brown5]=$(getColor brown_5)
color[light1]=$(getColor light_1)
color[light2]=$(getColor light_2)
color[light3]=$(getColor light_3)
color[light4]=$(getColor light_4)
color[light5]=$(getColor light_5)
color[dark1]=$(getColor dark_1)
color[dark2]=$(getColor dark_2)
color[dark3]=$(getColor dark_3)
color[dark4]=$(getColor dark_4)
color[dark5]=$(getColor dark_5)
color[accent]=$(getColor accent_color)
color[destructive]=$(getColor destructive_color)
color[success]=$(getColor success_color)
color[warning]=$(getColor warning_color)
color[error]=$(getColor error_color)
color[bg]=$(getColor window_bg_color)
color[fg]=$(getColor window_fg_color)

buildBspwm
buildPolybar
buildKitty
buildRofi
