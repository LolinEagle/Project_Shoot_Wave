if(!global.gamePaused){
	image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
	speed = 3;
	switch(weapon){
		case 0: sprite_index = sPlayerHandgun; break;
		case 1: sprite_index = sPlayerRifle; break;
		case 2: sprite_index = sPlayerShotgun; break;
	}
	
	//Shot
	if(--rateOfFire <= 0 && point_distance(x, y, oPlayer.x, oPlayer.y) < 480){
		switch(weapon){
			case 0:{
				audio_play_sound(snBeretta92Shot, 1, 0);
				var _x = x + lengthdir_x(120, image_angle - 30);
				var _y = y + lengthdir_y(120, image_angle - 30);
				instance_create_layer(
					_x,
					_y,
					"LayerEnnemie",
					oEnnemieBullet9mm
				);
				rateOfFire = 16;
			}
			break;
			case 1:{
				audio_play_sound(snAk47Shoot, 1, 0);
				var _x = x + lengthdir_x(120, image_angle - 24);
				var _y = y + lengthdir_y(120, image_angle - 24);
				instance_create_layer(
					_x,
					_y,
					"LayerEnnemie",
					oEnnemieBullet7mm62
				);
				rateOfFire = 8;
			}
			break;
			case 2:{
				audio_play_sound(snShotgunBenelliM3Shoot, 1, 0);
				var _x = x + lengthdir_x(120, image_angle - 24);
				var _y = y + lengthdir_y(120, image_angle - 24);
				for(var i = 0; i <= 8; i++){
					instance_create_layer(
						_x,
						_y,
						"LayerEnnemie",
						oEnnemieBulletShell
					);
				}
				rateOfFire = 32;
			}
			break;
		}
	}
	
	//Pathfinding
	if(point_distance(x, y, oPlayer.x, oPlayer.y) < 320){speed = 0;}
	mp_potential_step_object(oPlayer.x, oPlayer.y, speed, oEnnemieWall);
	
	//Die
	if(hp <= 0){
		global.theScore++;
		with(instance_create_layer(x, y, layer, oAmmoBox)){
			weapon = other.weapon;
		}
		instance_destroy();
	}
}