firing = false;

if(sprite_index = sPlayerHandgunReload){
	reload = false;
	audio_play_sound(snBeretta92Cock, 2, 0);
	
	//Reload
	var _reload = 20 - handgun;
	if(handgunMax > _reload){
		handgun += _reload;
		handgunMax -= _reload;
	}else{
		handgun += handgunMax;
		handgunMax = 0;
	}
}

if(sprite_index = sPlayerShotgunReload){
	reload = false;
	audio_play_sound(snShotgunBenelliM3Cock, 2, 0);
	
	//Reload
	var _reload = 7 - shotgun;
	if(shotgunMax > _reload){
		shotgun += _reload;
		shotgunMax -= _reload;
	}else{
		shotgun += shotgunMax;
		shotgunMax = 0;
	}
}

if(sprite_index = sPlayerRifleReload){
	reload = false;
	audio_play_sound(snAk47Cock, 2, 0);
	
	//Reload
	var _reload = 30 - rifle;
	if(rifleMax > _reload){
		rifle += _reload;
		rifleMax -= _reload;
	}else{
		rifle += rifleMax;
		rifleMax = 0;
	}
}