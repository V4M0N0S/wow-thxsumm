local frame = CreateFrame("Frame")

frame:RegisterEvent("CONFIRM_SUMMON")

frame:SetScript("OnEvent", function(self, event, summonType, summoner)
    if event == "CONFIRM_SUMMON" then
        if IsInRaid() then
            SendChatMessage("Thanks for summ!", "RAID")
        elseif IsInGroup() then
            SendChatMessage("Thanks for summ!", "PARTY")
        else
            SendChatMessage("Thanks for summ!", "SAY")
        end
    end
end)
