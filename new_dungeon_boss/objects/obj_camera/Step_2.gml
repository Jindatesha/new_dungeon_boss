


//set size of view
camera_set_view_size(view, view_w, view_h);

//set position of view
if(instance_exists(obj_player))
{
	var center_of_player_x = obj_player.x - view_w/2;
	var center_of_player_y = obj_player.y - view_h/2;
	
	var to_mouse_dir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
	var distance_to_mouse = distance_to_point(mouse_x,mouse_y);
	var radius_around_player = 15;
	var offset_mouse_x = lengthdir_x(min(radius_around_player,distance_to_mouse),to_mouse_dir);
	var offset_mouse_y = lengthdir_y(min(radius_around_player,distance_to_mouse),to_mouse_dir);
	
	var new_x = round(clamp(center_of_player_x + offset_mouse_x,0,room_width - view_w));
	var new_y = round(clamp(center_of_player_y + offset_mouse_y,0,room_height - view_h));
	
	var old_x = camera_get_view_x(view);
	var old_y = camera_get_view_y(view);
	
	var lerp_speed = 0.1;
	
	camera_set_view_pos(view,lerp(old_x,new_x,lerp_speed),lerp(old_y,new_y,lerp_speed));
}








