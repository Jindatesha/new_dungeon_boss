

//health bar

//backing
var health_bar_backing_x = gui_w * 0.08;
var health_bar_backing_y = gui_h * 0.05;
draw_sprite(spr_healthbar_backing,0,health_bar_backing_x, health_bar_backing_y);

//bar
var total_sprite_w = sprite_get_width(spr_healthbar_bar);
var total_sprite_h = sprite_get_height(spr_healthbar_bar);
var bar_offset_x = 9;
var bar_offset_y = 3;
draw_sprite_part(spr_healthbar_bar,0,0,0,total_sprite_w,total_sprite_h,health_bar_backing_x + bar_offset_x, health_bar_backing_y + bar_offset_y);




//debug text
//draw_text(gui_w * 0.5,gui_h * 0.1,"my Depth: " + string(depth));


