--[[
    Script Name:        Auto Potion
    Description:        Auto use potions
    Author: 		dzFEOO + Amigos do https://forums.otserv.com.br/
]]

local autopot = TalkAction("!autopot")
local potDELAY = {1000, 1500}     -- delay for Pot is default 1000ms we set a little bit higher
local potMANA = 26029             -- MANA potion ID
local potSPIRIT = 26030           -- SPIRIT potion ID
local potHP = 26031               -- HEALTH potion ID

function autopot.onSay(player, words, param)
	
	if param == "" then
		player:sendCancelMessage("Escolha qual potion deseja ativar em auto: mana, life ou spirit. (ex.: !autopot mana)")
		return false
	end

	if param == "mana" then 
		if player:getMana() < player:getMaxMana() then
		wait(1) player:addMana(100)	print("ok:Mana")
		repeat wait(1) player:addMana(100)	print("ok:Mana")
		until player:getMana() == player:getMaxMana() end
	end
	
	if param == "life" then
		wait(1) player:addMana(100)	print("ok:Spirit")
		repeat wait(1) player:addMana(100)	print("ok:Spirit")
		until player:getMana() == player:getMaxMana() end
	end
	
	if param == "spirit" then
		wait(1) player:addMana(100)	print("ok:Spirit")
		repeat wait(1) player:addMana(100)	print("ok:Spirit")
		until player:getMana() == player:getMaxMana() end
	end
	
end

autopot:separator(" ") 
autopot:register()
