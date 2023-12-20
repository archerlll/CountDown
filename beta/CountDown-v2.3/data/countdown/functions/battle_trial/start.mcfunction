summon block_display ~ ~ ~ {Tags:["BattleTrial"]}

title @s title "\u00A75小心！附近出现了怪物，完成挑战获得阳寿"

execute as @e[tag=BattleTrial] run data modify entity @s {}.block_state set value {Name: "minecraft:nether_portal"}

execute as @e[tag=BattleTrial] at @s run spreadplayers ~ ~ 10 10 under 384 false @s

execute as @e[tag=BattleTrial] at @s run setblock ~ ~ ~ minecraft:trial_spawner[trial_spawner_state=waiting_for_players]{} replace

execute as @e[tag=BattleTrial] at @s run data modify block ~ ~ ~ {}.spawn_potentials set value [{weight: 1, data: {entity: {id: "minecraft:zombie"}}}]

execute as @e[tag=BattleTrial] at @s run data modify block ~ ~ ~ {}.loot_tables_to_eject set value [{weight: 1, data: "countdown:battle_trial/battle_trial"}]




