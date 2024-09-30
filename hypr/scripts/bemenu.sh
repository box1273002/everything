#!/bin/bash
if pgrep -x "bemenu-run" >/dev/null; then
  killall bemenu-run
else
  bemenu-run --fn "otf-font-awesome 11" --line-height=12 --hp=4 -i -T -p "/" --tf="#F7F2FF" --ff="#F7F2FF" --nf="#F7F2FF" --fbf="#F7F2FF" --sf="#F7F2FF" --af="#F7F2FF" --scf="#F7F2FF" --hf="#F7F2FF" --tb="#17163a" --fb="#17163a" --nb="#17163a" --fbb="#17163a" --sb="#17163a" --ab="#17163a" --scb="#17163a" --hb="#17163a"
fi
