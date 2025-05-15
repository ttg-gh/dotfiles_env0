#!/usr/bin/env bash
# workspace 전환 시 실행할 스크립트 예시
CURRENT_WS=$(hyprctl workspaces -j | jq -r '.[] | select(.active==true).id')
hyprctl clients -j \
  | jq -r '.[] | select(.title | test("Picture[- ]in[- ]Picture"; "i")).address' \
  | while read -r addr; do
      hyprctl dispatch movetoworkspace "$CURRENT_WS" "$addr"
    done
