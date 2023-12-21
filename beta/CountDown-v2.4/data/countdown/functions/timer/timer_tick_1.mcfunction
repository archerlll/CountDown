#计时器根函数，运行每个计时器
#可能重写
scoreboard players add @s[gamemode=!creative] TimerMin1 1
scoreboard players add @s[gamemode=!creative] TimerMin30 1


#暂时放在这：
# 淘汰分数小于0的玩家
gamemode spectator @s[scores={Integration=..0}, gamemode=survival]
# gamemode survival @a[scores={Integration=1..}, gamemode=spectator]

#战斗试炼的检测
execute as @s at @s run function countdown:battle_trial/timer_tick_1

#1tick过去了，撤销成就，进入下一tick
advancement revoke @s only countdown:timer/timer_tick_1