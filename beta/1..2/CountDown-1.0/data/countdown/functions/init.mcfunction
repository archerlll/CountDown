#初始化计时器
function countdown:timer/init_timer

# 初始化计分板
scoreboard objectives add Integration dummy "阳寿"

#右边现实阳寿
scoreboard objectives setdisplay sidebar Integration
