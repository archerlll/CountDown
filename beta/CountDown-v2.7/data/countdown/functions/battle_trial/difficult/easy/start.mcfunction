summon block_display ~ ~ ~ {Tags:["BattleTrial"]}

title @s title "\u00A75小心！附近出现了怪物，完成挑战获得阳寿"

execute as @e[tag=BattleTrial] run data modify entity @s {}.block_state set value {Name: "minecraft:slime_block"}

#这条指令可以让block_display不渲染出来
#execute as @e[tag=BattleTrial] run data modify entity @s view_range set value 0.0f

execute as @e[tag=BattleTrial] run data modify entity @s {}.transformation.translation set value [-0.55f , -0.05f, -0.55f]

execute as @e[tag=BattleTrial] run data modify entity @s {}.transformation.scale set value [1.1f , 1.1f, 1.1f]


execute as @e[tag=BattleTrial] at @s run spreadplayers ~ ~ 10 10 under 384 false @s

execute as @e[tag=BattleTrial] at @s run setblock ~ ~ ~ minecraft:trial_spawner[trial_spawner_state=waiting_for_players]{} replace

#僵尸
#execute as @e[tag=BattleTrial] at @s run data modify block ~ ~ ~ {}.spawn_potentials append value {weight: 1, data: {entity: {id: "minecraft:zombie", HandItems:[{id:"minecraft:stone_sword",Count:1b}], ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}]}}}
#射手
#execute as @e[tag=BattleTrial] at @s run data modify block ~ ~ ~ {}.spawn_potentials append value {weight: 1, data: {entity: {id: "minecraft:skeleton", HandItems:[{id:"minecraft:stone_axe",Count:1b}], ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}]}}}
#史莱姆上骑着射手
execute as @e[tag=BattleTrial] at @s run data modify block ~ ~ ~ {}.spawn_potentials append value {custom_spawn_rules: {block_light_limit: {min: 0}, sky_light_limit: {min: 0}}, weight: 1, data: {entity: {id: "minecraft:slime", Size: 3,Passengers: [{id:"minecraft:skeleton", HandItems:[{id:"minecraft:bow",Count:1b}], ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}]}]}}}

execute as @e[tag=BattleTrial] at @s run data modify block ~ ~ ~ {}.loot_tables_to_eject set value [{weight: 1, data: "countdown:battle_trial/battle_trial"}]

