# NEW PLAYER INITIALIZATION
#
# If a player doesn't have any recorded score in the "partyHornCooldown" objective, set that player's score to 0.
execute as @a unless score @s jordanyay.partyHornCooldown matches 0.. run scoreboard players set @s jordanyay.partyHornCooldown 0


# HOLDING PARTY HORN CHECKS & PLAYER TAG MANIPULATION
#
# If a player's main or offhand slot contains a party horn, add each tag to that player as needed.
tag @a[nbt={SelectedItem:{tag:{Tags:["jordanyay:party_horn"]}}},tag=!jordanyay.mainhand.party_horn] add jordanyay.mainhand.party_horn
tag @a[nbt={Inventory:[{Slot:-106b,tag:{Tags:["jordanyay:party_horn"]}}]},tag=!jordanyay.offhand.party_horn] add jordanyay.offhand.party_horn
#
# If a player's main or offhand slot doesn't contain a party horn, remove each tag from that player as needed.
tag @a[nbt=!{SelectedItem:{tag:{Tags:["jordanyay:party_horn"]}}},tag=jordanyay.mainhand.party_horn] remove jordanyay.mainhand.party_horn
tag @a[nbt=!{Inventory:[{Slot:-106b,tag:{Tags:["jordanyay:party_horn"]}}]},tag=jordanyay.offhand.party_horn] remove jordanyay.offhand.party_horn
#
# If a player's main or offhand slot contains a party horn, add the "holding.party_horn" tag to that player.
tag @a[tag=jordanyay.mainhand.party_horn,tag=!jordanyay.holding.party_horn] add jordanyay.holding.party_horn 
tag @a[tag=jordanyay.offhand.party_horn,tag=!jordanyay.holding.party_horn] add jordanyay.holding.party_horn
#
# If a player doesn't have either the "mainhand.party_horn" or "offhand.party_horn" tags, remove the "holding.party_horn" tag from that player.
tag @a[tag=!jordanyay.mainhand.party_horn,tag=!jordanyay.offhand.party_horn,tag=jordanyay.holding.party_horn] remove jordanyay.holding.party_horn
#
# If a player's selected item is a carrot on a stick and that item doesn't have the "party_horn" tag, address any potential item priority conflicts by removing the "holding.party_horn" tag from that player.
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},tag=jordanyay.holding.party_horn] run tag @s[nbt=!{SelectedItem:{tag:{Tags:["jordanyay:party_horn"]}}}] remove jordanyay.holding.party_horn
#
# If a player's selected item is a warped fungus on a stick, address any potential item priority conflicts by removing the "holding.party_horn" tag from that player.
tag @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}},tag=jordanyay.holding.party_horn] remove jordanyay.holding.party_horn


# PARTY HORN COOLDOWN SETTING & SOUND/CONFETTI TRIGGERING
#
# If a player's score in the "partyHornCooldown" objective is equal to 0 and that player is right clicking while holding a party horn (without any item priority conflicts), set that player's score to 30 (1.5 seconds).
scoreboard players set @a[scores={jordanyay.partyHornCooldown=0,jordanyay.rightClick=1..},tag=jordanyay.holding.party_horn] jordanyay.partyHornCooldown 30
#
# If a player's score in the "partyHornCooldown" objective is equal to 30, play the "item.party_horn.toot" sound at that player's location.
execute at @a[scores={jordanyay.partyHornCooldown=30}] run playsound jordanyay:item.party_horn.toot master @a[distance=..32] ~ ~ ~ 1 1 0.1
#
# If a player's score in the "partyHornCooldown" objective is equal to 30, trigger both the blue and magenta confetti particles 1 block in front of that player's eyes.
execute as @a[scores={jordanyay.partyHornCooldown=30}] at @s anchored eyes run particle minecraft:item minecraft:carrot_on_a_stick{CustomModelData:3206429} ^ ^ ^1 0.25 0.25 0.25 0.1 10 normal @a
execute as @a[scores={jordanyay.partyHornCooldown=30}] at @s anchored eyes run particle minecraft:item minecraft:carrot_on_a_stick{CustomModelData:3206430} ^ ^ ^1 0.25 0.25 0.25 0.1 10 normal @a


# ITEM MODEL MANIPULATION
#
# If a player's main or offhand slot contains a fishing rod with the "party_horn" tag, replace that item with air.
item replace entity @a[nbt={SelectedItem:{id:"minecraft:fishing_rod",tag:{Tags:["jordanyay:party_horn"]}}}] weapon.mainhand with minecraft:air
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:fishing_rod",tag:{Tags:["jordanyay:party_horn"]}}]}] weapon.offhand with minecraft:air
#
# If a player's offhand slot doesn't contain a party horn with the "party_horn.blown" tag, their score in the "partyHornCooldown" objective is equal to 30 and that player has the "mainhand.party_horn" tag, apply the "party_horn/blown" item modifier to that player's mainhand slot.
item modify entity @a[nbt=!{Inventory:[{Slot:-106b,tag:{Tags:["jordanyay:party_horn.blown"]}}]},scores={jordanyay.partyHornCooldown=30},tag=jordanyay.mainhand.party_horn] weapon.mainhand jordanyay:party_horn/blown
#
# If a player's score in the "partyHornCooldown" objective is equal to 30, they're holding a party horn in their offhand (without any item priority conflicts) and that player doesn't have the "mainhand.party_horn" tag, apply the "party_horn/blown" item modifier to that player's offhand slot.
item modify entity @a[scores={jordanyay.partyHornCooldown=30},tag=jordanyay.holding.party_horn,tag=jordanyay.offhand.party_horn,tag=!jordanyay.mainhand.party_horn] weapon.offhand jordanyay:party_horn/blown
#
# If a player's offhand slot contains a party horn with the "party_horn.blown" tag and that player has the "mainhand.party_horn" tag, apply the "party_horn/normal" item modifier to that player's mainhand slot.
item modify entity @a[nbt={Inventory:[{Slot:-106b,tag:{Tags:["jordanyay:party_horn.blown"]}}]},tag=jordanyay.mainhand.party_horn] weapon.mainhand jordanyay:party_horn/normal
#
# If a player's main or offhand slot contains a party horn with the "party_horn.blown" tag and that player's score in the "partyHornCooldown" objective is equal to 0, apply the "party_horn/normal" item modifier to that player's main or offhand slots as needed.
item modify entity @a[nbt={SelectedItem:{tag:{Tags:["jordanyay:party_horn.blown"]}}},scores={jordanyay.partyHornCooldown=0},tag=jordanyay.mainhand.party_horn] weapon.mainhand jordanyay:party_horn/normal
item modify entity @a[nbt={Inventory:[{Slot:-106b,tag:{Tags:["jordanyay:party_horn.blown"]}}]},scores={jordanyay.partyHornCooldown=0},tag=jordanyay.offhand.party_horn] weapon.offhand jordanyay:party_horn/normal
#
# If an item entity has the "party_horn.blown" tag, change that entity's "CustomModelData" tag value to "3206427".
execute as @e[nbt={Item:{tag:{Tags:["jordanyay.party_horn.blown"]}}},type=minecraft:item] run data merge entity @s {Item:{tag:{CustomModelData:3206427}}}
#
# If an allay's mainhand slot contains an item with the "party_horn.blown" tag, apply the "party_horn/normal" item modifier to that allay's mainhand slot.
item modify entity @e[type=minecraft:allay,nbt={HandItems:[{tag:{Tags:["jordanyay:party_horn.blown"]}},{}]}] weapon.mainhand jordanyay:party_horn/normal


# PARTY HORN COOLDOWN SUBTRACTION
#
# If a player's score in the "partyHornCooldown" objective is greater than or equal to 1, remove 1 from that player's score.
scoreboard players remove @a[scores={jordanyay.partyHornCooldown=1..}] jordanyay.partyHornCooldown 1
