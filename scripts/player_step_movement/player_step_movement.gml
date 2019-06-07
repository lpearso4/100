var pressed_right = get_pressed_right();
var pressed_left = get_pressed_left();
var pressed_up = get_pressed_up();
var pressed_down = get_pressed_down();

var h_speed = (pressed_right - pressed_left)*SPD;
var v_speed = (pressed_down - pressed_up)*SPD;

if (h_speed!=0 && v_speed!=0)
{
	h_speed = h_speed*0.7;
	v_speed = v_speed*0.7;
}

if (h_speed!=0 || v_speed!=0)
{
	move(h_speed, v_speed);
}