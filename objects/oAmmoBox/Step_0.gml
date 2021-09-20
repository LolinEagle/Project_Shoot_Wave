if(!global.gamePaused && place_meeting(x, y, oPlayer)){
	switch(weapon){
		case 0: with(oPlayer){handgunMax += 4;}break;
		case 1: with(oPlayer){rifleMax += 6;}break;
		case 2: with(oPlayer){shotgunMax += 2;}break;
	}
	instance_destroy();
}