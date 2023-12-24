#挑战难度的可选择性
scoreboard players enable @s BattleTrialDifficult


#所有战斗试炼刷怪笼计时器加1
execute as @e[tag=BattleTrial] run scoreboard players add @s BattleTrialTimer 1

#分难度检测正在挑战时的事件
execute as @e[tag=BattleTrial] at @s run function countdown:battle_trial/difficult/detection 

#撤销进度（1tick）
advancement revoke @s only countdown:timer/timer_tick_1
advancement revoke @s only countdown:battle_trial/root