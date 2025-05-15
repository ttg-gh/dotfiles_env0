#!/bin/bash
# 현재 워크스페이스 번호 가져오기
current_ws=$(hyprctl activeworkspace -j | jq '.id')

# floating 윈도우 목록 가져오기
floating_windows=$(hyprctl clients -j | jq -r '.[] | select(.floating) | .address')

# 각 floating 윈도우를 현재 워크스페이스로 이동
for win in $floating_windows; do
    hyprctl dispatch movetoworkspacesilent $current_ws,address:$win
done
