# HOLDING PARTY HAT CHECKS & PLAYER TAG MANIPULATION
#
# If a player's main or offhand slot contains a party hat, add each tag to that player as needed.
tag @a[nbt={SelectedItem:{tag:{Tags:["jordanyay:party_hat"]}}},tag=!jordanyay.mainhand.party_hat] add jordanyay.mainhand.party_hat
tag @a[nbt={Inventory:[{Slot:-106b,tag:{Tags:["jordanyay:party_hat"]}}]},tag=!jordanyay.offhand.party_hat] add jordanyay.offhand.party_hat
#
# If a player's main or offhand slot doesn't contain a party hat, remove each tag from that player as needed.
tag @a[nbt=!{SelectedItem:{tag:{Tags:["jordanyay:party_hat"]}}},tag=jordanyay.mainhand.party_hat] remove jordanyay.mainhand.party_hat
tag @a[nbt=!{Inventory:[{Slot:-106b,tag:{Tags:["jordanyay:party_hat"]}}]},tag=jordanyay.offhand.party_hat] remove jordanyay.offhand.party_hat
#
# If a player's main or offhand slot contains a party hat, add the "holding.party_hat" tag to that player.
tag @a[tag=jordanyay.mainhand.party_hat,tag=!jordanyay.holding.party_hat] add jordanyay.holding.party_hat
tag @a[tag=jordanyay.offhand.party_hat,tag=!jordanyay.holding.party_hat] add jordanyay.holding.party_hat
#
# If a player doesn't have either the "mainhand.party_hat" or "offhand.party_hat" tags, remove the "holding.party_hat" tag from that player.
tag @a[tag=!jordanyay.mainhand.party_hat,tag=!jordanyay.offhand.party_hat,tag=jordanyay.holding.party_hat] remove jordanyay.holding.party_hat
#
# If a player's selected item is a carrot on a stick and that item doesn't have the "party_hat" tag, address any potential item priority conflicts by removing the "holding.party_hat" tag from that player.
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},tag=jordanyay.holding.party_hat] run tag @s[nbt=!{SelectedItem:{tag:{Tags:["jordanyay:party_hat"]}}}] remove jordanyay.holding.party_hat
#
# If a player's selected item is a warped fungus on a stick, address any potential item priority conflicts by removing the "holding.party_hat" tag from that player.
tag @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}},tag=jordanyay.holding.party_hat] remove jordanyay.holding.party_hat


# PARTY HAT EQUIP SOUND TRIGGERING
#
# If a player has nothing on their head, they're right clicking and that player is holding a party hat (without any item priority conflicts), play the "item.armor.equip_generic" sound at that player's location.
execute at @a[nbt=!{Inventory:[{Slot:103b}]},scores={jordanyay.rightClick=1..},tag=jordanyay.holding.party_hat] run playsound minecraft:item.armor.equip_generic master @a[distance=..32] ~ ~ ~ 1 1.25 0.1


# ITEM MODEL MANIPULATION
#
# If a player's main or offhand slot contains a fishing rod with the "party_hat" tag, replace that item with air.
item replace entity @a[nbt={SelectedItem:{id:"minecraft:fishing_rod",tag:{Tags:["jordanyay:party_hat"]}}}] weapon.mainhand with minecraft:air
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:fishing_rod",tag:{Tags:["jordanyay:party_hat"]}}]}] weapon.offhand with minecraft:air
#
# If a player has nothing on their head, they're right clicking, they're holding a party hat (without any item priority conflicts), they're in survival mode, they have the "offhand.party_hat" tag and that player doesn't have the "mainhand.party_hat" tag, replace that player's offhand slot with air.
item replace entity @a[gamemode=survival,nbt=!{Inventory:[{Slot:103b}]},scores={jordanyay.rightClick=1..},tag=jordanyay.holding.party_hat,tag=jordanyay.offhand.party_hat,tag=!jordanyay.mainhand.party_hat] weapon.offhand with minecraft:air
#
# If a player has nothing on their head, they're right clicking, they're holding a party hat (without any item priority conflicts), they're in survival mode and that player has the "mainhand.party_hat" tag, replace that player's mainhand slot with air.
item replace entity @a[gamemode=survival,nbt=!{Inventory:[{Slot:103b}]},scores={jordanyay.rightClick=1..},tag=jordanyay.holding.party_hat,tag=jordanyay.mainhand.party_hat] weapon.mainhand with minecraft:air
#
# If a player has nothing on their head, they're right clicking, that player is holding a party hat (without any item priority conflicts), replace that player's head slot with a party hat.
item replace entity @a[nbt=!{Inventory:[{Slot:103b}]},scores={jordanyay.rightClick=1..},tag=jordanyay.holding.party_hat] armor.head with minecraft:carrot_on_a_stick{CustomModelData:3206426,Tags:["jordanyay:party_hat"],display:{Name:'{"text":"Party Hat","color":"white","italic":"false"}',Lore:['{"text":"Celebrate in style!","color":"purple","italic":"false"}','{"text":""}','{"text":"Usage:","color":"gray","italic":"false"}','{"text":"Right click to equip","color":"gray","italic":"false"}']}}
