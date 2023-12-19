
#一分钟到了，重置计时器
scoreboard players reset @s TimerMin1

#一分钟到了，减去1阳寿
scoreboard players remove @s Integration 1
title @s[gamemode=survival] actionbar "\u00a7l\u00a7o\u00A74+1s"

#撤销计时器成就，使其进入下一分钟计时
advancement revoke @s only countdown:timer/timer_min_1