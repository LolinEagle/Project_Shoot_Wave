if(!global.gamePaused){
	image_angle = point_direction(x, y, mouse_x, mouse_y);

	#region Movements
	var bbox_side;
	var left  = keyboard_check(global.gameLeft);
	var up	  = keyboard_check(global.gameUp);
	var right = keyboard_check(global.gameRight);
	var down  = keyboard_check(global.gameDown);
	hspd = (right - left) * 16;
	vspd = (down  - up  ) * 16;
	x += hspd;
	y += vspd;

	//Horizontal
	if(hspd > 0){bbox_side = bbox_right;}
	else{bbox_side = bbox_left;}
	if (tilemap_get_at_pixel(tilemapH, bbox_side + hspd, bbox_top) != 0)
	|| (tilemap_get_at_pixel(tilemapH, bbox_side + hspd, bbox_bottom) != 0)
	{
		if(hspd > 0){x -= 16;}
		else{x += 16;}
	}

	//Vertical
	if(vspd > 0){bbox_side = bbox_bottom;}
	else{bbox_side = bbox_top;}
	if (tilemap_get_at_pixel(tilemapV, bbox_left , bbox_side + vspd) != 0)
	|| (tilemap_get_at_pixel(tilemapV, bbox_right, bbox_side + vspd) != 0)
	{
		if(vspd > 0){y -= 16;}
		else{y += 16;}
	}#endregion

	#region Weapon
	rateOfFire--;
	rateOfSwitch--;
	if(!reload){
		switch(weaponSlot){
			case -1: weaponSlot = weaponSlotMax
			case 0: if(!firing){sprite_index = sPlayer;}break;
			case 1: if(!firing){sprite_index = sPlayerHandgun;}break;
			case 2: if(!firing){sprite_index = sPlayerShotgun;}break;
			case 3: if(!firing){sprite_index = sPlayerRifle;}break;	
			default: weaponSlot = 0
		}
		
		//Player Weapon
		if(mouse_check_button(mb_left) && weaponSlot = 0){
			scKnife(noone, 30);
		}
		if(mouse_check_button_pressed(mb_left) && weaponSlot = 1){
			scGlock(snBeretta92Shot, oBullet9mm, 16);
		}
		if(mouse_check_button_pressed(mb_left) && weaponSlot = 2){
			scShotgun(snShotgunBenelliM3Shoot, oBulletShell, 32);
		}
		if(mouse_check_button(mb_left) && weaponSlot = 3){
			scRifle(snAk47Shoot, oBullet7mm62, 8);
		}
	}

	//Released
	if(mouse_check_button_released(mb_left) && weaponSlot != 0){firing = false;}
	
	//Reload
	if(keyboard_check_pressed(ord("R"))){reload = true;}
	scReload(1);
	scReload(2);
	scReload(3);

	//Mouse Wheel
	if(mouse_wheel_up() && rateOfSwitch <= 0){
		weaponSlot++;
		rateOfSwitch = FPS * 0.2;
	}
	if(mouse_wheel_down() && rateOfSwitch <= 0){
		weaponSlot--;
		rateOfSwitch = FPS * 0.2;
	}#endregion
	
	#region Heal & Die
	if(global.healPlayer <= 0){
		global.levelEnded = true;
		if(global.iLevelEnded = 0){
			//Open & Write
			var file = file_text_open_append(SCOREBOARD);
			file_text_writeln(file);
			file_text_write_real(file, global.theScore);
			
			//Close
			file_text_close(file);
		}
			
		//Level Ended
		layer_destroy_instances("layerOther");
		layer_destroy_instances("layerEnnemie");

		//Level Ended
		if(++global.iLevelEnded = FPS * 3){
			global.iLevelEnded = 0;
			global.levelEnded = false;	
			room_goto(rTitle)
		}
	}else{
		global.healPlayer += 1 / FPS;
		global.healPlayer = min(100, global.healPlayer);
	}#endregion
}