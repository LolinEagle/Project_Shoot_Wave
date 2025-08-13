function scReload(_weaponSlot){
	var _max;
	var _spriteIndex;
	var _out;
	var _in;
	var _ammo;
	var _ammoMax;
	switch(_weaponSlot){
		case 1:
			_max = handgunMax;
			_spriteIndex = sPlayerHandgunReload;
			_out = snBeretta92ClipOut;
			_in = snBeretta92ClipIn;
			_ammo = handgun;
			_ammoMax = 20;
		break;
		case 2:
			_max = shotgunMax;
			_spriteIndex = sPlayerShotgunReload;
			_out = snShotgunBenelliM3ClipOut;
			_in = snShotgunBenelliM3ClipIn;
			_ammo = shotgun;
			_ammoMax = 7;
		break;
		case 3:
			_max = rifleMax;
			_spriteIndex = sPlayerRifleReload;
			_out = snAk47ClipOut;
			_in = snAk47ClipIn;
			_ammo = rifle;
			_ammoMax = 30;
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