# SPAWN PARTY HORN
#
# If an item entity on the ground is 5 paper, with 3 more ground items within a 1 block radius of it (1 blue dye, 1 magenta dye and 1 slime ball), spawn a party horn at the position of the paper with the tag "item_killer" added to it.
execute as @e[nbt={Item:{id:"minecraft:paper",Count:5b},OnGround:1b},type=minecraft:item] at @s if entity @e[distance=..1,nbt={Item:{id:"minecraft:blue_dye",Count:1b},OnGround:1b},type=minecraft:item] if entity @e[distance=..1,nbt={Item:{id:"minecraft:magenta_dye",Count:1b},OnGround:1b},type=minecraft:item] if entity @e[distance=..1,nbt={Item:{id:"minecraft:slime_ball",Count:1b},OnGround:1b},type=minecraft:item] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3206427,Tags:["jordanyay:party_horn"],display:{Name:'{"text":"Party Horn","color":"white","italic":"false"}',Lore:['{"text":"Celebrate by making some noise!","color":"purple","italic":"false"}']}}},Tags:["jordanyay.item_killer"]}
#
# If a party horn item entity has the "item_killer" tag, kill the item entities that were used to spawn it.
execute as @e[nbt={Item:{tag:{Tags:["jordanyay:party_horn"]}}},tag=jordanyay.item_killer,type=minecraft:item] at @s run kill @e[distance=..1,limit=1,nbt={Item:{id:"minecraft:paper",Count:5b},OnGround:1b},type=minecraft:item]
execute as @e[nbt={Item:{tag:{Tags:["jordanyay:party_horn"]}}},tag=jordanyay.item_killer,type=minecraft:item] at @s run kill @e[distance=..1,limit=1,nbt={Item:{id:"minecraft:blue_dye",Count:1b},OnGround:1b},type=minecraft:item]
execute as @e[nbt={Item:{tag:{Tags:["jordanyay:party_horn"]}}},tag=jordanyay.item_killer,type=minecraft:item] at @s run kill @e[distance=..1,limit=1,nbt={Item:{id:"minecraft:magenta_dye",Count:1b},OnGround:1b},type=minecraft:item]
execute as @e[nbt={Item:{tag:{Tags:["jordanyay:party_horn"]}}},tag=jordanyay.item_killer,type=minecraft:item] at @s run kill @e[distance=..1,limit=1,nbt={Item:{id:"minecraft:slime_ball",Count:1b},OnGround:1b},type=minecraft:item]
#
# If a party horn item entity has the "item_killer" tag, execute 2 sounds and 1 particle effect at it's current position.
execute at @e[nbt={Item:{tag:{Tags:["jordanyay:party_horn"]}}},tag=jordanyay.item_killer,type=minecraft:item] run playsound minecraft:entity.villager.work_fletcher master @a[distance=..32] ~ ~ ~ 0.75 1 0.1
execute at @e[nbt={Item:{tag:{Tags:["jordanyay:party_horn"]}}},tag=jordanyay.item_killer,type=minecraft:item] run playsound minecraft:block.note_block.bell master @a[distance=..32] ~ ~ ~ 0.75 1 0.1
execute at @e[nbt={Item:{tag:{Tags:["jordanyay:party_horn"]}}},tag=jordanyay.item_killer,type=minecraft:item] run particle minecraft:cloud ~ ~0.5 ~ 0.1 0.1 0.1 0.05 10 normal @a
#
# If a party horn item entity has the "item_killer" tag, remove the tag from that entity.
tag @e[nbt={Item:{tag:{Tags:["jordanyay:party_horn"]}}},tag=jordanyay.item_killer,type=minecraft:item] remove jordanyay.item_killer


# SPAWN PARTY HAT
#
# If an item entity on the ground is 4 paper, with 4 more ground items within a 1 block radius of it (1 pink wool, 1 blue dye, 1 magenta dye and 1 slime ball), spawn a party hat at the position of the paper with the tag "item_killer" added to it.
execute as @e[nbt={Item:{id:"minecraft:paper",Count:4b},OnGround:1b},type=minecraft:item] at @s if entity @e[distance=..1,nbt={Item:{id:"minecraft:pink_wool",Count:1b},OnGround:1b},type=minecraft:item] if entity @e[distance=..1,nbt={Item:{id:"minecraft:blue_dye",Count:1b},OnGround:1b},type=minecraft:item] if entity @e[distance=..1,nbt={Item:{id:"minecraft:magenta_dye",Count:1b},OnGround:1b},type=minecraft:item] if entity @e[distance=..1,nbt={Item:{id:"minecraft:slime_ball",Count:1b},OnGround:1b},type=minecraft:item] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3206426,Tags:["jordanyay:party_hat"],display:{Name:'{"text":"Party Hat","color":"white","italic":"false"}',Lore:['{"text":"Celebrate in style!","color":"purple","italic":"false"}','{"text":""}','{"text":"Usage:","color":"gray","italic":"false"}','{"text":"Right click to equip","color":"gray","italic":"false"}']}}},Tags:["jordanyay.item_killer"]}
#
# If a party hat item entity has the "item_killer" tag, kill the item entities that were used to spawn it.
execute as @e[nbt={Item:{tag:{Tags:["jordanyay:party_hat"]}}},tag=jordanyay.item_killer,type=minecraft:item] at @s run kill @e[distance=..1,limit=1,nbt={Item:{id:"minecraft:paper",Count:4b},OnGround:1b},type=minecraft:item]
execute as @e[nbt={Item:{tag:{Tags:["jordanyay:party_hat"]}}},tag=jordanyay.item_killer,type=minecraft:item] at @s run kill @e[distance=..1,limit=1,nbt={Item:{id:"minecraft:pink_wool",Count:1b},OnGround:1b},type=minecraft:item]
execute as @e[nbt={Item:{tag:{Tags:["jordanyay:party_hat"]}}},tag=jordanyay.item_killer,type=minecraft:item] at @s run kill @e[distance=..1,limit=1,nbt={Item:{id:"minecraft:blue_dye",Count:1b},OnGround:1b},type=minecraft:item]
execute as @e[nbt={Item:{tag:{Tags:["jordanyay:party_hat"]}}},tag=jordanyay.item_killer,type=minecraft:item] at @s run kill @e[distance=..1,limit=1,nbt={Item:{id:"minecraft:magenta_dye",Count:1b},OnGround:1b},type=minecraft:item]
execute as @e[nbt={Item:{tag:{Tags:["jordanyay:party_hat"]}}},tag=jordanyay.item_killer,type=minecraft:item] at @s run kill @e[distance=..1,limit=1,nbt={Item:{id:"minecraft:slime_ball",Count:1b},OnGround:1b},type=minecraft:item]
#
# If a party hat item entity has the "item_killer" tag, execute 2 sounds and 1 particle effect at it's current position.
execute at @e[nbt={Item:{tag:{Tags:["jordanyay:party_hat"]}}},tag=jordanyay.item_killer,type=minecraft:item] run playsound minecraft:entity.villager.work_fletcher master @a[distance=..32] ~ ~ ~ 0.75 1 0.1
execute at @e[nbt={Item:{tag:{Tags:["jordanyay:party_hat"]}}},tag=jordanyay.item_killer,type=minecraft:item] run playsound minecraft:block.note_block.bell master @a[distance=..32] ~ ~ ~ 0.75 1 0.1
execute at @e[nbt={Item:{tag:{Tags:["jordanyay:party_hat"]}}},tag=jordanyay.item_killer,type=minecraft:item] run particle minecraft:cloud ~ ~0.5 ~ 0.1 0.1 0.1 0.05 10 normal @a
#
# If a party hat item entity has the "item_killer" tag, remove the tag from that entity.
tag @e[nbt={Item:{tag:{Tags:["jordanyay:party_hat"]}}},tag=jordanyay.item_killer,type=minecraft:item] remove jordanyay.item_killer
