#由timer/tick_30调用
execute as @s at @s if score @s BattleTrialDifficult matches 0 run function countdown:battle_trial/difficult/peaceful/start

execute as @s at @s if score @s BattleTrialDifficult matches 1 run function countdown:battle_trial/difficult/easy/start

execute as @s at @s if score @s BattleTrialDifficult matches 2 run function countdown:battle_trial/difficult/normal/start

execute as @s at @s if score @s BattleTrialDifficult matches 3 run function countdown:battle_trial/difficult/hard/start