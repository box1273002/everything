output=$(nordvpn status)

if [ "$output" = "Status: Disconnected" ]; then
  nordvpn c
else
  echo $output
fi
firefox --private-window
