
//all macros
#macro view view_camera[0]
#macro view_x camera_get_view_x(view)
#macro view_y camera_get_view_y(view)


//enums 
enum SPRITE_STATE
{
	IDLE,
	RUNNING,
	ATTACK_1
}

enum PHYSICAL_STATE
{
	NORMAL,
	ATTACK
}

//globals

//camera
globalvar view_w; 
globalvar view_h;

globalvar gui_w;
globalvar gui_h;


//settings menu
globalvar settings_menu_on;
settings_menu_on = false;


globalvar music_vol;
globalvar sound_vol;
music_vol = 1;
sound_vol = 1;

globalvar c_bit_manilla;
c_bit_manilla = make_color_rgb(249,243,224);


//font

//color
draw_set_color(c_bit_manilla);

//this is made by "codeman38"
draw_set_font(font_dp_comic);
draw_set_valign(fa_middle);

//create all controllers
instance_create_depth(x,y,depth,obj_camera);

instance_create_depth(x,y,depth,obj_cursor);

instance_create_depth(x,y,depth,obj_settings_menu);


room_goto(room_main_menu);






