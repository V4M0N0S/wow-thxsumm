local frame = CreateFrame("Frame")

frame:RegisterEvent("CONFIRM_SUMMON")

frame:SetScript("OnEvent", function(self, event, summonType, summoner)
    if event == "CONFIRM_SUMMON" then
        if IsInRaid() then
            SendChatMessage("THX summ!", "RAID")
        elseif IsInGroup() then
            SendChatMessage("THX summ!", "PARTY")
        else
            SendChatMessage("THX summ!", "SAY")
        end
    end
end)
