///@desc Opttion Logic
scCameraGetView();

//Check if selected
if(mouse_check_button(mb_left) && place_meeting(x, y, oCrosshair)){
	selected = true;
}
if(!mouse_check_button(mb_left)){selected = false;}

//Logic
if(selected){
	if(mouse_x > limitLeft && mouse_x < limitRight){x = mouse_x;}
	if(mouse_x <= limitLeft){x = limitLeft;}
	if(mouse_x >= limitRight){x = limitRight;}
	percentage = round(((x - limitLeft) / (limitRight - limitLeft)) * 100);
	global.gameSFX = (x - limitLeft) / (limitRight - limitLeft);
}