///@desc Draw Commands
scDrawSet(fArial48, fa_left, fa_bottom);
var _y = RES_H - 16;
var _iy = 40;

//Commands
draw_text(16, _y - (_iy * 6), "Commands :");
draw_set_font(fArial24);
draw_text(16, _y - (_iy * 5), "WASD : Movement");
draw_text(16, _y - (_iy * 4), "R : Reload");
draw_text(16, _y - (_iy * 3), "Mouse1 : Fire");
draw_text(16, _y - (_iy * 2), "Mouse Wheel : Change Weapon");
draw_text(16, _y - (_iy * 1), "F1 : Fullscreen");
draw_text(16, _y, "Esc : Pause");