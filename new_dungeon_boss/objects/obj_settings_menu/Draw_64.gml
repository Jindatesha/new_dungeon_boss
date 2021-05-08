


if (settings_menu_on == true)
{
	
	//draw pause screen* surface

	
	//backing
	var backing_w = round(gui_w * 0.7);
	var backing_h = round(gui_h * 0.7);
	var backing_x = round(gui_w * 0.2);
	var backing_y = round(gui_h * 0.1);
	scr_draw_9slice(spr_9slice_button,0,backing_x,backing_y,backing_x + backing_w,backing_y + backing_h);
	
	//at top center SETTINGS
	draw_set_halign(fa_center);
	draw_text(backing_x + (backing_w/2),backing_y + 12,"Settings");


	var left_align_pos_x = backing_x + 10;
	var left_align_pos_y = backing_y + 37;
	var text_row_h = round(font_get_size(draw_get_font()) * 1.6);
	draw_set_halign(fa_left);
	
	//music
	var this_slider_w = 70;
	var this_slider_h = sprite_get_height(spr_3slice_slider);
	var this_slider_x = left_align_pos_x + 60;
	var this_slider_y = left_align_pos_y + (text_row_h * 0);
	
	draw_text(left_align_pos_x,this_slider_y, "Music");
	scr_ui_settings_slider(this_slider_x,this_slider_y - round(this_slider_h/2),this_slider_w,spr_3slice_slider,spr_3slice_slider_fill,spr_3slice_slider_knob,music_vol,1);
	
	//sfx
	draw_text(left_align_pos_x,left_align_pos_y + text_row_h * 1, "Sound");
	
	
}







