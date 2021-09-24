///@desc Update

//Destination
if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

//Move toward
x += (xTo - x) / 3;
y += (yTo - y) / 3;

//Maintain camera in the room
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

//Camera set view
if(!instance_exists(oPlayer)){
	camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);
}else{
	var _x = x - viewWidthHalf - RES_W / 4;
	var _y = y - viewHeightHalf - RES_H / 4;
	camera_set_view_pos(cam, _x, _y);
}