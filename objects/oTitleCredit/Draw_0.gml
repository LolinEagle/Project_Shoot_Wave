///@desc Draw the button and textbox
scDrawSet(fArial24, fa_center, fa_middle);
draw_self();
draw_text(x, y, titleWord);

//Textbox
if(showText && iTitle >= FPS){
	//Set & Box
	scDrawSet(fArial24, fa_left, fa_top);
	var _width = string_width(titleTextbox) + 16;
	draw_set_color(c_black);
	draw_rectangle(xx, yy, xx + _width, yy - 64, false);
	
	//Outline & Text
	draw_set_color(c_white);
	draw_rectangle(xx, yy, xx + _width, yy - 64, true);
	draw_text(xx + 8, yy - 48, titleTextbox);
}

//Credit
if(creditOn){
	scDrawSet(fArial48, fa_center, fa_bottom);
	draw_text(RES_W_HALF, RES_H_HALF - 32, "Lead Developer");
	draw_text(RES_W_HALF, RES_H_HALF + 32, "LolinEagle");
}