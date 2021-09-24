///@desc draw self
if(room != room_first){
	draw_sprite_ext(
		sprite_index,
		image_index,
		(x - cx) * (2 / 3),
		(y - cy) * (2 / 3),
		image_xscale,
		image_yscale,
		image_angle,
		image_blend,
		image_alpha
	);
}else{
	scDrawSpriteExt();
}