//this controls our camera, how much we see, resolution, pan speed


//how much camera SEES
view_w = 1920/12;
view_h = 1080/12;


//how large the game window is
window_scale = 9;
window_set_size(view_w * window_scale,view_h * window_scale);


//centering window doesnt work in the same frame you are resizing ^
alarm[0] = 1;


//resize our application surface, giving us proper screen scaling + added performance
surface_resize(application_surface, view_w * window_scale,view_h * window_scale);


//resize our gui surface, giving us proper gui scaling + added performance
gui_w = view_w * 2;
gui_h = view_h * 2;
display_set_gui_size(gui_w,gui_h);



