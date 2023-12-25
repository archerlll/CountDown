#挑战范围内的敌对生物免疫着火，范围半径=64
#execute as @e[tag=BattleTrial] at @s run execute as @e[type=minecraft:zombie,distance=0..64] run data modify entity @s Fire set value 0s
#execute as @e[tag=BattleTrial] at @s run item replace entity @e[type=minecraft:skeleton,distance=0..64] armor.head with iron_helmet


#完成挑战，范围半径=16
#完成挑战判断实体
execute as @e[type=minecraft:item, nbt={Item: {id: "minecraft:stone"}}] run data modify entity @s {}.Tags set value ["BattleTrialEjection"]

execute as @e[tag=BattleTrialEjection] run execute as @e[tag=BattleTrial] at @s run setblock ~ ~ ~ minecraft:air

execute as @e[tag=BattleTrialEjection] run execute as @e[tag=BattleTrial] at @s run kill @s

execute as @e[tag=BattleTrialEjection] at @s run scoreboard players add @a[distance=..16] Integration 30

execute as @e[tag=BattleTrialEjection] at @s run title @a[distance=..16] title "\u00A76试炼挑战成功，所有成员增加 30 阳寿"

execute as @e[tag=BattleTrialEjection] at @s run kill @s




#挑战超时(3分钟),范围半径=16
execute as @e[tag=BattleTrial] at @s if score @s BattleTrialTimer matches 3600.. run setblock ~ ~ ~ minecraft:air

execute as @e[tag=BattleTrial] if score @s BattleTrialTimer matches 3600.. run title @a[distance=..16] title "\u00A77试炼挑战失败"

execute as @e[tag=BattleTrial] if score @s BattleTrialTimer matches 3600.. run kill @s
