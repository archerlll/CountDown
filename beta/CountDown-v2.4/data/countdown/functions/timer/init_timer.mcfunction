# say initing timer

# 初始化 1 分钟的计时器
scoreboard objectives add TimerMin1 dummy "timer 1 min"

# 初始化 30 分钟的计时器
scoreboard objectives add TimerMin30 dummy "timer 30 min"

#初始化战斗试炼计时器
function countdown:battle_trial/init_timer