


//set size of view
camera_set_view_size(view, view_width, view_height);

//set position of view
if(instance_exists(obj_player))
{
	var new_x = clamp(obj_player.x - view_width/2,0,room_width - view_width);
	var new_y = clamp(obj_player.y - view_height/2,0,room_height - view_height);
	
	var old_x = camera_get_view_x(view);
	var old_y = camera_get_view_y(view);
	
	var lerp_speed = 0.1;
	
	camera_set_view_pos(view,lerp(old_x,new_x,lerp_speed),lerp(old_y,new_y,lerp_speed));
}








