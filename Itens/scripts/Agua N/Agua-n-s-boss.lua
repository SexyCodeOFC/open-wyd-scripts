local event = iGetEvent("agua-N");

function OnUse( Op, Slot, Beg, player )
	return sendToWater(player, event, 9);
end