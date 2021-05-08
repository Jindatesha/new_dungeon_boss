
//backing
var button_w = 50;
var button_h = 18;
var button_gap_h = button_h * 1.4;
var button_starting_x = round((gui_w/2) - (button_w/2));
var button_starting_y = gui_h * 0.4;

draw_set_halign(fa_center);


for(var i = 0; i < total_buttons; i += 1;)
{
	var this_button_offset_y = button_gap_h * i;
			
	//backing
	scr_draw_9slice(spr_9slice_button,0,button_starting_x,button_starting_y + this_button_offset_y,button_starting_x + button_w,button_starting_y + button_h + this_button_offset_y);

	//text
	draw_text(button_starting_x + (button_w/2), button_starting_y + (button_h/2) + this_button_offset_y,string(button_text_array[i]));
}


//draw selection arrow
var arrow_to_button_padding = 5;
draw_sprite(spr_ui_button_select_arrow,0,button_starting_x - arrow_to_button_padding,button_starting_y + (button_h/2) + (button_gap_h * current_selected_button));









