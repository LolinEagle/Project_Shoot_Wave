function scReload(_weaponSlot){	
	switch(_weaponSlot){
		case 1:
			var _max = handgunMax;
			var _spriteIndex = sPlayerHandgunReload;
			var _out = snBeretta92ClipOut;
			var _in = snBeretta92ClipIn;
			var _ammo = handgun;
			var _ammoMax = 20;
		break;
		case 2:
			var _max = shotgunMax;
			var _spriteIndex = sPlayerShotgunReload;
			var _out = snShotgunBenelliM3ClipOut;
			var _in = snShotgunBenelliM3ClipIn;
			var _ammo = shotgun;
			var _ammoMax = 7;
		break;
		case 3:
			var _max = rifleMax;
			var _spriteIndex = sPlayerRifleReload;
			var _out = snAk47ClipOut;
			var _in = snAk47ClipIn;
			var _ammo = rifle;
			var _ammoMax = 30;
		break;
	}
	
	//Reload
	if(reload && weaponSlot = _weaponSlot){
		if(_max > 0 && _ammo != _ammoMax){
			sprite_index = _spriteIndex;
			image_speed = 1;
			
			//Audio
			if(!audio_is_playing(_out)){
				audio_play_sound(_out, 2, 0);}
			else if(!audio_is_playing(_in)){
				audio_play_sound(_in, 2, 0);
			}
		}else{
			reload = false;
		}
	}
}