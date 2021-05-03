
effect_current_time += 1;

//once hit effect is over, destroy this hit effect
if(effect_current_time >= effect_max_time)
{
	instance_destroy();
}



