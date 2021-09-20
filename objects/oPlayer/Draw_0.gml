///@desc Shader
draw_self();
if(flashPlayer){
	if(++iFlash >= flashBetween){
		shader_set(shWhite);
		draw_self();
		shader_reset();
		flashPlayer = false;
		if(iFlash >= flashDurasion){iFlash = 0;}
	}
}