///@desc Credit logic
if(selected && mouse_check_button_pressed(mb_left)){
	credit = !credit

	if(credit){
		creditOn = true;
		instance_deactivate_layer("layerTitle");
	}else{
		creditOn = false;
		instance_activate_layer("layerTitle");
	}
}