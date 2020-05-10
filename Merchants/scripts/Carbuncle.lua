function OnUse(npc, player)
    local lvl = player:getLevel();
	
    if( lvl <= 74 ) then
        player:addCondition(11, 50, 50, getTicketMin(7) );
        player:addCondition(9, 50, 50, getTicketMin(7));
        player:addCondition(15, 10, 10, getTicketMin(7));
        player:addCondition(2, 1, 1, getTicketMin(7));
        iSend.Say(npc, "Sente-se mais forte?...");
    elseif( lvl >= 74 ) then
        iSend.Say(npc, "Ei! Voc� n�o � mais um iniciante!");
    end

    return;
end