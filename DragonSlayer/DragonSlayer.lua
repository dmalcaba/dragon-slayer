DragonSlayer = {}
DragonSlayer.name = "DragonSlayer"

-- Array of possible messages
DragonSlayer.messages = {
    "Dragon sighted on the north side! Hunters and heroes needed!",
    "A great wyrm circles the north side skies! Come help bring it down!",
    "To arms! A dragon threatens the north side!",
    "Dragon on the north side! Blades ready, let's slay it!",
    "Warriors gather! A dragon awaits us on the north side!",
    "A mighty dragon stalks the north side! Join the battle!",
    "Hear the roar? Dragon on the north side! Let's end it!",
    "The north side skies darken with dragon wings! Help slay it!",
    "Dragon hunters wanted on the north side!",
    "A foul dragon circles the north side! Come claim its bounty!",
    "The call goes out! Dragon on the north side!",
    "The north side needs brave souls – dragon sighted!",
    "Steel and spells to the north side! Dragon to be slain!",
    "A dragon has taken the north side skies! Let's slay it!",
    "Champions needed! Dragon on the north side!",
    "The north side cries for heroes – dragon spotted!",
    "Dragon spotted on the north side! Glory and loot await!",
    "Gather up! Dragon hunt on the north side!",
    "The hunt begins on the north side – dragon sighted!",
    "Brave adventurers to the north side! Dragon to slay!",
    "The north side roars with dragon fire! Let's kill it!",
    "A dragon prowls the north side skies – let’s bring it down!",
    "Blades up! Dragon flying over the north side!",
    "The north side faces dragonfire! Come help defeat it!",
    "A dragon challenges us on the north side!",
    "Heroes assemble! Dragon waiting on the north side!"

--[[
    "This one sees a dragon circling the north side. Strong claws and sharp blades are needed!",
    "Warm sands, a dragon hunts on the north side. Come, friends, let us end it.",
    "This one calls for brave hunters. Dragon flies above the north side!",
    "A great beast darkens the sky on the north side. Come help slay it!",
    "The north side trembles beneath dragon wings. This one asks for aid.",
    "This one hears the roar of a dragon on the north side. Let us bring it down together.",
    "A dragon prowls the north side skies. Many warriors will be needed.",
    "Friends, there is a dragon on the north side. Come earn glory and coin.",
    "This one has spotted a dragon on the north side. Come quickly!",
    "The north side burns with dragonfire. Help this one defeat the beast!",
    "Khajiit calls for hunters! Dragon on the north side!",
    "This one believes the north side dragon grows bold. Let us humble it.",
    "A winged terror circles the north side. Join this one in the hunt!",
    "Come, brave ones. A dragon awaits us on the north side.",
    "This one does not wish to face the north side dragon alone.",
    "The north side sky belongs to a dragon for now. Let us change that.",
    "This one has seen dragons before, but the north side one must fall.",
    "Sharp steel and strong magic are needed on the north side. Dragon spotted!",
    "A dragon makes trouble on the north side. Hunters gather!",
    "The north side dragon roars loudly today. Come silence it.",
    "This one smells smoke and dragonfire on the north side.",
    "Come quickly, friends. The north side dragon will not wait.",
    "The hunt begins on the north side. Dragon sighted!",
    "This one calls for brave souls. Dragon above the north side!",
    "A fierce dragon stalks the north side skies. Let us hunt it.",
    "The north side dragon will fall today if enough heroes arrive.",
    "This one asks for help slaying the dragon on the north side.",
    "The north side shakes beneath dragon wings. Come fight!",
    "Brave warriors are needed for the north side dragon!",
    "This one promises glory for those who help slay the north side dragon!"
]]
}

-- Function to send a random message
function DragonSlayer.SendRandomMessage()
    local count = #DragonSlayer.messages
    if count == 0 then return end

    local index = math.random(1, count)
    local message = DragonSlayer.messages[index]

    -- Send to zone chat
    StartChatInput("/z " .. message)
end

-- Initialize addon
function DragonSlayer.OnAddOnLoaded(event, addonName)
    if addonName ~= DragonSlayer.name then return end
    EVENT_MANAGER:UnregisterForEvent(DragonSlayer.name, EVENT_ADD_ON_LOADED)

    -- Register keybind
    ZO_CreateStringId("SI_BINDING_NAME_DRAGON_SLAYER", "Send Dragon Slayer Call")
end

EVENT_MANAGER:RegisterForEvent(DragonSlayer.name, EVENT_ADD_ON_LOADED, DragonSlayer.OnAddOnLoaded)
