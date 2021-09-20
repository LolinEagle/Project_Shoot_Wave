function scKnife(_sound, _rateOfFire){
	firing = true;
	sprite_index = sPlayerFire;
	image_speed = 1;
	if(rateOfFire <= 0){
		audio_play_sound(_sound, 2, 0);
		scAttackSlash();
		rateOfFire = _rateOfFire;
	}
}

function scGlock(_sound, _whatIsCreate, _rateOfFire){
	firing = true;
	sprite_index = sPlayerHandgunFire;
	image_speed = 1;
	if(rateOfFire <= 0 && handgun > 0){
		audio_play_sound(_sound, 2, 0);
		
		//Create
		instance_create_layer(
			x + lengthdir_x(110, image_angle - 30),
			y + lengthdir_y(110, image_angle - 30),
			"layerOther",
			_whatIsCreate
		);
		handgun--;
		rateOfFire = _rateOfFire;
	}
}

function scRifle(_sound, _whatIsCreate, _rateOfFire){
	firing = true;
	sprite_index = sPlayerRifleFire;
	image_speed = 1;
	if(rateOfFire <= 0  && rifle > 0){
		audio_play_sound(_sound, 2, 0);
	
		//Create
		instance_create_layer(
			x + lengthdir_x(120, image_angle - 24),
			y + lengthdir_y(120, image_angle - 24),
			"layerOther",
			_whatIsCreate
		);
		rifle--;
		rateOfFire = _rateOfFire;
	}
}

function scShotgun(_sound, _whatIsCreate, _rateOfFire){
	firing = true;
	sprite_index = sPlayerShotgunFire;
	image_speed = 1;
	if(rateOfFire <= 0 && shotgun > 0){
		audio_play_sound(_sound, 0, 0);
	
		//Create
		for(var i = 0; i < 9; i++){
			instance_create_layer(
				x + lengthdir_x(120, image_angle - 24),
				y + lengthdir_y(120, image_angle - 24),
				"layerOther",
				_whatIsCreate
			);
		}
		shotgun--;
		rateOfFire = _rateOfFire;
	}
}