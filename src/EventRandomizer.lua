

-- rarities as a percentage --
local commonProb = 60
local uncommonProb = 30
local rareProb = 9
local ultraRareProb = 1

CommonEvents = {1,2,3}
UncommonEvents = {4,5,6}
RareEvents = {7,8,9}
UltraRareEvents = {10}

function SelectRarity ()
    local rng = love.math.random(
        commonProb + uncommonProb +
        rareProb + ultraRareProb
    )
    if rng <= commonProb then
        return SelectCommonEvent()
    elseif rng <= commonProb+uncommonProb then
        return SelectUncommonEvent()
    elseif rng <= commonProb + uncommonProb
                + rareProb then
        return SelectRareEvent()
    else
        return SelectUltraRareEvent()
    end
end

-- these functions use the lua math.random because it's convenient for selecting from a list --
function SelectCommonEvent()
    return CommonEvents[math.random(#CommonEvents)]
end

function SelectUncommonEvent()
    return UncommonEvents[math.random(#UncommonEvents)]
end

function SelectRareEvent()
    return RareEvents[math.random(#RareEvents)]
end

function SelectUltraRareEvent()
    return UltraRareEvents[math.random(#UltraRareEvents)]
end

