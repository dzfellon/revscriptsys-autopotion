--[[
    Script Name:        Auto Potion
    Description:        Auto use potions
    Original Author:    Ascer
    Final Author: 	dzFEOO
]]

local autopot = TalkAction("!autopot")
local potDELAY = {1000, 1500}     -- delay for Pot is default 1000ms we set a little bit higher
local potMANA = 26029             -- MANA potion ID
local potSPIRIT = 26030           -- SPIRIT potion ID
local potHP = 26031               -- HEALTH potion ID
local mainDelay, mainTime = 0, 0

function autopot.onSay(player, words, param)

	local action = split[1]
		if action == "mana" then			
			if player:getPlayerMana() < player:getPlayerMaxMana()
			then
			Self.UseItemWithMe(potMANA, math.random(potDELAY[1], potDELAY[2]))
		end
	end
	
end

autopot:separator(" ") 
autopot:register()
