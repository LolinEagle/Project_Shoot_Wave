if(selected && mouse_check_button_pressed(mb_left)){
	option = !option;
	if(option){
		y = ystart + 225;
		instance_deactivate_object(oTitle);
		instance_deactivate_object(oTitle1);
		instance_deactivate_object(oTitle3);
		instance_deactivate_object(oTitleCommands);
		instance_deactivate_object(oTitleScoreboard);
		instance_deactivate_object(oTitleVersion);
		instance_create_layer(RES_W_HALF, 225, layer, oOption);
	}else{
		y = ystart;
		instance_activate_object(oTitle);
		instance_activate_object(oTitle1);
		instance_activate_object(oTitle3);
		instance_activate_object(oTitleCommands);
		instance_activate_object(oTitleScoreboard);
		instance_activate_object(oTitleVersion);
		instance_destroy(oOption);
	}
}