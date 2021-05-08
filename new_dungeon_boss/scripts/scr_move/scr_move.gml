//put in the direction u want to move and it will move this unit by its move_speed
//and it handles collision checking with solids

function scr_move(hor_dir, ver_dir)
{
	var h_speed = hor_dir * move_speed;
	var v_speed = ver_dir * move_speed;


	//horizontal movement + collisions
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
		
		sprite_state = SPRITE_STATE.RUNNING;
	}

	x = round(x);




	//vertical movement + collisions
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
		
		sprite_state = SPRITE_STATE.RUNNING;
	}

	y = round(y);

}