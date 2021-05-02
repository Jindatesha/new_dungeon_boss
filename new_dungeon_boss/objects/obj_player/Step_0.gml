



var button_move_left = keyboard_check_direct(ord("A"));
var button_move_right = keyboard_check_direct(ord("D"));
var button_move_up = keyboard_check_direct(ord("W"));
var button_move_down = keyboard_check_direct(ord("S"));




var hor_dir = button_move_right - button_move_left;
var ver_dir = button_move_down - button_move_up;
var h_speed = hor_dir * move_speed;
var v_speed = ver_dir * move_speed;

if (hor_dir != 0)
{
	if (place_meeting(x + h_speed,y,obj_solid))
	{
		while(!place_meeting(x + hor_dir,y,obj_solid))
		{
			x += hor_dir;
		}
	}
	else
	{
		x += h_speed;
	}	
}

if (ver_dir != 0)
{
	if (place_meeting(x,y + v_speed,obj_solid))
	{
		while(!place_meeting(x,y + ver_dir,obj_solid))
		{
			y += ver_dir;
		}
	}
	else
	{
		y += v_speed;
	}
}