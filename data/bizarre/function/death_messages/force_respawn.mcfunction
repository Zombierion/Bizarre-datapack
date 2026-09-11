scoreboard players set @s bizarre.health 0
tellraw @a [{"selector":"@s"},{"text":" was disintegrated by unseen forces", color:"white"}]
particle ash ~ ~1 ~ 0.2 0.3 0.2 0 100 force
function bizarre:respawn