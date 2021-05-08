
//get button inputs
var button_move_left = keyboard_check_direct(ord("A"));
var button_move_right = keyboard_check_direct(ord("D"));
var button_move_up = keyboard_check_direct(ord("W"));
var button_move_down = keyboard_check_direct(ord("S"));
var button_attack_1 = mouse_check_button_pressed(mb_left);


var mouse_dir = point_direction(x,y,mouse_x,mouse_y);

//change image flip depending upon mouse dir
if (mouse_dir > 270 or mouse_dir < 90)
{
	image_xscale = 1;
}
else
{
	image_xscale = -1;
}


if (physical_state == PHYSICAL_STATE.NORMAL)
{
	//default sprite state
	sprite_state = SPRITE_STATE.IDLE;


	//determine direction + speed
	var hor_dir = button_move_right - button_move_left;
	var ver_dir = button_move_down - button_move_up;



	//handles movement + collision checking with solids
	scr_move(hor_dir,ver_dir);
}


 


if (button_attack_1 == true and physical_state == PHYSICAL_STATE.NORMAL)
{
	sprite_state = SPRITE_STATE.ATTACK_1;	
	physical_state = PHYSICAL_STATE.ATTACK;
	spawn_hit_effect_time = room_speed * 0.35;
	current_time_in_attack = 0;
}






//handles depth order for this unit
scr_depth();


//sets the sprite of this unit (this should be one of the last things in the (step) event)
if (sprite_state != old_sprite_state)
{	
	sprite_index = sprite_state_array[sprite_state];
	image_index = 0;
	old_sprite_state = sprite_state;
}


if (physical_state == PHYSICAL_STATE.ATTACK)
{
	current_time_in_attack += 1;
	
	if (current_time_in_attack >= spawn_hit_effect_time and has_spawned_hit_effect == false)
	{
		has_spawned_hit_effect = true;
		
		var hit_effect_id = instance_create_depth(x,y,depth,obj_util_hit_effect);
	
		with(hit_effect_id)
		{
			sprite_index = spr_player_attack_1_fx;
			image_index = 0;
			
			var dir = mouse_dir;
			var distance = other.fx_offset_x;
			x = other.x + lengthdir_x(distance,dir);
			y = other.y + lengthdir_y(distance,dir);
			
			image_angle = dir;
			
			effect_current_time = 0;
			effect_max_time = room_speed * 0.2;
		}
	}
	
	
	if (image_index > image_number - 1)
	{
		physical_state = PHYSICAL_STATE.NORMAL;
		has_spawned_hit_effect = false;
	}
}


