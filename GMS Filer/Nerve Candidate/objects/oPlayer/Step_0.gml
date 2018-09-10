
//Peker mot musepeker
image_angle = point_direction(x, y, mouse_x, mouse_y);

//Hvis "W" er nede gå mot musepekeren, ellers stå i ro.
if keyboard_check(ord("W"))
{
	sprite_index = sPlayerRun;
	move_towards_point(mouse_x, mouse_y, 9);
}
else 
{
sprite_index = sPlayerStand;
move_towards_point(mouse_x, mouse_y, 0);
}