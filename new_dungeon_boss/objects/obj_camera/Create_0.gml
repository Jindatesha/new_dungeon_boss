//this controls our camera, how much we see, resolution, pan speed


//how much camera SEES
view_width = 1920/10;
view_height = 1080/10;


//how large the game window is
window_scale = 3;
window_set_size(view_width * window_scale,view_height * window_scale);

//centering window doesnt work in the same frame you are resizing ^
alarm[0] = 1;


//resize our surface, giving us proper screen scaling + added performance
surface_resize(application_surface, view_width * window_scale,view_height * window_scale);




