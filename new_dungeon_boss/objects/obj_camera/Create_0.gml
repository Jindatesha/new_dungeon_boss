//this controls our camera, how much we see, resolution, pan speed


//how much camera SEES
view_width = 1920/13;
view_height = 1080/13;


//how large the game window is
window_scale = 9;
window_set_size(view_width * window_scale,view_height * window_scale);


//centering window doesnt work in the same frame you are resizing ^
alarm[0] = 1;


//resize our application surface, giving us proper screen scaling + added performance
surface_resize(application_surface, view_width * window_scale,view_height * window_scale);


//resize our gui surface, giving us proper gui scaling + added performance
gui_w = view_width * 2;
gui_h = view_height * 2;
display_set_gui_size(gui_w,gui_h);



