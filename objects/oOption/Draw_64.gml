///@desc Draw Option
scDrawSet(fArial24, fa_center, fa_middle);

//Volume
draw_text(xstart - cx, y - cy - 32, "Music");
draw_text(xstart - cx + 368, y - cy, string(percentage) + "%");
var _x = xstart - cx;
var _y = y - cy;
draw_rectangle(_x - 320, _y - 8, _x + 320, _y + 8, false);
draw_set_color(c_black)
draw_rectangle(_x - 318, _y - 6, _x + 318, y - cy + 6, false);
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