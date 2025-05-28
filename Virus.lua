--- STEAMODDED HEADER
--- MOD_NAME: Virus
--- MOD_ID: Virus
--- MOD_AUTHOR: [Recep]
--- MOD_DESCRIPTION: A legendary negative joker that spreads negativity
--- BADGE_COLOR: 000000
--- PREFIX: vir
--- VERSION: 1.0.0

----------------------------------------------
------------MOD CODE -------------------------
----------------------------------------------

-- Create the atlas for the sprite
SMODS.Atlas{
    key = "virus_atlas",
    path = "virus.png",
    px = 71,
    py = 95
}

-- Virus Joker
SMODS.Joker{
    key = 'virus',
    loc_txt = {
        name = 'Virus',
        text = {
            "Every {C:attention}20{} discards",
            "spread the {C:dark_edition}Virus{}",
            "{C:inactive}(Makes random joker negative){}",
            "{C:inactive}(#1# discards left){}"
        }
    },
    config = { extra = { discards = 0 } },
    rarity = 4,
    atlas = 'virus_atlas',
    pos = { x = 0, y = 0 },
    cost = 50,
    blueprint_compat = false,
    eternal_compat = false,
    
    loc_vars = function(self, info_queue, center)
        local remaining = 20 - center.ability.extra.discards
        return { vars = { remaining } }
    end,
    
    calculate = function(self, card, context)
        if context.discard and not context.blueprint then
            card.ability.extra.discards = card.ability.extra.discards + 1
            
            -- Only spread virus when we hit exactly 20
            if card.ability.extra.discards == 20 then
                card.ability.extra.discards = 0
                
                -- Show message first, then delay the actual effect
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.3,
                    func = function()
                        local eligible_jokers = {}
                        for i = 1, #G.jokers.cards do
                            local joker = G.jokers.cards[i]
                            if joker ~= card and (not joker.edition or not joker.edition.negative) then
                                table.insert(eligible_jokers, joker)
                            end
                        end
                        
                        if #eligible_jokers > 0 then
                            local target = eligible_jokers[math.random(#eligible_jokers)]
                            target:set_edition({negative = true}, true)
                        end
                        return true
                    end
                }))
                
                return {
                    message = "Virus Spread!",
                    colour = G.C.DARK_EDITION,
                    card = card
                }
            else
                local remaining = 20 - card.ability.extra.discards
                return {
                    message = remaining .. " left",
                    colour = G.C.FILTER,
                    card = card
                }
            end
        end
    end,
    
    add_to_deck = function(self, card, from_debuff)
        card:set_edition({negative = true}, true)
        card.ability.extra.discards = 0
    end
}

----------------------------------------------
------------MOD CODE END ---------------------
----------------------------------------------