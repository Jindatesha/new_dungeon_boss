


//set size of view
camera_set_view_size(view, view_width, view_height);

//set position of view
if(instance_exists(obj_player))
{
	var new_x = clamp(obj_player.x - view_width/2,0,room_width - view_width);
	var new_y = clamp(obj_player.y - view_height/2,0,room_height - view_height);
	camera_set_view_pos(view,new_x,new_y);
}








