#挑战难度的可选择性
scoreboard players enable @s BattleTrialDifficult


#挑战计时
execute as @e[tag=BattleTrial] run scoreboard players add @s BattleTrialTimer 1

#分难度挑战,正在挑战时的检测
execute as @e[scores={BattleTrialDifficult=1}] at @s run function countdown:battle_trial/difficult/easy/detection 

#撤销进度（1tick）
advancement revoke @s only countdown:timer/timer_tick_1
