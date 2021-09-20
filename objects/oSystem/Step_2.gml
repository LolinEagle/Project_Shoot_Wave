///@desc Pause
var _pause = keyboard_check_pressed(vk_escape) || !window_has_focus();
if(_pause && room != room_first && !global.gamePaused){
	//Set
	global.gamePaused = true;
	
	//Stop image_speed and speed
	if(global.gamePaused){
		with(all){
			image_speed = 0;
			speed = 0;
		}
	}
}