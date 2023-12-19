#一分钟到了，重置计时器
scoreboard players reset @s TimerMin30

#30分钟到了，撤销垂钓河豚成就
advancement revoke @s only countdown:integration/fished_pufferfish
title @s actionbar "\u00a7l\u00a7o\u00A74特殊挑战已重置"

#撤销计时器成就，使其进入下一分钟计时
advancement revoke @s only countdown:timer/timer_min_30