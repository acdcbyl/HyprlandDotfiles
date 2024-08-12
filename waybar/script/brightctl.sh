# #!/bin/bash

# brightness=$(brightnessctl -m | awk -F, '{print substr($4, 1, length($4)-1)}' | sed 's/%//')
# echo "{\"percentage\": $brightness, \"class\": \"custom-$brightness\"}"
#!/bin/bash

brightness=$(brightnessctl -m | awk -F, '{print substr($4, 1, length($4)-1)}' | sed 's/%//')
echo "{\"percentage\": $brightness, \"tooltip\": \"$brightness\", \"class\": \"custom-$brightness\"}"
