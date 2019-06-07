var h_speed = argument0 * camera.room_spd_multiplier;
var v_speed = argument1 * camera.room_spd_multiplier;

// check if collisions, if not move
if (place_meeting(x + h_speed, y, colParent)) 
{
    while (!place_meeting(x + sign(h_speed)*0.25, y, colParent))
    {
        x += sign(h_speed)*0.25;
    }
    h_speed = 0;
}
x += h_speed;
    
if (place_meeting(x, y + v_speed, colParent)) 
{
    while (!place_meeting(x, y + sign(v_speed)*0.25, colParent))
    {
        y += sign(v_speed)*0.25;
    }
    v_speed = 0;
}
y += v_speed;
return true;