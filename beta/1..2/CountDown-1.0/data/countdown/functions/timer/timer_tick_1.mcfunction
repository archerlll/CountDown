# 为所有生存模式的玩家减少 1 分




scoreboard players add @s[gamemode=survival] TimerTick1200 1

advancement revoke @s only countdown:timer/timer_tick_1

#暂时放在这：
# 淘汰分数小于0的玩家
gamemode spectator @a[scores={Integration=..0}]

# say tick1