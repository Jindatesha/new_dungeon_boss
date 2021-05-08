function scr_ui_settings_slider(slider_x,slider_y,slider_w,backing_sprite,filling_sprite,knob_sprite,current_variable, max_variable)
{
	slider_x = round(slider_x);
	slider_y = round(slider_y);
	slider_w = round(slider_w);
	

	
	//backing
	scr_draw_3slice(backing_sprite,0,slider_x,slider_y,slider_w);
	
	//fill
	var slider_ratio = current_variable/max_variable;
	var slider_pixels_to_knob = (slider_w * slider_ratio);
	scr_draw_3slice(filling_sprite,0,slider_x,slider_y,slider_pixels_to_knob);
	
	
	//knob
	draw_sprite(knob_sprite,0,slider_x + slider_pixels_to_knob,slider_y);
	
	//if we click/drag along slider adjust variable
}