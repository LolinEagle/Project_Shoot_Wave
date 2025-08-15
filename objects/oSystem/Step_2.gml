///@desc Pause
var _pause = keyboard_check_pressed(vk_escape) || !window_has_focus();
if(_pause && room != room_first && !global.gamePaused){
	//Set
	global.gamePaused = true;
	
	//Stop image_speed and speed
	if(global.gamePaused){
		array_delete(global.gamePausedImageSpeed, 0, array_length(global.gamePausedImageSpeed));
		with(all){
			array_push(global.gamePausedImageSpeed, [id, image_speed, speed])
			image_speed = 0;
			speed = 0;
		}
	}
}