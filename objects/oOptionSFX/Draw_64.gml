///@desc Draw Option
scDrawSet(fArial24, fa_center, fa_middle);

//Rectangle
draw_rectangle(256, 96, RES_W - 256, RES_H - 96, false);
draw_set_color(c_black);
draw_rectangle(260, 100, RES_W - 260, RES_H - 100, false);
draw_set_color(c_white);

//Volume
draw_text(xstart - cx, y - cy - 32, "Sound");
draw_text(xstart - cx + 368, y - cy, string(percentage) + "%");
var _x = xstart - cx;
var _y = y - cy;
draw_rectangle(_x - 320, _y - 8, _x + 320, _y + 8, false);
draw_set_color(c_black);
draw_rectangle(_x - 318, _y - 6, _x + 318, _y + 6, false);
draw_set_halign(fa_left);
draw_sprite_ext(
	sprite_index,
	image_index,
	x - cx,
	y - cy,
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
);

//Pause
if(room != room_first){
	scDrawSet(fArial24, fa_center, fa_middle);
	draw_text(RES_W_HALF, RES_H_HALF + 240, "Pressed Enter to Return")
}