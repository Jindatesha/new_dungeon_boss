
//get button inputs
var button_move_left = keyboard_check_direct(ord("A"));
var button_move_right = keyboard_check_direct(ord("D"));
var button_move_up = keyboard_check_direct(ord("W"));
var button_move_down = keyboard_check_direct(ord("S"));


//determine direction + speed
var hor_dir = button_move_right - button_move_left;
var ver_dir = button_move_down - button_move_up;

//handles movement + collision checking with solids
scr_move(hor_dir,ver_dir);


depth = -y;

