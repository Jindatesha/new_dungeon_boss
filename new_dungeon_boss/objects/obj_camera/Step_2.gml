


//set size of view
camera_set_view_size(view, view_width, view_height);

//set position of view
if(instance_exists(obj_player))
{
	var new_x = obj_player.x - view_width/2;
	var new_y = obj_player.y - view_height/2;
	camera_set_view_pos(view,new_x,new_y);
}








