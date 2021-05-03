
move_speed = 1;
current_health = 100;
max_health = 100;


sprite_state = SPRITE_STATE.IDLE;
sprite_state_array[SPRITE_STATE.IDLE] = spr_player_idle;
sprite_state_array[SPRITE_STATE.RUNNING] = spr_player_run;
sprite_state_array[SPRITE_STATE.ATTACK_1] = spr_player_attack_1;
old_sprite_state = sprite_state;
sprite_index = sprite_state_array[sprite_state];


physical_state = PHYSICAL_STATE.NORMAL;




fx_offset_x = 11;

current_time_in_attack = 0;
spawn_hit_effect_time = 0;
has_spawned_hit_effect = false;
