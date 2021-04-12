--[[
    Script Name:        Auto Potion
    Description:        Auto use potions
    Original Author:    Ascer
    Final Author: 	dzFEOO
	
]]

local autopot = TalkAction("!autopot")

local potDELAY = {1000, 1500}     -- delay for Pot is default 1000ms we set a little bit higher
local potMANA = 23373             -- MANA potion ID
local potSPIRIT = 23374           -- SPIRIT potion ID
local potHP = 23375               -- HEALTH potion ID

local manaBELOW = getPlayerMaxMana() ~= getPlayerMana()
local hpBELOW = getCreatureMaxHealth() ~= getCreatureHealth()

local mainDelay, mainTime = 0, 0

function autopot.onSay(player, words, param)

local action = split[1]
    if action == "mana" then
	
		function onManaChange()
		if Self.ManaPercent() <= manaBELOW then
		Self.UseItemWithMe(potMANA, math.random(potDELAY[1], potDELAY[2]))
		end
	end
	else if  action == "life" then
	
		function onHealthChange()
		if Self.HealthPercent() <= healthBELOW then
		Self.UseItemWithMe(potSPIRIT, math.random(potDELAY[1], potDELAY[2]))
		end
	end
	else if  action == "spirit" then
	
		function onManaChange()
		if Self.ManaPercent() <= manaBELOW then
		Self.UseItemWithMe(potMANA, math.random(potDELAY[1], potDELAY[2]))
		end
	end

	
autopot:separator(" ") 
autopot:register()
