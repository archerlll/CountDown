#初始化计时器
function countdown:timer/init_timer

# 初始化阳寿
scoreboard objectives add Integration dummy "阳寿"

#游戏内右侧展示阳寿
scoreboard objectives setdisplay sidebar Integration
