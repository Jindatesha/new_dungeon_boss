function scr_toggle_settings_menu()
{
	with(obj_settings_menu)
	{
		if (settings_menu_on == true)
		{
			settings_menu_on = false;
			instance_activate_all();
		
		}
		else
		{
			//turn settings menu on
			settings_menu_on = true;
		
			instance_deactivate_all(true);
			instance_activate_object(obj_game);
		
		
		}
	}
}