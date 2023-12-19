
#计时器根函数，运行每个计时器
#可能重写
scoreboard players add @s[gamemode=survival] TimerMin1 1
scoreboard players add @s[gamemode=survival] TimerMin30 1


#暂时放在这：
# 淘汰分数小于0的玩家
gamemode spectator @a[scores={Integration=..0}]


#1tick过去了，撤销成就，进入下一tick
advancement revoke @s only countdown:timer/timer_tick_1