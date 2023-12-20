#一分钟到了，重置计时器
scoreboard players reset @s TimerMin30

#30分钟到了，撤销垂钓河豚成就
advancement revoke @s only countdown:integration/fished_pufferfish
title @s actionbar "\u00a7l\u00a7o\u00A74特殊挑战已重置"

#战斗试炼
execute as @s at @s run function countdown:battle_trial/start
#生成展示实体
#execute as @e[type=minecraft:block_display] run data modify entity @s {}.block_state set value {Name: "minecraft:nether_portal"}
#execute as @e[type=minecraft:block_display] run data modify entity @s {}.Tags set value ["BattleTrial"]
#execute as @e[tag=BattleTrial] at @s run spreadplayers ~ ~ 10 10 under 384 false @s
#execute as @e[tag=BattleTrial] at @s run setblock ~ ~ ~ minecraft:trial_spawner[trial_spawner_state=waiting_for_players]{} replace
#data modify block -30 70 -16 {}.spawn_potentials set value [{weight: 1, data: {entity: {id: "minecraft:zombie"}}}]
#data modify block -30 70 -16 {}.loot_tables_to_eject set value [{weight: 1, data: "countdown:battle_trial/battle_trial"}]

#挑战结束的判断
#execute as @e[type=minecraft:item, nbt={Item: {id: "minecraft:stone"}}] run data modify entity @s {}.Tags set value ["BattleTrialEjection"]
#挑战完成，20范围内玩家加阳寿
#execute as @e[tag=BattleTrialEjection] at @s run scoreboard players add @a[distance=..20] Integration 120
#execute as @e[tag=BattleTrialEjection] at @s run kill @s

#挑战本身倒计时
#execute as @e[tag=BattleTrial] run scoreboard players add @s TimerMin30 1
#execute as @e[tag=BattleTrial] at @s if score @s TimerMin30 matches 36000 run setblock ~ ~ ~ minecraft:air
#execute as @e[tag=BattleTrial] if score @s TimerMin30 matches 36000 run say "挑战超时"
#execute as @e[tag=BattleTrial] if score @s TimerMin30 matches 36000 run kill @s

#撤销计时器成就，使其进入下一分钟计时
advancement revoke @s only countdown:timer/timer_min_30