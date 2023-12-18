
scoreboard players reset @s ChallengeInterval

advancement revoke @s only challenge:challenge/reset


#根据概率、难度，生成挑战
execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Duration:200,Radius:5,Color:8190976}

#summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:glass"}}
#summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:nether_portal"}}
#execute as @e[type=minecraft:block_display] run data modify entity @s billboard set value "vertical"
#execute as @e[type=minecraft:block_display] run data modify entity @s transformation.scale set value [8.0f, 10.0f, 1.0f]
#execute as @e[type=minecraft:block_display] run data modify entity @s transformation.translation set value [-4.0f, 0.0f, 0.0f]