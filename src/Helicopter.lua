print("AH-64 locked and loaded!")
local spinningIds = {}
spinningIds[101546] = true -- MISTS
spinningIds[322729] = true -- RETAIL
local f = CreateFrame("Frame")
f:RegisterUnitEvent("UNIT_SPELLCAST_CHANNEL_START", "player")
f:SetScript(
    "OnEvent",
    function(self, event, ...)
        local _, _, spellID = ...
        if spinningIds[spellID] then
            PlaySoundFile("Interface\\AddOns\\Helicopter\\heli.mp3")
        end
    end
)
