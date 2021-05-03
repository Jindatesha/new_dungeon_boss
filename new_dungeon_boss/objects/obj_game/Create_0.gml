
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
globalvar view_width; 
globalvar view_height;

globalvar gui_w;
globalvar gui_h;



//font

//this is made by "codeman38"
draw_set_font(font_dp_comic);
draw_set_valign(fa_middle);

//create all controllers
instance_create_depth(x,y,depth,obj_camera);

instance_create_depth(x,y,depth,obj_cursor);



room_goto(room_level_1);






