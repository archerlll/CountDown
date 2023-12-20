
#挑战计时
execute as @e[tag=BattleTrial] run scoreboard players add @s TimerMin30 1



#完成挑战
execute as @e[type=minecraft:item, nbt={Item: {id: "minecraft:stone"}}] run data modify entity @s {}.Tags set value ["BattleTrialEjection"]
#感觉会出现bug
execute as @e[tag=BattleTrialEjection] run execute as @e[tag=BattleTrial] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[tag=BattleTrialEjection] run execute as @e[tag=BattleTrial] at @s run kill @s

execute as @e[tag=BattleTrialEjection] at @s run scoreboard players add @a[distance=..48] Integration 60
execute as @e[tag=BattleTrialEjection] at @s run title @a[distance=..48] title "\u00A76试炼挑战成功，所有成员增加 60 阳寿"
execute as @e[tag=BattleTrialEjection] at @s run kill @s




#挑战超时
execute as @e[tag=BattleTrial] at @s if score @s TimerMin30 matches 36000.. run setblock ~ ~ ~ minecraft:air

execute as @e[tag=BattleTrial] if score @s TimerMin30 matches 36000.. run title @a[distance=..48] title "\u00A77试炼挑战失败"

execute as @e[tag=BattleTrial] if score @s TimerMin30 matches 36000.. run kill @s

#撤销进度（1tick）
advancement revoke @s only countdown:battle_trial/tick

#注，目前挑战超时的计分项没有独立，选用了TimerMin30