local event = iGetEvent( "up-level" );

function OnUse( npc, player )

	local lvl = player.BaseScore.Level;
	local pmid = player:getPromotionId( );
	
   if( pmid >= 0 and pmid <= 1 and lvl >= 190 and lvl <= 256 or lvl > 1000 ) then
        event:addPlayer(player, 3);
		iSend.Say(npc, "Mesmo que morra ser� bem lembrado!" );
   else
        if( pmid >= 2 ) then
			iSend.Say(npc, player.mob.name..", Que Diabos de Deus � voc� ??? " );
        elseif( lvl >= 255 ) then
			iSend.Say(npc, "N�o acha que deva fazer algo mais produtivo ?..( lvl 200~256 )" );
		else
			iSend.Say(npc, "Ter� de fazer muito mais reflex�es para isto, Filho!!!( lvl 200~256 )" );
		end
   end
end
